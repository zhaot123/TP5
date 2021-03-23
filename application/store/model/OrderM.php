<?php
/**
 * 订单模型
 */

namespace app\shop\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;
use app\user\model\UserM;
use app\user\model\UserAddressM;

class OrderM extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'shop_order';
    protected $autoWriteTimestamp = true;
    //可搜索字段
    protected $type = ['pay_time' => 'timestamp:Y-m-d H:i','create_time' => 'timestamp:Y-m-d H:i:s'];
    protected $searchField = ['order_no','user_phone','delivery_id'];
    //可作为条件的字段
    protected $whereField = ['status','pay_type','refund_status'];
    //可做为时间
    protected $timeField = ['create_time'];


    //关联用户
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id",'id')->field('id,mobile,user_name');
    }
    //关联物品表
    public function good()
    {
        return $this->belongsTo(GoodM::class,"goods_id",'id')->field('id,name,attachment');
    }
    //关联地址表
    public function address()
    {
        return $this->belongsTo(UserAddressM::class,"address_id",'id')->field('id,name,province,city,district');
    }
    //关联规格表
    public function specs()
    {
        return $this->belongsTo(GoodSpecsM::class,"specs_id",'id')->field('id,name,price,old_price');
    }
    //0已取消1待付款2待发货3待收货4已收货订单完成获取器
    public function getStatusTextAttr($value, $data)
    {
        switch ($data['status']){
            case 0:
                $text = '已取消';
                break;
            case 1:
                $text = '待付款';
                break;
            case 2:
                $text = '待发货';
                break;
            case 3:
                $text = '待收货';
                break;
            case 4:
                $text = '已收货';
                break;
            case 5:
                $text = '退款中';
                break;
            case 9:
                $text = '已取消';
                break;
            default:
                $text = '未知';
                break;
        }
        return $text;
    }
    //退款时间获取器
    public function getRefundReasonTimeAttr($value)
    {
        if ($value != 0) {
            return date('Y-m-d H:i:s', $value);
        }
    }
    //1微信2支付宝3站内币
    public function getPayTypeTextAttr($value, $data)
    {
        switch ($data['pay_type']){
            case 0:
                $text = '未付款';
                break;
            case 1:
                $text = '微信';
                break;
            case 2:
                $text = '支付宝';
                break;
            default:
                $text = '未知';
                break;
        }
        return $text;
    }
    //1微信2支付宝3站内币
    public function getPayMethodTextAttr($value, $data)
    {
        switch ($data['pay_method']){

            case 1:
                $text = '合并支付';
                break;
            case 2:
                $text = '单商品支付';
                break;
            default:
                $text = '未知';
                break;
        }
        return $text;
    }

    //0未退款1申请中2已退款3已拒绝
    public function getRefundStatusTextAttr($value, $data)
    {
        switch ($data['refund_status']){
            case 0:
                $text = '无';
                break;
            case 1:
                $text = '申请中';
                break;
            case 2:
                $text = '已退款';
                break;
            case 3:
                $text = '已拒绝';
                break;
            default:
                $text = '未知';
                break;
        }
        return $text;
    }



}
