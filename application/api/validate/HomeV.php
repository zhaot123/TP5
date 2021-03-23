<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class HomeV extends BaseValidate{
    //规则
    protected $rule = [
        'notice_id|公告id' => 'require|gt:0',
        'history_id|历史记录id' => 'require|gt:0',
        'good_id|商品id' => 'require|gt:0',
        'user_id|用户id' => 'require|gt:0',

    ];
    //错误信息
    protected $message = [
        'notice_id' => '公告id不能为空',
        'history_id' => '历史记录id不能为空',
        'good_id' => '商品id不能为空',
        'user_id' => '用户id不能为空',

    ];
    //验证场景
    protected $scene = [
        'notice_info' => ['notice_id',],
        'history_del' => ['history_id',],
        'collection' => ['good_id','user_id'],



    ];


}
