<?php
/**
 * 文章表控制器
 */

namespace app\user\controller;


use app\api\model\UserM;
use app\user\model\CityM;
use app\user\model\DistrictM;
use app\user\model\PinAuditM;
use app\user\model\ProvinceM;
use app\user\model\UserAddressM;
use app\user\model\UserAuditM;
use think\Request;
use app\admin\controller\Controller;
use app\cms\model\ArticleM;
use app\cms\validate\ArticleV;

class Audit extends Controller
{
    //列表
    public function index(Request $request, UserAuditM $model)
    {

        $param = $request->param();
        $model  = $model->scope('where', $param);
        $data = $model->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
        //关键词，排序等赋值
        $this->assign($request->get());
        $this->assign([
            'data'  => $data,
            'page'  => $data->render(),
            'total' => $data->total(),

        ]);
        return $this->fetch();
    }

    public function del($id, UserAuditM $model)
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
    /*
     * 通过/不通过
     * */

    public function memberPass(UserAuditM $model,UserM $UM){

        $id = input("id");
        $type = input('type');
        $res = $model::get($id);
        $content = input('content');
        $data['status'] = 3;
        $data['admin_id'] = $_SESSION['admin_user_id'];
        $data['audit_time'] = time();
        $data['content'] = $content;
        $param = $res;
        $result = $res->save($data);
        $time = date('Y-m-d H:i:s',time());



        if($result){
            // 修改成功
            $user = $UM->where('id',$res['user_id'])->find();
                $param = [
                    'is_real'=>3,
                    'taobao_name'=>$res['taobao_name'],
                    'true_name'=>$res['true_name'],
                    'sex'=>$res['sex'],
                    'tao_eval'=>$res['tao_eval'],
                    'ali_page'=>$res['ali_page'],
                    'my_ali'=>$res['my_ali'],
                    'bank_img'=>$res['bank_img'],
                    'bank_card'=>$res['bank_card'],
                    'bank_person'=>$res['bank_person'],
                    'bank_name'=>$res['bank_name'],

                ];

            if($user['is_real'] == 1|| $user['is_real'] == 2) {

                $rr = $user->save($param);

                return 1;
            }
            return 2;

        }
        return 2;
    }

    //未通过
    public function memberUnpass(UserAuditM $model,UserM $UM)
    {

        $id = input("id");
        $type = input('type');
        $res = $model::get($id);
        $content = input('content');
        $data['status'] = 0;
        $data['admin_id'] = $_SESSION['admin_user_id'];
        $data['audit_time'] = time();
        $data['content'] = $content;

        $result = $res->save($data);

        if($result){
            return 1;
        }else{
            return 2;
        }
    }

    /*
     * 拼多多审核
     * */
    public function pinAudit( Request $request ,PinAuditM $model){

        $param = $request->param();
        $model  = $model->scope('where', $param);
        $data = $model->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
        //关键词，排序等赋值
        $this->assign($request->get());
        $this->assign([
            'data'  => $data,
            'page'  => $data->render(),
            'total' => $data->total(),
        ]);
        return $this->fetch();
    }
    public function pinDel($id, UserAuditM $model)
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


    /*
  * 通过/不通过
  * */

    public function pinPass(PinAuditM $model,UserM $UM){

        $id = input("id");
        $type = input('type');
        $res = $model::get($id);
        $content = input('content');
        $data['status'] = 3;
        $data['admin_id'] = $_SESSION['admin_user_id'];
        $data['audit_time'] = time();
        $data['content'] = $content;
        $param = $res;
        $result = $res->save($data);
        $time = date('Y-m-d H:i:s',time());



        if($result){
            // 修改成功
            $user = $UM->where('id',$res['user_id'])->find();
            $param = [
                'is_pin'=>2,

                'pin_name'=>$res['pin_name'],
                'pin_home'=>$res['pin_home'],

            ];

            if($user['is_pin'] == 1) {

                $rr = $user->save($param);

                return 1;
            }
            return 2;

        }
        return 2;
    }

    //未通过
    public function PinAuditM(UserAuditM $model,UserM $UM)
    {

        $id = input("id");
        $type = input('type');
        $res = $model::get($id);
        $content = input('content');
        $data['status'] = 0;
        $data['admin_id'] = $_SESSION['admin_user_id'];
        $data['audit_time'] = time();
        $data['content'] = $content;

        $result = $res->save($data);

        if($result){
            return 1;
        }else{
            return 2;
        }
    }
}
