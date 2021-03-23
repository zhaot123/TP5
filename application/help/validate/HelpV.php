<?php
/**
 * 文章表验证器
 */

namespace app\help\validate;

use app\admin\validate\Validate;

class HelpV extends Validate
{
    protected $rule = [
        'status|状态' => 'require',
        'help_name|帮助名称' => 'require',
        'help_content|帮助内容' => 'require',
        'sort|排序值' => 'require',
    ];

    protected $message = [
        'cate_id.require' => '分类id不能为空',


    ];

    protected $scene = [
        'add'  => ['status','help_name','help_content','sort',],
        'edit'  => ['status','help_name','help_content','sort',],


    ];

    

}
