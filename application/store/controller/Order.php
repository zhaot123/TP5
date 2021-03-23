<?php
/**
 * 订单控制器
 */

namespace app\shop\controller;


use app\shop\model\GoodM;
use app\user\controller\User;
use app\user\model\DistributionSettingM;
use app\user\model\UserLevelM;
use think\Request;
use app\admin\controller\Controller;
use app\shop\model\OrderM;
use app\shop\validate\OrderV;
use app\user\model\UserM;

class Order extends Controller
{
    //列表
    public function index(Request $request, OrderM $model)
    {
        $param = $request->param();
//        $param['_order'] = 'status';
        $model = $model->scope('where', $param);
        $where = array();
        if(!empty($param['user_phone'])){
            $where[]= array("user_phone","like","%{$param['user_phone']}%");
        }
        if(!empty($param['delivery_id'])){
            $where[]= array("delivery_id","like","%{$param['delivery_id']}%");
        }

        if (isset($param['export_data']) && $param['export_data'] == 1) {
            $header = ['ID', '订单号', '用户id', '订单状态', '订单总价', '订单总数', '运费', '支付方式', '用户备注', '创建时间', '联系电话', '地址', '快递名称', '快递单号', '退款状态', '退款用户说明', '退款时间', '前台退款原因', '不退款的理由', '退款金额',];
            $body = [];
            $data = $model->select();
            foreach ($data as $item) {
                $record = [];
                $record['id'] = $item->id;
                $record['order_no'] = $item->order_no;
                $record['user_id'] = $item->user_id;
                $record['status'] = $item->status_text;
                $record['total_price'] = $item->total_price;
                $record['total_num'] = $item->total_num;
                $record['freight_price'] = $item->freight_price;
                $record['pay_type'] = $item->pay_type;
                $record['remark'] = $item->remark;
                $record['create_time'] = $item->create_time;
                $record['user_phone'] = $item->user_phone;
                $record['user_address'] = $item->user_address;
                $record['delivery_name'] = $item->delivery_name;
                $record['delivery_id'] = $item->delivery_id;
                $record['refund_status'] = $item->refund_status;
                $record['refund_reason_wap_explain'] = $item->refund_reason_wap_explain;
                $record['refund_reason_time'] = $item->refund_reason_time;
                $record['refund_reason_wap'] = $item->refund_reason_wap;
                $record['refund_reason'] = $item->refund_reason;
                $record['refund_price'] = $item->refund_price;
                $body[] = $record;

            }
            return $this->exportData($header, $body, 'cs_shop_order-' . date('Y-m-d-H-i-s'));
        }
        $data = $model->where($where)->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);

        //关键词，排序等赋值
        $this->assign($request->get());
        $this->assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
        ]);
        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, OrderM $model, UserM $userM,GoodM $goods)
    {
        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();
            if(empty($param['status'])){
                $param['status'] = $data['status'];
            }
            if($param['status'] == 5){
                $param['refund_status'] = 1;
            }
            // 4完成   5  9
            if($param['status'] == 4){
                $good = $goods::get($data['goods_id']);
                $good->save(['sales_volume'=>$good['sales_volume'] + 1]);
                $this->getCommission($data['user_id'],$data['total_price']);
            }


            //退款

            if($param['status'] == 5){
                if(empty($param['refund_price'])){
                    return error("退款金额不能为空");
                }

                if($param['refund_price']>$data['total_price'] || $param['refund_price'] <= 0){
                    return error('退款金额必须在0到支付价格之间');
                }
                if($data['pay_type'] == 1){
                    if($data['pay_method'] == 1){
                        $total = \app\api\model\OrderM::where('order_pay_sn',$data['order_pay_sn'])->sum('total_price');
                    }else{
                        $total = $data['total_price'];
                    }
                    $refund = $this->wx_refund($data['order_no'],$data['order_pay_sn'],$total,$param['refund_price'],$data['user_id'],$data['pay_method']);
                }else{
                    $refund = $this->ali_refund();
                }

                if($refund['result_code'] != 'SUCCESS'){
                    return error($refund["err_code_des"]);
                }
                $param['refund_status'] = 2;
            }

            $result = $data->save($param);
            return $result ? success() : error();
        }
        $user = $userM->getListByWhere([],'id,user_name','create_time desc');
        $this->assign([
            'data' => $data,
            'user' => $user,
        ]);
        return $this->fetch('add');

    }


    //
    public function sures(OrderM $model){

        $id  = input('id');
        $order = $model::get(['id'=>$id]);
        $res = $this->getCommission($order['user_id'],$order['total_price']);
        $good = GoodM::get($order['goods_id']);
        $good->save(['sales_volume'=>$good['sales_volume'] + 1]);
        $data['status'] = 4;
        $result = $order->save($data);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    //分销加钱
    public function getCommission($id,$price){

        //$user 是我
        $user_01 = UserM::get(['id'=>$id]);

        if(empty($user_01) ||$user_01['level'] == 0){
            return 2;
        }
        $user = UserM::get(['id'=>$user_01['parent_id']]);
        $level = UserLevelM::get(['id'=>$user['level']]);
        $first = $level['first_per'] * $price / 100;
        $data['money'] = $user['money'] + $first;
        $res = $user->save($data);
        if($user['parent_id'] == 0||empty($user['parent_id'])){

            return 1;
        }
        $user_second = UserM::get(['id'=>$user['parent_id']]);
        $level_second = UserLevelM::get(['id'=>$user_second['level']]);
        $second = $level_second['second_per'] * $price / 100;
        $data_second['money'] = $user_second['money'] + $second;
        $result = $user_second ->save($data_second);
        if($result){
            return 1;
        }
        return 3;


    }

    //删除
    public function del($id, OrderM $model)
    {
        if (count($model->noDeletionId) > 0) {
            if (is_array($id)) {
                if (array_intersect($model->noDeletionId, $id)) {
                    return error('ID为' . implode(',', $model->noDeletionId) . '的数据无法删除');
                }
            } else if (in_array($id, $model->noDeletionId)) {
                return error('ID为' . $id . '的数据无法删除');
            }
        }
        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //发货
    public function deliverOrder($id, Request $request, OrderM $model, OrderV $validate){
        $data = $model::field('id,order_no')->get($id);
        if($data['stauts'] != 2){
            return error('错误');
        }
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('deliver')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            $attachment_attachment = new \app\common\model\Attachment;
            $file_attachment = $attachment_attachment->upload('attachment');
            if ($file_attachment) {
                $param['delivery_pic'] = $file_attachment->url;
            } else {
                return error($attachment_attachment->getError());
            }
            $param['status'] = 3;
            $param['delivery_time'] = time();
            $result = $data->save($param);
            return $result ? success() : error();
        }
        $this->assign([
            'data' => $data,
        ]);
        return $this->fetch('deliver');
    }
    /*
     * 收货
     * id
     * */
    public function shouhuo($id, Request $request, OrderM $model){


        $order = $model->where('id',$id)->find();
        if($order['status'] != 3){
            return error('收货失败');
        }
        $data = [
            'finish_time'=>time(),
            'status'=>4,
        ];
        $result = $order->save($data);
        return $result ? success('操作成功', URL_RELOAD) : error();

    }

    public function info($id, Request $request, OrderM $model, UserM $userM)
    {
        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();
            $result = $data->save($param);
            return $result ? success() : error();
        }
        $user = $userM->getListByWhere([],'id,user_name','create_time desc');
        $this->assign([
            'data' => $data,
            'user' => $user,
        ]);
        return $this->fetch('info');

    }
}
