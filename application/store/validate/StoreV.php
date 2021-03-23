<?php
/**
 * 商品验证器
 */

namespace app\store\validate;

use app\admin\validate\Validate;

class StoreV extends Validate
{
    protected $rule = [
        'username|用户名' => 'require',
        'password|密码' => 'require',
        'nickname|昵称' => 'require',
        'status|状态' => 'require',
        'must_see|状态' => 'require',
        'interval_time|状态' => 'require',


    ];

    protected $message = [


    ];

    protected $scene = [
        'add' => ['username', 'password', 'nickname', 'status',],
        'edit' => ['username', 'nickname', 'status',],
        'shop_add' => ['username','must_see','interval_time'],
        'shopEdit' => ['username','must_see','interval_time'],
    ];


}
