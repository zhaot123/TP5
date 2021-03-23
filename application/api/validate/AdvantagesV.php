<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class AdvantagesV extends BaseValidate{
    //规则
    protected $rule = [
        "advantages_id"=>'require',
    ];
    //错误信息
    protected $message = [
        'advantages_id.require' => '技术id不能为空',
    ];
    //验证场景
    protected $scene = [
        'info' => ['advantages_id',],
    ];


}
