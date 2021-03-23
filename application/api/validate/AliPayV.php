<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class AliPayV extends BaseValidate{
    //规则
    protected $rule = [
        'order_sn|订单号' => 'require',
        'order_id|订单id' => 'require',
        'openid|openid' => 'require',
        'id|订单id' => 'require',
        'order_pay_sn|支付订单号' => 'require',
        'total_price|总价' => 'require',
        'type|支付方式' => 'require',

    ];
    //错误信息
    protected $message = [
        'order_sn' => '订单号不能为空',
        'openid' => '用户openid不能为空',
        'id' => '订单id不能为空',
        'order_pay_sn' => '支付订单号不能为空',
        'total_price' => '总价不能为空',
        'type' => '支付方式不能为空',

    ];
    //验证场景
    protected $scene = [
        'wx_pay' => ['order_id'],

    ];



}
