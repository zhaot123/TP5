<?php
/**
 * 商品规格验证器
 */

namespace app\shop\validate;

use app\admin\validate\Validate;
use app\shop\model\GoodSpecsM as GSM;

class GoodSpecsV extends Validate
{
    protected $rule = [
        'good_id|商品id' => 'require|checkGoodSpecs',
        'name|规格名称' => 'require',
        'price|价格' => 'require',
    ];

    protected $message = [
        'good_id.require' => '商品id不能为空',
        'name.require' => '规格名称不能为空',
        'price.require' => '价格不能为空',
    ];

    protected $scene = [
        'add' => ['good_id', 'name', 'price'],
        'edit' => ['good_id', 'name', 'price']
    ];
//    protected function checkGoodSpecs($value,$rule,$data){
//        if (isset($data['id'])){
//            return true;//编辑不验证唯一性
//        }else {
//            if ($data['type'] == 1 || $data['type'] == 2) {
//                $count = (new GSM())->where('good_id', $data['good_id'])->count();
//                if ($count > 0) {
//                    switch ($data['type']) {
//                        case 1:
//                            return '限时商品只能存在一个规格';
//                            break;
//                        case 2:
//                            return '限量商品只能存在一个规格';
//                            break;
//                    }
//                }else {
//                    return true;
//                }
//            }else{
//                return true;
//            }
//        }
//    }

}
