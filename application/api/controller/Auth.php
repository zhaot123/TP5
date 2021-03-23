<?php
/**
 * Created by PhpStorm.
 * User: wangchao
 * Date: 2019/6/22 0022
 * Time: 16:43
 */
namespace app\api\controller;
use app\api\model\alSms;
use think\facade\Request;
use app\api\model\UserM as UM;
use app\api\model\SmsM as SM;
use app\api\validate\SmsV as SV;
use app\api\validate\UserV as UV;
use think\exception;

class Auth extends ApiBase{
    protected $authExcept = ['login','register','retrievePass','sendSms'];
    /* 注册
     * method POST
     * @param string    mobile              必填 手机号
     * @param string    password            必填 密码
     * @param string    password_confirm    必填 重复密码
     * @param int       verify_code         必填 验证码
     * @param int       scene               必填 短信场景1注册2找回3绑定4登录
     * @param bool      agree               必填 同意协议
     * @param string    invitation_code     必填 邀请码
     * return array code,msg,data
     * */
    public function register(UM $model,SV $smsV,UV $userV){
        $mobile = $sms['mobile_sms'] = $params['mobile'] = isset($this->param['mobile']) ? $this->param['mobile'] : '';
        $password = $params['password'] = isset($this->param['password']) ? $this->param['password'] : '';
        $params['password_confirm'] = isset($this->param['password_confirm']) ? $this->param['password_confirm'] : '';
        $sms['verify_code'] = isset($this->param['verify_code']) ? $this->param['verify_code'] : 0;
        $sms['scene'] = isset($this->param['scene']) ? $this->param['scene'] : 1;//1注册2找回3绑定4登录
        $params['agree'] = isset($this->param['agree']) ? $this->param['agree'] : 1;
        $user_invitation_code = $params['user_invitation_code'] = isset($this->param['invitation_code']) ? $this->param['invitation_code'] : '';

        $smsV->checkData('verify_code', $sms);
        $userV->checkData('register', $params);

        $create['mobile'] = $create['username'] = $create['nickname'] = $mobile;
        $create['agree'] = $params['agree'];
        $create['password'] = password_hash_default($password);//密码加密
        $create['user_invitation_code'] = $user_invitation_code;
        $model::register($create);
    }
    /* 登录并发放token
     * method POST
     * @param int type              必填 登录类型1密码2验证码
     * @param string mobile         必填 手机号
     * @param string password       选填type=1 密码
     * @param int scene             选填type=2 短信场景1注册2找回3绑定4登录
     * @param int verify_code       选填type=2 短信验证码
     * return json code,msg,data
     * */

    public function login(UM $model,SV $smsV,UV $userV){
        $sms['mobile_sms'] = $params['mobile_login'] = isset($this->param['mobile']) ? $this->param['mobile'] : '';
        $params['password_login'] = isset($this->param['password']) ? $this->param['password'] : '';
        $type = $this->param['type'];//1密码2验证码
        $sms['verify_code'] = isset($this->param['verify_code']) ? $this->param['verify_code'] : 0;
        $sms['scene'] = isset($this->param['scene']) ? $this->param['scene'] : 4;//1注册2找回3绑定4登录
        $token = '';
        if($type == 1) {
            $userV->checkData('password_login',$params);
            //登录逻辑
            try {
                $user  = $model::login($params['mobile_login'],$params['password_login']);
                $token = $this->getToken($user->id);
            } catch (Exception $e) {
                responseReturn(1021,[],$e->getMessage());
            }
        }
        else{
            $smsV->checkData('verify_code', $sms);
            $user  = $model::get(['mobile' => $sms['mobile_sms']]);
            if (!$user){
                responseReturn(1021);
            }else {
                $token = $this->getToken($user->id);
            }
        }
        responseReturn(1020,['token' => 'Bearer '.$token]);
    }
    /* 找回密码
     * method POST
     * @param string mobile                必填 手机号
     * @param string password              必填 密码
     * @param string password_confirm      必填 重复密码
     * return array code,msg,data
     * */
    public function retrievePass(UM $model,UV $userV){
        $mobile = $params['mobile_retrieve'] = isset($this->param['mobile']) ? $this->param['mobile'] : '';
        $password = $params['password'] = isset($this->param['password']) ? $this->param['password'] : '';
        $params['password_confirm'] = isset($this->param['password_confirm']) ? $this->param['password_confirm'] : '';

        $userV->checkData('retrievePass', $params);
        $save['user_password'] = password_hash_default($password);
        $model_code = $model->saveData($save,['mobile'=>$mobile],2001,2004);
        responseReturn($model_code);
    }
    /* 找回密码、验证短信验证码
     * method POST
     * @param string mobile       必填 手机号
     * @param int   scene        必填 短信场景1注册2找回3绑定4登录
     * @param int   verify_code  必填 短信验证码
     * return array code,msg,data
     * */
    public function checkSms(SV $smsV){
        $sms['mobile_sms'] = isset($this->param['mobile']) ? $this->param['mobile'] : '';
        $sms['verify_code'] = isset($this->param['verify_code']) ? $this->param['verify_code'] : 0;
        $sms['scene'] = isset($this->param['scene']) ? $this->param['scene'] : 2;//1注册2找回3绑定4登录

        $smsV->checkData('verify_code', $sms);
        responseReturn(2000);
    }
    /* 发送短信验证码
     * method POST
     * @param string mobile    必填 手机号
     * @param int scene        必填 短信场景1注册2找回3绑定4登录5修改手机号
     * return array code,msg,data
     * */
    public function sendSms(SM $model,SV $smsV){
        $mobile = isset($this->param['mobile']) ? $this->param['mobile'] : '';
        $scene = $params['scene'] = isset($this->param['scene']) ? $this->param['scene'] : 1;//1注册2找回3绑定4登录
        switch ($scene){
            case 1:
                $check_scene = 'register';
                $params['mobile'] = $mobile;
                break;
            case 2:
                $check_scene = 'retrieve';
                $params['mobile_retrieve'] = $mobile;
                break;
            case 3:
                $check_scene = 'bind';
                $params['mobile_bind'] = $mobile;
                break;
            case 4:
                $check_scene = 'login';
                $params['mobile_login'] = $mobile;
                break;
            default:
                $check_scene = 'login';
                $params['mobile_login'] = $mobile;
                break;
        }
        $smsV->checkData($check_scene, $params);

        //发送短信验证码时间限制


        $today = strtotime(date("Y-m-d"),time());//获得当日凌晨的时间戳
        $end = $today+60*60*24;//当天的24点时间戳
        $where[] = [
            ['create_time','>',$today],
            ['create_time','<',$end],
        ];
        $today_count = $model->getCountByWhere($where);
        if ($today_count > 10){
            responseReturn(1041,null,'发送失败，发送数量已超出当天限制');
        }
        $arrayByMap = $model->getArrayByWhere(['mobile' => $mobile,'scene' => $scene],'verify_code,create_time','create_time desc');
        if (!empty($arrayByMap->toArray()) && Request::time() - (int)$arrayByMap->getData('create_time') < 60){
            responseReturn(1041,null,'发送失败，发送过快');
        }
        $verify_code = random_string(6,1);
        $alSms = new alSms();
        $sms['mobile'] = $mobile;
        $sms['verify_code'] = $verify_code;
        $sms['scene'] = $scene;
        $smsInfo = $model::create($sms,true);

        $result = $alSms->sendSms($mobile,$verify_code,$this->getTemplateCode($scene));
        if ($result->Code == 'OK'){//发送成功
            $update['status'] = 1;
            $model->saveData($update,['id'=>$smsInfo->id],1040,1041);
            responseReturn(1040);
        } else {
            //发送失败
            $update['status'] = 2;
            $model->saveData($update,['id'=>$smsInfo->id],1040,1041);
            responseReturn(1041,'123');
        }
    }
    /* 获取阿里云短信验证码模板code
     * @param int scene 必填 短信场景1注册2找回3绑定4登录5修改手机号
     * return array code,msg,data
     * */
    public static function getTemplateCode($scene){
        switch ($scene){
            case 1:
                $templateCode = 'SMS_176955349';
                break;
            case 2:
                $templateCode = 'SMS_176955348';
                break;
            case 3:
                $templateCode = 'SMS_176955347';
                break;
            case 4:
                $templateCode = 'SMS_176955351';
                break;
            case 5:
                $templateCode = 'SMS_176955347';
                break;
            default:
                $templateCode = 'SMS_176955351';
                break;
        }
        return $templateCode;
    }



}
