<?php
/**
 * 用户模型
 */

namespace app\message\model;

use app\admin\model\Model;
use app\user\model\UserM;
use app\admin\model\AdminUserM;
use think\model\concern\SoftDelete;

class MessageM extends Model
{

    public $softDelete = false;
    protected $name = 'message';

    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id",'id')->field('id,mobile,user_name');
    }
    //关联用户等级
    public function admin()
    {
        return $this->belongsTo(AdminUserM::class,"admin_id",'id')->field('id,username');
    }
}
