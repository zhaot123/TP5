<?php
/**
 * 商品分类验证器
 */

namespace app\picture\validate;

use app\admin\validate\Validate;
use app\shop\model\GoodCateM as GCM;

class CateV extends Validate
{
    protected $rule = [
        'name|分类名称' => 'require',
        'id|是否首页显示' => 'checkIsIndex'
    ];

    protected $message = [
        'name.require' => '分类名称不能为空',
        'id.checkIsIndex' => '只有最下级分类才能首页展示'
    ];

    protected $scene = [
        'add' => ['name',],
        'edit' => ['name',],
        'id' => ['id']
    ];
    //检测是否是最低级的分类，最低级的分类才能首页显示
    protected function checkIsIndex($value,$rule,$data){
        $goodCateM = new GCM();
        $level = $goodCateM->max('level');//最大分类等级
        foreach ($value as $item){
            $good_level = $goodCateM->where('id', $item)->value('level');
            while ($good_level < $level){
                return false;
            }
        }
    }


}
