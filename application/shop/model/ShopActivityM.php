<?php
/**
 * 商城活动模型
 */

namespace app\shop\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class ShopActivityM extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'shop_activity';
    protected $autoWriteTimestamp = true;

    //活动开始时间获取器
    public function getStartTimeAttr($value)
    {
        return date('Y-m-d H:i:s', $value);
    }
    //活动开始时间修改器
    public function setStartTimeAttr($value)
    {
        return strtotime($value);
    }
    //活动结束时间获取器
    public function getEndTimeAttr($value)
    {
        return date('Y-m-d H:i:s', $value);
    }
    //活动结束时间修改器
    public function setEndTimeAttr($value)
    {
        return strtotime($value);
    }
    //1限时2限量
    public function getTypeTextAttr($value, $data)
    {
        switch ($data['type']){
            case 1:
                $text = '限时';
                break;
            case 2:
                $text = '限量';
                break;
            default:
                $text = '未知';
                break;
        }
        return $text;
    }


}
