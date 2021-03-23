<?php
/**
 * 订单验证器
 */

namespace app\shop\validate;

use app\admin\validate\Validate;
use app\shop\model\OrderM as OM;

class OrderV extends Validate
{
    protected $rule = [
        'order_no|订单号' => 'require',
        'user_id|用户id' => 'require',
        'total_price|订单总价' => 'require',
        'freight_price|运费' => 'require',
        'remark|用户备注' => 'require',
        'user_phone|联系电话' => 'require',
        'user_address|地址' => 'require',
        'delivery_name|快递名称' => 'require',
        'delivery_id|快递单号' => 'require',
        'refund_status|退款状态' => 'require|checkRefundStatus',
        'refund_reason|拒绝退款理由' => 'requireIf:refund_status,3',
    ];

    protected $message = [
        'order_no.require' => '订单号不能为空',
        'user_id.require' => '用户id不能为空',
        'total_price.require' => '订单总价不能为空',
        'freight_price.require' => '运费不能为空',
        'remark.require' => '用户备注不能为空',
        'user_phone.require' => '联系电话不能为空',
        'user_address.require' => '地址不能为空',
        'delivery_name.require' => '快递名称不能为空',
        'delivery_id.require' => '快递单号不能为空',
        'refund_status.require' => '退款状态不能为空',
        'refund_reason.require' => '拒绝退款理由不能为空',
    ];

    protected $scene = [
        'add' => ['order_no', 'user_id', 'total_price', 'freight_price', 'remark', 'user_phone', 'user_address',],
        'edit' => ['order_no', 'user_id', 'total_price', 'freight_price', 'remark', 'user_phone', 'user_address',],
        'deliver' => ['delivery_name','delivery_id'],
        'refund' => ['refund_status','refund_reason'],
    ];

    protected function checkRefundStatus($value,$rule,$data){
        $refund_status = (new OM())->where('id',$data['id'])->value('refund_status');
        if ($refund_status != 1){
            return '该订单未申请退款或已处理';
        }else{
            return true;
        }
    }

}
