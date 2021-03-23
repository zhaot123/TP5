<?php
/**
 * 用户控制器
 */

namespace app\distribution\controller;


use app\user\model\UserM;
use app\distribution\model\WithdralM;
use think\Request;
use app\admin\controller\Controller;


class Withdral extends Controller
{

    //列表
    public function index(Request $request, WithdralM $model)
    {

        $param = $request->param();
        $model  = $model->with(['user'=>["user_name"]])->scope('where', $param);
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

    public function pass1(WithdralM $model){
        $id = input("id");
        $res = $model::get($id);
        $data['status'] = 2;
        $result = $res->save($data);
        if($result){
            return 1;
        }else{
            return 2;
        }
    }
    public function pass(WithdralM $model){

        $id = input("id");
        $type = input('type');
        $res = $model::get($id);
        $content = input('content');
        $data['status'] = 3;
        $data['admin_id'] = $_SESSION['admin_user_id'];
        $data['pass_time'] = time();
        $data['content'] = $content;

        $result = $res->save($data);
        $time = date('Y-m-d H:i:s',time());

        if($result){
            $user = UserM::get($res['user_id']);
            // 已提现金额增加
            $user->setInc('withdraw_price',$res['price']);
            $content = '用户'.$user['user_name']."提现".$res['price'].'元成功';
            //添加一条提现记录
            $finance = addfinance($user_id = $res['user_id'], 2,$content,2,$res['price'],1,$res['price_true']);
            message('提现成功',"您的提现在{$time}提现成功",$res['user_id'],$data['admin_id']);

            if($type == 1 && $finance){
                return success();
            }elseif($type == 1 && !$finance){
                return error();
            }
            if($finance){
                return 1;
            }else{
                return 3;
            }

        }else{
            return 2;
        }
    }

    //未通过
    public function unpass(WithdralM $model,UserM $user){

        $id = input("id");
        $type = input('type');
        $content = input('content');
        $res = $model::get($id);
        $data['status'] = 0;
        $data['admin_id'] = $_SESSION['admin_user_id'];
        $data['content'] = $content;
        $data['pass_time'] = time();
        $time = date('Y-m-d H:i:s',time());
        $result = $res->save($data);
        // 将体现金额存回用户
        $use = $user::field('id,money')->get($res['user_id']);
        $use_data['money'] = $use['money'] + $res['price'];
        $user_result = $user->where("id",$res['user_id'])->update($use_data);
        message('提现失败',"您的提现在{$time}提现失败,失败原因是{$content},",$res['user_id'],$data['admin_id']);
        if($type == 1 && $result){
            return success('成功',URL_BACK);
        }elseif($type == 1 && !$result){
            return error();
        }
        if($result){
            return 1;
        }else{
            return 2;
        }
    }


}
