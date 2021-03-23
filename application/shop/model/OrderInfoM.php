<?php
/**
 * 订单详情模型
*/

namespace app\shop\model;

use app\admin\model\Model;

class OrderInfoM extends Model
{
    public $softDelete = false;
    protected $name = 'shop_order_info';
    protected $autoWriteTimestamp = false;
    //商品名称获取器
    public function getGoodNameAttr($value,$data){
        return GoodM::get($data['good_id'])->value('name');
    }
    //规格名称获取器
    public function getSpecNameAttr($value,$data){
        return GoodSpecsM::get($data['spec_id'])->value('name');
    }

    

    

    
}
