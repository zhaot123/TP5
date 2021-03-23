<?php
/**
 * 设置分组验证器
 */


namespace app\admin\validate;

class SettingGroupValidate extends Validate{
    protected $rule = [
        'name|名称'                            => 'require',
        'description|描述'                     => 'require',
        'module|作用模块'                      => 'require',
        'code|代码'                            => 'require|unique:setting',
        'sort_number|排序'                     => 'require',
        'auto_create_menu|自动生成菜单'        => 'require',
        'auto_create_file|自动生成配置文件'    => 'require'

    ];

    protected $scene = [
        'add'  => ['name', 'description', 'module', 'code', 'sort_number', 'auto_create_menu', 'auto_create_file',],
        'edit' => ['name', 'description', 'module', 'code', 'sort_number', 'auto_create_menu', 'auto_create_file',]
    ];


}
