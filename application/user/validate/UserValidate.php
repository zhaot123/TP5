<?php
/**
 * 用户验证器
 */

namespace app\user\validate;

use app\admin\validate\Validate;

class UserValidate extends Validate
{
    protected $rule = [

        'user_name|用户名'       => 'require',
        'mobile|手机号'         => 'require',
        'password|密码'        => 'require',
        'status|是否启用'        => 'require'
    ];
    protected $scene = [
        'add'  => [ 'user_name', 'mobile', 'password', 'status',],
        'edit' => ['user_name', 'mobile', 'password', 'status',]
    ];


}
