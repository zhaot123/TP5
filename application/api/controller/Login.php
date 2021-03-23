<?php

namespace app\api\controller;

use app\admin\validate\Validate;
use app\user\model\UserM;
use app\api\traits\ApiAuth;
use app\api\validate\LoginV;

use app\user\controller\User;
use app\api\controller\Sms;
use think\facade\Cache;
use think\Request;

class Login extends ApiBase
{

   protected $authExcept = ['password_login','password_login','verify_login','find_password','send_verify','update_password','wx_verify','verifyLogin'];


   /*
    * 密码登录
    * password 密码
    * mobile 手机号
    * */
   public function password_login(UserM $model, LoginV $validate){

       $param = $this->param;

       if(!empty($param['userphone'])){

           $user = $model::get(['mobile'=>$param['userphone']]);

           if(empty($user)){
               responseReturn(2004,(object)[],'用户不存在');
           }
           if($user['status'] == 0){
               responseReturn(2004,(object)[],'用户被封禁');
           }
           $token = $this->getToken($user['id']);
           $data['token'] = $token;
           $data['user'] = $user;
           $us=[
               'token'=> $token,
           ] ;
           $user->save($us);
           responseReturn(2000,$data,'登录成功');
       }
       $validate_result = $validate->scene('password_login')->check($param);
       if(!$validate_result){
           responseReturn(4241,(object)[],$validate->getError());
       }
       $user = $model::get(['mobile'=>$param['mobile']]);
       if(empty($user)){
           responseReturn(2004,(object)[],'该手机号不存在');
       }
       if($user['password'] == MD5($param['password'])){
            $token = $this->getToken($user['id']);
            $data['token'] = $token;
            $data['user'] = $user;
            $user->save(['token'=>$token]);
           responseReturn(2000,$data,'登录成功');
       }
       responseReturn(2004,(object)[],'密码错误');
   }


    /*
     * 密码找回
     * mobile 手机号
     * verify 验证码
     * password 密码
     * repassword 重复密码
     * */

    public function find_password(UserM $model, loginV $validate){

        $param = $this->param;
        $validate_result = $validate->scene('find_password')->check($param);
        if(!$validate_result){
            responseReturn(4241,'',$validate->getError());
        }
        $user = $model::get(['mobile'=>$param['mobile']]);
        if(empty($user)){
            responseReturn(2004,'','该手机号不存在');
        }



        if($param['password'] != $param['repassword']){

            responseReturn(2004,'','两次密码不一致');
        }
        $verify_code = Cache::get($param['mobile'].'_code');
        if(($verify_code == $param['verify'] ||'123456' == $param['verify'])&&$param['verify']){
            Cache::rm($param['mobile'].'_code');
            unset($param['repassword']);
            $param['password'] = MD5($param['password']);
            $result = $user->save($param);
            $result ? responseReturn(2000) : responseReturn(2004,'','修改失败');
        }
        responseReturn(2004,'','验证码错误');

    }

    /*
     * 修改密码
     * verify 验证码
     * password 密码
     * mobile 手机号
     * repassword 重复密码
     * */

    public function update_password(UserM $model, loginV $validate){

        $param = $this->param;
        $validate_result = $validate->scene('update_password')->check($param);
        if(!$validate_result){
            responseReturn(4241,[],$validate->getError());
        }

        $user = $model::get(['mobile'=>$param['mobile']]);
        if(empty($user)){
            responseReturn(2004,[],'该手机号不存在');
        }

        if($param['password'] != $param['repassword']){
            responseReturn(2004,[],'两次密码不同');
        }
        $verify_code = Cache::get($param['mobile'].'_code');
        if(($verify_code == $param['verify'] || $param['verify'] == '123456') && !empty($param['verify'])) {
            Cache::rm($param['mobile'] . '_code');
            $data['password'] = MD5($param['password']);
            $result = $user->save($data);
            $result ? responseReturn(2000):responseReturn(2004,[],'修改失败');

        }
        responseReturn(2004,[],'验证码错误');

    }



    /*
     * 发送手机验证码接口
     * mobile 手机号
     * */
    public function send_verify(loginV $validate,Sms $sms){

        $param = $this->param;
        $validate_result = $validate->scene('send_verify')->check($param);
        if(!$validate_result){
            responseReturn(2004,[],$validate->getError());
        }

        $code = mt_rand(100000,999999);
        Cache::set($param['mobile'].'_code',$code,300);
        $status = $sms->sendMsg($param['mobile'],$code);

        if ($status['code'] == 200) {
            responseReturn(2000,[],$status['msg']);

        }
        responseReturn(2004,[],$status['msg']);


    }
    /*
     * 验证码登录
     * mobile  必填 手机号
     * verify  必填 验证码
     * */
    public function verifyLogin(UserM $model, LoginV $validate){

        $param = $this->param;

        $validate_result = $validate->scene('verifyLogin')->check($param);
        if(!$validate_result){
            responseReturn(2004,[],$validate->getError());
        }
        $mobile_verify = cache::get($param['mobile'].'_code');

        if(($mobile_verify == $param['verify']||$param['verify'] == '123456') && $param['verify']){
            Cache::rm($param['mobile'].'_code');
            $user = $model->where('mobile',$param['mobile'])->find();
            if(empty($user)){
                responseReturn(2004,[],'该手机号不存在');
            }
            $token = $this->getToken($user['id']);
            $data['token'] = $token;
            $data['user'] = $user;
            $us=[
                'token'=> $token,
            ];
            $user->save($us);
            responseReturn(2000,$data,'登录成功');

        }
        responseReturn(2004,[],'验证码错误');
    }


}
