<?php
/**
 * 轮播图模型
*/

namespace app\message\model;

use app\admin\model\Model;


class SlideM extends Model
{
    public $softDelete = false;
    protected $name = 'cmsSlide';

    //1启用0禁用获取器
    public function getStatusTextAttr($value, $data)
    {
        return self::BOOLEAN_TEXT[$data['status']];
    }


    

    
}
