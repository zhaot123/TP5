<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class RegisterV extends BaseValidate{
    //规则
    protected $rule = [
        'notice_id|公告id' => 'require|gt:0',
        'code|注册码' => 'require|gt:0',
        'mobile|手机号' => 'require|gt:0',
        'verify|验证码' => 'require|gt:0',
        'password|密码' => 'require',

    ];
    //错误信息
    protected $message = [
        'notice_id' => '公告id不能为空',
        'code' => '邀请码不能为空',
        'mobile' => '手机号不能为空',
        'verify' => '验证码不能为空',
        'password' => '密码不能为空',

    ];
    //验证场景
    protected $scene = [
        'notice_info' => ['notice_id',],
        'first_register' => ['code',],
        'register' => ['mobile','verify','password'],


    ];


}
