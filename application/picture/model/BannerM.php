<?php
/**
 * 轮播图模型
 */

namespace app\cms\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class BannerM extends Model
{
    use SoftDelete;
    protected $name = 'banners';
    //1启用0禁用获取器
    public function getStatusTextAttr($value, $data)
    {
        return self::BOOLEAN_TEXT[$data['status']];
    }
    //0不跳转1外链2文章3商品
    public function getTypeTextAttr($value, $data)
    {
        switch ($data['type']){

            case 1:
                $text = '不跳转';
                break;
            case 2:
                $text = '商品';
                break;
            default:
                $text = '外联';
                break;
        }
        return $text;
    }




}
