<?php
/**
 * 文章表验证器
 */

namespace app\cms\validate;

use app\admin\validate\Validate;

class ArticleV extends Validate
{
    protected $rule = [
        'cate_id|分类id' => 'require',
        'title|标题' => 'require',
        'content|内容' => 'require',
        'keywords|关键字' => 'require',
        'description|描述' => 'require',
        'view|阅读量' => 'require',
        'type|分类' => 'require',

    ];

    protected $message = [
        'cate_id.require' => '分类id不能为空',
        'title.require' => '标题不能为空',
        'content.require' => '内容不能为空',
        'keywords.require' => '关键字不能为空',
        'description.require' => '描述不能为空',
        'view.require' => '阅读量不能为空',

    ];

    protected $scene = [
        'add'  => ['title','content','attachment','type'],
        'edit' => ['title','content','attachment','type'],

    ];

    

}
