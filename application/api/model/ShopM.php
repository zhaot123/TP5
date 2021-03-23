<?php
/**
 * 用户模型
 */

namespace app\api\model;
use app\common\model\BaseModel;
use app\shop\model\OrderM;
use app\store\model\StoreM;
use think\model\concern\SoftDelete;

class ShopM extends BaseModel
{

    public $softDelete = false;
    protected $name = 'shop';
    protected $autoWriteTimestamp = true;

    public function order()
    {
        return $this->belongsTo(OrderM::class,'order_id','id')->field('id,shop_id,pic_id,total_price,status');
    }

    public function store()
    {
        return $this->belongsTo(StoreM::class,'store_id','id')->field('id,username,nickname');
    }




}
