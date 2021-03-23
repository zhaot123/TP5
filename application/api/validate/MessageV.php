<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class MessageV extends BaseValidate{
    //规则
    protected $rule = [
        'uid|用户id' => 'require|gt:0',
        'message_id|信息id' => 'require',
        'order_id|订单id' => 'require',



    ];
    //错误信息
    protected $message = [
        'uid' => '用户id不能为空',
        'type' => '种类不能为空',
        'order_id' => '订单id不能为空',

    ];
    //验证场景
    protected $scene = [
        'message_list' => ['uid'],
        'message_info' => ['message_id'],
        'message_del' => ['message_id'],


    ];


}
