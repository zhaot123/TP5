<?php
/**
 * 用户地址模型
*/

namespace app\user\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;
class PinAuditM extends Model
{

    protected $name = 'member_pin';
    protected $autoWriteTimestamp = false;

    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id","id")->field('id,mobile,user_name');
    }



    

    
}
