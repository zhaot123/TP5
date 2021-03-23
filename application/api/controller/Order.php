<?php

namespace app\api\controller;

use app\admin\validate\Validate;
use app\api\model\ShopM;
use app\shop\model\EvaluationM;
use app\api\model\ShopCartM;

use app\shop\model\GoodM;
use app\shop\model\OrderM;
use app\user\model\DistributionSettingM;
use app\user\model\UserAddressM;
use app\user\model\UserLevelM;
use app\user\model\UserM;
use think\cache\driver\Redis;
use think\facade\Cache;
use think\Request;

class Order extends ApiBase
{
    protected $authExcept = ["refund_result",'samplePicture','payOrder','aliPay','wxPay'];


    /*
     * token
     * type         非必需      1 淘宝 2拼多多
     * task_type   非必需      0全部 1 精刷单 2 流量单 3 隔日单
     * */
    public function  orderList(OrderM $model){

        $user = $this->user_info;
        $startPage = $this->startpage;
        $pagesize = $this->pagesize;
        $param = $this->param;
        $type = isset($param['type']) ? $param['type'] : 1;
        $where = array();
        if(!empty($type)){
            $where['type'] = $type;
        }
        $task_type = isset($param['task_type']) ? $param['task_type'] : 0;
        if(!empty($task_type)){
            $where['task_type'] = $task_type;
        }
        $orderList = $model->field('id,shop_name,good_img,order_no,shop_id,status,total_price,create_time,type,task_type,order_begin_time,is_first,pipei_time')
            ->where($where)->where('buy_id',$user['id'])->where('status',">",1)->limit($startPage,$pagesize)->order('id desc')->select();
        foreach($orderList as $k=>$v){

            $orderList[$k]['remain'] = $v['order_begin_time'] - time();
            $orderList[$k]['remain'] < 0 ?$orderList[$k]['remain']= 0 : $orderList[$k]['remain'] ;
            $orderList[$k]['good_img'] = $this->getImgUrl($v['good_img']);
        }
        $orderList ?  responseReturn(2000,$orderList) :  responseReturn(2004);
    }

    /*
     * 订单详情
     * order_id   必填  订单编号
     * token
     *  */
    public function  orderInfo(OrderM $model,ShopM $SM){


        $user = $this->user_info;
        $param = $this->param;

        $result = $model->field('id,shop_name,good_img,keyword,status,total_price,filter,
                                    description,order_no,create_time,template_id,taobao_no,buy_id,task_requirements,tao_key,brows_time,eval_info,shop_id,is_eval,task_type,is_change
                                    ,is_first,title')->get($param['order_id']);

        $shop = $SM->field('id,must_see') ->where('id',$result['shop_id'])->find();
        $result['must_see'] = $shop['must_see'];
        $result['good_img'] = $this->getImgUrl($result['good_img']);
        $result['description'] = json_decode($result['description'],true);
        $result ?  responseReturn(2000,$result) :  responseReturn(2004);

    }

    /*
     * 取消订单
     * order_id
     * */
    public function cancelOrder(OrderM $model){

        $user  = $this->user_info;
        $param = $this->param;
        $order = $model->field('id,status,buy_id')->where('id',$param['order_id'])->find();
        if($user['id'] != $order['buy_id'] || $order['status'] != 2){
            responseReturn(2004,[],'订单错误');
        }
        $result = $order->save(['status'=>10,'is_first'=>0]);
        $result ?  responseReturn(2000) :  responseReturn(2004);

    }
    /*
     * 开始做单
     * order_id
     * otherShopOne    必填   第一家店铺连接
     * otherShopTwo    必填   第二家店铺连接
     * myShopLink      必填   我的店铺副宝贝连接
     * taobao_no       必填   淘报的订单号
     * true_price      必填   实际支付价格
     *
     * */
    public  function  doOrder(OrderM $model){


        $param = $this->param;
        $user = $this->user_info;
        $order = $model->field('id,true_money,my_tao_key,tao_key,taobao_no,status,create_time,buy_id,task_type,is_first,type')->where('id',$param['order_id'])->find();
        if($order['status'] != 2|| $order['buy_id'] != $user['id']){
            responseReturn(2004,(object)[],'订单错误');
        }

         /*  如果是精刷单 */
        if($order['task_type'] == 1){
            if(!empty($user['taobao_footer']) && $order['type'] == 1){
                if(substr($param['taobao_no'],-6,6) != $user['taobao_footer']){
                    responseReturn(2004,(object)[],'与第一次支付订单尾号不同');
                }
            }else {
                $userp['taobao_footer'] = substr($param['taobao_no'], -6, 6);
                $user->save($userp);
            }
            $all = array();
            $all[] = $param['otherShopOne'];
            $all[] = $param['otherShopTwo'];

            $data = [
                'true_money'=>$param['true_price'],
                'tao_key'=>$param['myShopLink'],
                'other_shop_url'=>json_encode($all),
                'status'=>3,
                'taobao_no'=>$param['taobao_no'],
            ];
            //匹配订单号于后台的6位数 是否一样

            $result = $order->save($data);
            $result ?  responseReturn(2000) :  responseReturn(2004);
        }elseif($order['task_type'] == 2){
            /*  流量单*/
            $all = array();
            $all[] = $param['otherShopOne'];
            $all[] = $param['otherShopTwo'];
            $data = [
                'tao_key'=>$param['myShopLink'],
                'other_shop_url'=>json_encode($all),
                'status'=>8,
            ];
            $result = $order->save($data);
            $result ?  responseReturn(2000) :  responseReturn(2004);
        }elseif($order['task_type'] == 3){
            /*  隔日单*/
            if(empty($order['is_first'])){
                $all = array();
                $all[] = $param['otherShopOne'];
                $all[] = $param['otherShopTwo'];
                $data = [
                    'tao_key'=>$param['myShopLink'],
                    'other_shop_url'=>json_encode($all),
                    'is_first'=>1,
                ];
                $result = $order->save($data);
                $result ?  responseReturn(2000) :  responseReturn(2004);
            }else{
                $data = [
                    'taobao_no'=>$param['taobao_no'],
                    'true_money'=>$param['true_price'],
                    'status'=>3
                ];
                $result = $order->save($data);
                $result ?  responseReturn(2000) :  responseReturn(2004);

            }


        }
        responseReturn(2004);


    }

    /*
     * 上传收款截图
     * order_id    必须 订单id
     * payScreen   必须  收款截图
     * taobao_no         淘宝订单号
     *
     * */
    public function uploadScreen(OrderM $model){

        $param = $this->param;
        $user = $this->user_info;

        $order = $model->field('id,ali_page,taobao_no,status,buy_id')->where('id',$param['order_id'])->find();
        if($order['taobao_no'] != $param['taobao_no']|| $user['id'] != $order['buy_id']){
            responseReturn(2004,(object)[],'淘宝号不同');
        }
        if($order['status'] != 4){
            responseReturn(2004,(object)[],'订单状态错误');
        }

        $attachment = new \app\common\model\Attachment;
        $file    = $attachment->upload('payScreen');
        if ($file) {
            $data['ali_page'] = $file->url;
            $data['status'] = 5;
            $result = $order->save($data);
            $result ?  responseReturn(2000) :  responseReturn(2004,(object)[]);
        }else{
            responseReturn(2004,(object)[],'淘宝号不同');
        }


    }

    /*
     * type 1评价要求 2 支付宝付款截图3 身份证和银行卡示例 4实名认证示例 5我的支付宝示例
     * */
    public function samplePicture(DistributionSettingM $model){


        $param = $this->param;
        $type = isset($param['type']) ? $param['type'] :1;

        $result = $model->field('requirement,ali_pay,id_bank,real,my_ali')->get(1);
        $result['requirement'] = $this->getImgUrl($result['requirement']);
        $result['ali_pay'] = $this->getImgUrl($result['ali_pay']);
        $result['id_bank'] = $this->getImgUrl($result['id_bank']);
        $result['real'] = $this->getImgUrl($result['real']);
        $result['my_ali']= $this->getImgUrl($result['my_ali']);
        $result ?  responseReturn(2000,$result) :  responseReturn(2004,(object)[]);

    }

    /*
     *
     * 收货评价
     * eval_screen
     * delivery_screen
     * */
    public function  delivery(OrderM $model){

        $attachment = new \app\common\model\Attachment;
        $param = $this->param;
        $order = $model->field('id,status,eval_screen,delivery_screen')->where('id',$param['order_id'])->find();
        if($order['status'] != 6){
            responseReturn(2004,(object)[],'订单状态错误');

        }
        $eavl_screen    = $attachment->upload('eval_screen');
        $delivery_screen    = $attachment->upload('delivery_screen');
        $data = array();
        if($eavl_screen){
            $data['eval_screen'] = $eavl_screen->url;
        }
        if($eavl_screen){
            $data['delivery_screen'] = $delivery_screen->url;
        }
        $data['status'] = 8;
        $result = $order->save($data);
        $result ?  responseReturn(2000,$result) :  responseReturn(2004,(object)[]);


    }

    /*
     * 指定评价
     * order_id
     * eval_screen
     * */

    public function sureEval(OrderM $model){
        $attachment = new \app\common\model\Attachment;
        $param = $this->param;
        $order = $model->field('id,status,eval_screen,delivery_screen')->where('id',$param['order_id'])->find();
        if($order['status'] != 7){
            responseReturn(2004,(object)[],'订单状态错误');

        }
        $eavl_screen    = $attachment->upload('eval_screen');
        $data = array();
        if($eavl_screen){
            $data['eval_screen'] = $eavl_screen->url;
        }
        $data['status'] = 8;
        $result = $order->save($data);
        $result ?  responseReturn(2000,$result) :  responseReturn(2004,(object)[]);
    }

    /*
     *  订单搜索列表
     * type  1 淘宝  2拼多多
     * token
     * search
     * */
    public function searchOrderList(OrderM $model){

        $param = $this->param;
        $user = $this->user_info;

        $pagesize = $this->pagesize;
        $startpage = $this->startpage;
        $where = array();

        if(!empty($param['search'])){
            $where['order_no'] = array('like',"%{$param['search']}%");
        }
        $result = $model->field('id,shop_name,good_img,order_no,shop_id,status,total_price,create_time,type,task_type,order_begin_time')->where($where)->where('user_id',$user['id'])->limit($startpage,$pagesize)->select();
        $result['good_img'] = $this->getImgUrl($result['good_img']);
        $result ?  responseReturn(2000,$result) :  responseReturn(2004,(object)[]);


    }

    /*
     *
     * */


}
