<?php
/**
 * 用户模型
 */

namespace app\message\model;

use app\admin\model\Model;
use app\user\model\UserM;
use app\user\controller\User;
use think\model\concern\SoftDelete;

class OpinionsM extends Model
{
    public $softDelete = false;
    protected $name = 'Opinions';
    protected $searchField = ['content',];

    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,'user_id','id');
    }



}
