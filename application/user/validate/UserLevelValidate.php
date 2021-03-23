<?php
/**
 * 用户等级验证器
 */

namespace app\user\validate;

use app\admin\validate\Validate;

class UserLevelValidate extends Validate
{
    protected $rule = [
        'name|名称'        => 'require',
        'description|简介' => 'require',
        'status|是否启用'    => 'require'

    ];
    protected $scene = [
        'add'  => ['name', 'description', 'status',],
        'edit' => ['name', 'description', 'status',]

    ];


}
