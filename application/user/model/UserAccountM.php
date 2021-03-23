<?php
/**
 * 用户账号模型
*/

namespace app\user\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;
class UserAccountM extends Model
{

    public $softDelete = false;
    protected $name = 'user_account';
    protected $autoWriteTimestamp = false;

    //1银行卡2支付宝
    public function getTypeTextAttr($value, $data)
    {
        switch ($data['type']){
            case 1:
                $text = '银行卡';
                break;
            case 2:
                $text = '支付宝';
                break;
            default:
                $text = '未知';
                break;
        }
        return $text;
    }
    //关联用户等级
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id","id")->field('id,mobile,user_name');
    }
    

    

    
}
