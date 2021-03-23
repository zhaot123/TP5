<?php
/**
 * 用户模型
 */

namespace app\api\model;
use app\common\model\BaseModel;
use app\shop\model\GoodM;
use think\model\concern\SoftDelete;

class CollectionM extends BaseModel
{

    public $softDelete = false;
    protected $name = 'Collection';
    protected $autoWriteTimestamp = true;


//    //关联用户表
//    public function user()
//    {
//        return $this->belongsTo(UserM::class,'user_id','id')->field('user_name');
//    }

    public function goods()
    {
        return $this->belongsTo(GoodM::class,'good_id','id');
    }


}
