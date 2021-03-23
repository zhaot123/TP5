<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class MemberV extends BaseValidate{
    //规则
    protected $rule = [
        'uid|用户id' => 'require|gt:0',
        'head_img|用户头像' => 'require',
        'user_name|用户姓名' => 'require|length:3,10',
        'mobile|手机号' => 'require|mobile',
        'collection_id|收藏id' => 'require',
        'type|种类' => 'require',
        'img|图片' => 'require',
        'price|图片' => 'require',
        'content|反馈内容' => 'require',



    ];
    //错误信息
    protected $message = [
        'uid' => '用户id不能为空',
        'head_img' => '用户头像不能为空',
        'user_name' => '用户名称不能为空且长度为3-10',
        'mobile' => '手机号格式不正确',
        'collection_id' => '收藏id不能为空',
        'type' => '种类不能为空',
        'img' => '图片不能为空',
        'price' => '提现金额不能为空',
        'content' => '反馈内容不能为空',

    ];
    //验证场景
    protected $scene = [
        'register' => ['mobile','password_reg','agree'],
        'password_login' => ['mobile_login','password_login'],
        'update_head_img' => ['uid','head_img'],
        'update_name' => ['uid','user_name'],
        'update_mobile' => ['mobile'],
        'my_collection' => ['uid'],
        'cancel_collection' => ['collection_id'],
        'my_code' => ['uid'],
        'my_wallet' => ['uid'],
        'up_qrcode' => ['uid','type','img'],
        'my_qrcode' => ['uid',],
        'withdrawal' => ['uid','price','type'],
        'my_level' => ['uid'],
        'finance' => ['uid'],
        'opinions' => ['uid','content'],

    ];


}
