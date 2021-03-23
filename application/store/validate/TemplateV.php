<?php
/**
 * 商品验证器
 */

namespace app\store\validate;

use app\admin\validate\Validate;

class TemplateV extends Validate
{
    protected $rule = [

        'shop_id|店铺不能为空' => 'require',
        'keyword|关键字不能为空' => 'require',
        'total_price|总价不能为空' => 'require',
        'commission_price|佣金价格' => 'require',
        'template_name|模板名称' => 'require',
        'is_eval|是否评价' => 'require',
        'type|订单分类' => 'require',
        'task_type|任务类型' => 'require',
    ];

    protected $message = [


    ];

    protected $scene = [
        'add' => ['shop_id', 'keyword', 'total_price', 'commission_price', 'template_name','is_eval','type','task_type',],
        'edit' => ['shop_id', 'keyword', 'total_price', 'commission_price', 'template_name','is_eval','type','task_type',],


    ];


}
