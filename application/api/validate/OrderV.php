<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class OrderV extends BaseValidate{
    //规则
    protected $rule = [
        'uid|用户id' => 'require|gt:0',
        'type|种类' => 'require',
        'specs_id' => 'require',
        'num' => 'require',
        'address_id' => 'require',
        'is_vip' => 'require',
        'order_id' => 'require',
        'refund_relation_id' => 'require',
        'reason_wap' => 'require',
        'imgs' => 'require',




    ];
    //错误信息
    protected $message = [
        'uid' => '用户id不能为空',
        'type' => '种类不能为空',
        'specs_id' => '规格id不能为空',
        'num' => '数量不能为空',
        'address_id' => '地址id不能为空',
        'is_vip' => '是否为vip不能为空',
        'order_id' => '订单id不能为空',
        'refund_relation_id' => '退款理由id不能为空',
        'reason_wap' => '手写退款理由不能为空',


    ];
    //验证场景
    protected $scene = [
        'order_list' => ['uid','type'],
        'order_info' => ['uid','order_id'],
        'logistics' => ['uid','order_id'],
        'add_order' => ['uid','goods_id','num','address_id','is_vip'],
        'order' => ['uid','goods_id','num'],
        'refund' => ['order_id','refund_relation_id','reason_wap','type'],
        'order_del' => ['order_id',],
        'order_sure' => ['order_id',],
        'order_cancel' => ['order_id',],
        'remind' => ['order_id',],

    ];


}
