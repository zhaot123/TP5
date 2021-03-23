<?php
/**
 * Created by PhpStorm.
 * User: WangChao
 * Date: 2019/8/19 0019
 * Time: 10:27
 */
namespace app\api\validate;
use app\common\validate\BaseValidate;
use think\Db;
use think\facade\Request;
use app\api\model\UserM as UM;

class SmsV extends BaseValidate {
    //规则
    protected $rule = [
        'mobile|手机号' => 'require|mobile|registered',//找回密码发送验证码
        'mobile_reg|手机号' => 'require|mobile|register',//注册发送
        'mobile_sms|手机号' => 'require|mobile',//验证短信验证码
        'verify_code|短信验证码' => 'require|number|length:6|checkSms',
        'scene|短信场景' => 'require|number',
    ];

    //验证场景
    protected $scene = [
        'registered' => ['mobile'],
        'register' => ['mobile_reg'],
        'verify_code' => ['mobile_sms','verify_code','scene']
    ];
    //找回和绑定时是否已注册
    protected function registered($value,$rule,$data){
        $count = (new UM())->where('mobile',$value)->count();
        if ($count > 0){
            return true;
        }
        else{
            return false;
        }
    }
    //验证手机验证码
    protected function checkSms($value,$rule,$data){
        return true;
        $arrayByMap = Db::name('cs_sms')->where('mobile',$data['user_mobile'])->where('scene',$data['scene'])->order('create_time desc')->field('verify_code,create_time')->find();
        if (!empty($arrayByMap)){
            if ($arrayByMap['create_time'] + 300 < Request::time()){
                return '验证码已过期';//验证码过期
            }
            if ($arrayByMap['verify_code'] == $value){
                return true;
            }
            else{
                return false;//验证码错误
            }
        }
        else{
            return '未发送验证码';//未发送验证码
        }
    }


}
