<?php
/**
 * 用户模型
 */

namespace app\distribution\model;

use app\admin\model\Model;
use app\user\model\UserM;
use app\admin\model\AdminUserM;
use think\model\concern\SoftDelete;

class WithdralM extends Model
{

    public $softDelete = false;
    protected $name = 'userWithdraw';
    protected $type = ['pass_time' => 'timestamp:Y-m-d H:i',];
    protected $searchField = ['user_name'];
    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id",'id')->setEagerlyType(0);
    }

}
