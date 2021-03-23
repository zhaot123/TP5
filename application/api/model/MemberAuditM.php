<?php
/**
 * 用户模型
 */

namespace app\api\model;
use app\common\model\BaseModel;
use think\model\concern\SoftDelete;

class MemberAuditM extends BaseModel
{

    public $softDelete = false;
    protected $name = 'MemberAudit';
    protected $autoWriteTimestamp = true;


//    //关联用户表
//    public function user()
//    {
//        return $this->belongsTo(UserM::class,'user_id','id')->field('user_name');
//    }

}
