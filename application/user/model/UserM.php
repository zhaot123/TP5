<?php
/**
 * 用户模型
 */

namespace app\user\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class UserM extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'member';


    //可搜索字段
    protected $searchField = [ 'mobile', 'user_name',];

    //是否启用获取器
    public function getStatusTextAttr($value, $data)
    {
        return self::BOOLEAN_TEXT[$data['status']];
    }
    //是否启用持仓过夜
    public function getIsOvernightTextAttr($value, $data)
    {
        return self::BOOLEAN_TEXT[$data['is_overnight']];
    }
    //是否实名
    public function getIsRealTextAttr($value, $data)
    {
        return self::BOOLEAN_TEXT[$data['is_real']];
    }

    //关联用户等级
    public function userLevel()
    {
        return $this->belongsTo(UserLevelM::class,"level","id");
    }
    //关联账号
    public function userAccount(){

        return $this->belongsTo(UserAccountM::class,"id","user_id")->where("is_default",1)->field("id,id_number,bank_code");
    }
    //关联资金表




    /**
     * 用户登录
     * @param $param
     * @return mixed
     * @throws \Exception
     */


}
