<?php
/**
 * 商品模型
 */

namespace app\shop\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class GoodM extends Model
{
    use SoftDelete;
    protected $name = 'shop_good';
    protected $type = ['sale_time' => 'timestamp:Y-m-d H:i',];
    protected $searchField = ['keywords'];

    //1启用0禁用获取器
    public function getStatusTextAttr($value, $data)
    {
        return self::BOOLEAN_TEXT[$data['status']];
    }

    //附件路径修改器

    //是否热卖1是获取器
    public function getTypeTextAttr($value, $data)
    {
        switch ($data['type']){
            case 0:
                $text = '常规';
                break;
            case 1:
                $text = '限时';
                break;
            case 2:
                $text = '限量';
                break;
            case 3:
                $text = '银币';
                break;
            default:
                $text = '未知状态';
                break;
        }
        return $text;
    }


}
