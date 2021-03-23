<?php
/**
 * 用户地址模型
 */

namespace app\distribution\model;

use app\admin\model\AdminUserM;
use app\common\model\BaseModel;
use app\user\model\UserM;


class FinanceM extends BaseModel
{
    public $softDelete = false;
    protected $name = 'finance';
    protected $autoWriteTimestamp = false;

    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id",'id')->field('id,mobile,user_name');
    }
    public function admin()
    {
        return $this->belongsTo(AdminUserM::class,"admin_id",'id')->field('id,username');
    }
}