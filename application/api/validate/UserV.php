<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class UserV extends BaseValidate{
    //规则
    protected $rule = [
        'mobile_login|手机号' => 'require|mobile',
        'mobile|手机号' => 'require|mobile|unique:user',
        'password|密码' => 'require|length:6,18|confirm',
//        're_password|确认密码' => 'require|length:6,18|confirm:password',
        'agree|同意免责声明' => 'require|accepted',
        'password_login|登录密码' => 'require|length:6,18',
//        'avatar|头像' => 'file',
//        'uid|用户' => 'require|number|gt:0',
//        'ids|ID' => 'require',
//        'original_password|原密码' => 'require|different:password|checkOriginalPassword'
    ];
    //错误信息
    protected $message = [
        'mobile_reg.mobile' => '手机号格式错误',
        'mobile.unique' => '手机号已存在',
        'password_reg.confirm' => '两次输入密码不一致',
        'original_password.different' => '新密码和原密码不能相同',
        'original_password.checkOriginalPassword' => '原密码错误'
    ];
    //验证场景
    protected $scene = [
        'register' => ['mobile','password_reg','agree'],
        'password_login' => ['mobile_login','password_login'],
//        'update_pass' => ['password','re_password','original_password'],
//        'avatar' => ['uid','avatar'],
//        'retrievePass' => ['mobile','password','re_password'],
//        'ids' => ['ids'],
    ];
    //验证登录密码
    protected function checkPassword($value,$rule,$data){
        $user_password = (new UM())->where('mobile',$data['mobile'])->value('password');
        return password_verify_default($data['password'], $user_password);
    }
    //验证登录密码
    protected function checkOriginalPassword($value,$rule,$data){
        $user_password = (new UM())->where('id',$data['uid'])->value('password');
        return password_verify_default($data['original_password'], $user_password);
    }


}
