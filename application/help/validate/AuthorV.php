<?php
/**
 * 文章表验证器
 */

namespace app\cms\validate;

use app\admin\validate\Validate;

class AuthorV extends Validate
{
    protected $rule = [
        'author_name|作者名称' => 'require',
        'content|作者描述' => 'require',
        'attachment|作者头像' => 'require',
        'status|状态' => 'require',
    ];

    protected $message = [
        'author_name.require' => '作者名称不能为空',
        'content.require' => '作者描述不能为空',
        'attachment.require' => '作者头像不能为空',
        'status.require' => '状态不能为空',
    ];

    protected $scene = [
        'add'  => ['author_name','content','status',],
        'edit'  => ['author_name','content','status',],
    ];

    

}
