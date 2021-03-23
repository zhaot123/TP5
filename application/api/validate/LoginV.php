<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class LoginV extends BaseValidate{
    //规则
    protected $rule = [
        'notice_id|公告id' => 'require|gt:0',
        'mobile|手机号' => 'require|gt:0',
        'verify|验证码' => 'require|gt:0',
        'password|密码' => 'require',
        'repassword|重复密码' => 'require',
        'code' => 'require|gt:0',
        'openid' => 'require',
        'original_password' => 'require',


    ];
    //错误信息
    protected $message = [
        'notice_id' => '公告id不能为空',
        'mobile' => '手机号不能为空',
        'verify' => '验证码不能为空',
        'password' => '密码不能为空',
        'repassword' => '重复密码不能为空',
        'code' => 'code值不能为空',
        'openid' => '微信用户openid不能为空',
        'original_password' => '原密码不能为空',

    ];
    //验证场景
    protected $scene = [
        'notice_info' => ['notice_id',],
        'password_login' => ['mobile','password'],
        'verify_login' => ['mobile','verify'],
        'find_password' => ['mobile','verify'],
        'update_password' => ['mobile','password','verify'],
        'wx_login' => ['code',],
        'wx_verify' => ['mobile','openid'],
        'send_verify' => ['mobile',],
        'verifyLogin' => ['mobile','verify'],


    ];


}
