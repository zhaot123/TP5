<?php
/**
 * 用户模型
 */

namespace app\api\model;
use app\common\model\BaseModel;
use think\model\concern\SoftDelete;

class MessageM extends BaseModel
{

    public $softDelete = false;
    protected $name = 'Message';
    protected $autoWriteTimestamp = true;


//    //关联用户表
//    public function user()
//    {
//        return $this->belongsTo(UserM::class,'user_id','id')->field('user_name');
//    }

}
