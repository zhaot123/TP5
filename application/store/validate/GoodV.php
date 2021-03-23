<?php
/**
 * 商品验证器
 */

namespace app\shop\validate;

use app\admin\validate\Validate;

class GoodV extends Validate
{
    protected $rule = [
        'cate_id|分类' => 'require',
        'name|标题' => 'require',
        'keywords|关键词' => 'require',
        'info|简介' => 'require',
        'description|描述' => 'require',
        'status|启用禁用' => 'require',
        'is_hot|是否热卖' => 'require',
        'is_new|是否新品' => 'require',
        'service|商品服务' => 'require',

    ];

    protected $message = [
        'cate_id.require' => '分类不能为空',
        'name.require' => '标题不能为空',
        'keywords.require' => '关键词不能为空',
        'info.require' => '简介不能为空',
        'description.require' => '描述不能为空',
        'status.require' => '启用禁用不能为空',
        'is_hot.require' => '是否热卖不能为空',
        'is_new.require' => '是否新品不能为空',
        'service.require' => '商品服务不能为空',

    ];

    protected $scene = [
        'add' => ['cate_id', 'name', 'keywords', 'info', 'description', 'status', 'service',],
        'edit' => ['cate_id', 'name', 'keywords', 'info', 'description', 'status', 'service',],

    ];


}
