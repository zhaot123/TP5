<?php
/**
 * 用户等级模型
 */

namespace app\user\model;

use app\admin\model\Model;

class UserHistoryM extends Model{

    public $softDelete = false;
    protected $name = 'searchHistory';

    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,"uid",'id')->field('id,mobile,user_name');
    }


}
