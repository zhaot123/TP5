<?php
/**
 * 用户地址模型
*/

namespace app\user\model;

use app\admin\model\Model;
use app\admin\model\AdminUserM;

class UserWithdrawM extends Model
{
    public $softDelete = false;
    protected $name = 'user_withdraw';
    protected $autoWriteTimestamp = false;

    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id",'id')->field('id,mobile,user_name');
    }

//  关联后台用户表
    public function admin()
    {
        return $this->belongsTo(AdminUserM::class,"admin_id",'id')->field(  'id,username');
    }
}
