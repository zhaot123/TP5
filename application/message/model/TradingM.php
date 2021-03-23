<?php
/**
 * 用户模型
 */

namespace app\user\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class TradingM extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'tading';



    //关联用户等级
    public function userLevel()
    {
        return $this->belongsTo(UserLevelM::class);
    }



}
