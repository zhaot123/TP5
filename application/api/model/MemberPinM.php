<?php
/**
 * 用户模型
 */

namespace app\api\model;
use app\common\model\BaseModel;
use app\shop\model\OrderM;
use think\model\concern\SoftDelete;

class MemberPinM extends BaseModel
{

    public $softDelete = false;
    protected $name = 'memberPin';
    protected $autoWriteTimestamp = true;

    public function order()
    {
        return $this->belongsTo(OrderM::class,'order_id','id')->field('id,shop_id,pic_id,total_price,status');
    }

}
