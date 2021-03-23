<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class ClassifyV extends BaseValidate{
    //规则
    protected $rule = [
        "uid"=>'require',
        "classify_id"=>'require',

    ];
    //错误信息
    protected $message = [
        'uid.require' => '用户id不能为空',
        'classify_id.require' => '分类id不能为空',

    ];
    //验证场景
    protected $scene = [
        'cart' => ['uid',],
        'second_recom' => ['classify_id',],


    ];


}
