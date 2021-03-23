<?php
/**
 * 用户地址模型
*/

namespace app\user\model;

use app\admin\model\Model;

class UserFinanceM extends Model
{
    public $softDelete = false;
    protected $name = 'finance';
    protected $autoWriteTimestamp = false;

    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id",'id')->field('id,mobile,user_name');
    }
    //关联币种
    public function currency()
    {
        return $this->belongsTo(UserCurrencyM::class)->field(  'id,name');
    }

}
