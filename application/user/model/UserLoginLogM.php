<?php
/**
 * 安全日志模型
*/

namespace app\user\model;

use app\admin\model\Model;

class UserLoginLogM extends Model
{
    public $softDelete = false;
    protected $name = 'user_login_log';
    protected $autoWriteTimestamp = false;

    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id","id")->field('id,mobile,user_name');
    }

    

    
}
