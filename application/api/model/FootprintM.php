<?php
/**
 * 用户模型
 */

namespace app\api\model;
use app\common\model\BaseModel;
use app\shop\model\GoodM;
use think\model\concern\SoftDelete;

class FootprintM extends BaseModel
{

    public $softDelete = false;
    protected $name = 'footprint';
    protected $autoWriteTimestamp = true;

    public function goods()
    {
        return $this->belongsTo(GoodM::class,'good_id','id');
    }


}
