<?php
/**
 * 商城活动验证器
 */

namespace app\shop\validate;

use app\admin\validate\Validate;

class ShopActivityV extends Validate
{
    protected $rule = [
        'title|标题' => 'require',
        'start_time|活动开始时间' => 'require',
        'end_time|活动结束时间' => 'require',
        'type|活动类型' => 'require',
    ];

    protected $message = [
        'title.require' => '标题不能为空',
        'type.require' => '活动类型不能为空',
        'start_time.require' => '活动开始时间不能为空',
        'end_time.require' => '活动结束时间不能为空',
    ];

    protected $scene = [
        'add' => ['title', 'start_time','end_time'],
        'edit' => ['title', 'start_time','end_time'],

    ];


}
