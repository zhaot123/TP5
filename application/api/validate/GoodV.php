<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class GoodV extends BaseValidate{
    //规则
    protected $rule = [
        'good_id|商品id' => 'require|gt:0',
        'uid|用户id' => 'require|gt:0',
        'specs_id|规格id' => 'require|gt:0',

    ];
    //错误信息
    protected $message = [
        'good_id' => '商品id不能为空',
        'uid' => '用户id不能为空',
        'specs_id' => '规格id不能为空',

    ];
    //验证场景
    protected $scene = [
        'good_info' => ['good_id'],
        'specification' => ['good_id',],
        'collection' => ['good_id',],
        'join_cart' => ['good_id','uid'],
        'aa' => ['good_id','uid','spec_id'],


    ];


}
