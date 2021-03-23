<?php
/**
 * 用户地址模型
*/

namespace app\user\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;
class UserAuditM extends Model
{

    protected $name = 'member_audit';
    protected $autoWriteTimestamp = false;

    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id","id")->field('id,mobile,user_name');
    }



    

    
}
