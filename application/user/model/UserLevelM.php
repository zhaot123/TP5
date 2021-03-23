<?php
/**
 * 用户等级模型
 */

namespace app\user\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class UserLevelM extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'user_level';
    //可搜索字段
    protected $searchField = ['name', 'description',];

    //关联用户
    public function user()
    {
        return $this->hasMany(UserM::class);
    }


}
