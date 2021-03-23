<?php
/**
 * 用户验证器
 */

namespace app\distribution\validate;

use app\admin\validate\Validate;

class IndexV extends Validate
{
    protected $rule = [

        'service_mobile|客服电话'       => 'require',
        'service_wx|客服电话'       => 'require',
        'service_wx_info|微信客服标题'       => 'require',

    ];
    protected $scene = [
        'index'  => [ 'service_mobile', 'service_wx','service_wx_info'],
        'info'  => [ 'wx_code', 'wx_number','ali_number','ali_code','yinl_code','yinl_number'],

    ];


}
