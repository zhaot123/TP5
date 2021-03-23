<?php
/**
 * 设置验证器
 */

namespace app\admin\validate;

class SettingValidate extends Validate
{
    protected $rule = [
        'setting_group_id|所属分组' => 'require',
        'name|名称'               => 'require',
        'description|描述'        => 'require',
        'code|代码'               => 'require|unique:setting',
        'sort_number|排序'        => 'require'
    ];

    protected $scene = [
        'add'  => ['setting_group_id', 'name', 'description', 'code', 'sort_number',],
        'edit' => ['setting_group_id', 'name', 'description', 'code', 'sort_number',]
    ];


}
