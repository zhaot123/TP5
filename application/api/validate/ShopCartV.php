<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class ShopCartV extends BaseValidate{
    //规则
    protected $rule = [
        "uid"=>'require',
        "type"=>'require',
        "good_id"=>'require',
        "num"=>'require',
        "specs_id"=>'require',
        "goods_id"=>'require',
    ];
    //错误信息
    protected $message = [
        'uid.require' => '用户id不能为空',
        'type.require' => '类型不能为空',
        'good_id.require' => '商品id不能为空',
        'num.require' => '数量不能为空',
        'specs_id.require' => '规格id不能为空',
        'goods_id.require' => '删除id不能为空',
    ];
    //验证场景
    protected $scene = [
        'cart' => ['uid',],
        'addel' => ['uid','type','good_id'],
        'add_cart' => ['uid','good_id','num'],
        'cart_del' => ['specs_id','uid'],
    ];


}
