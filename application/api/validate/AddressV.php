<?php
/**
 * 用户验证器
 */

namespace app\api\validate;

use app\common\validate\BaseValidate;
use think\Db;
use app\api\model\UserM as UM;

class AddressV extends BaseValidate{
    //规则
    protected $rule = [
        'address_id|地址id' => 'require',
        'uid|用户id' => 'require',
        'province_id|省级id' => 'require',
        'province|省名称' => 'require',
        'city_id|城市id' => 'require',
        'city|城市名称' => 'require',
        'district_id|区id' => 'require',
        'district|区名称' => 'require',
        'detail|详细地址' => 'require',
        'post_code|邮政编码' => 'require',
        'name|姓名' => 'require',
        'mobile|电话号' => 'require|mobile',
        'user_id|电话号' => 'require',


    ];
    //错误信息
    protected $message = [
        'address_id' => '地址id不能为空',
        'uid' => '用户id不能为空',
        'province_id' => '省id不能为空',
        'province' => '省名称不能为空',
        'city_id' => '城市id不能为空',
        'city' => '城市名称不能为空',
        'district_id' => '区id不能为空',
        'district' => '区名称不能为空',
        'detail' => '地址详情不能为空',
        'post_code' => '邮政编码不能为空',
        'name' => '姓名不能为空',
        'mobile.require' => '手机号不能为空',

        'user_id' => '用户id不能为空',

    ];
    //验证场景
    protected $scene = [
        'address_list' => ['uid'],
        'set_default' => ['address_id'],
        'address_del' => ['address_id'],
        'address_info' => ['address_id'],
        'address_add' => ['province_id','province','city_id','city','district_id','district','is_default','detail','mobile','name','user_id'],
        'addAddress' => ['province_id','province','city_id','city','district_id','district','is_default','detail','mobile','name',],
        'editAddress' => ['address_id'],

    ];

}
