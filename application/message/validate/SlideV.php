<?php
/**
 * 文章表验证器
 */

namespace app\message\validate;

use app\admin\validate\Validate;

class SlideV extends Validate
{
    protected $rule = [
        'cate_id|分类id' => 'require',
    ];

    protected $message = [
        'cate_id.require' => '分类id不能为空',
    ];

    protected $scene = [
        'add'  => ['title','content','attachment',],
        'edit' => ['title','content','attachment',],

    ];

    

}
