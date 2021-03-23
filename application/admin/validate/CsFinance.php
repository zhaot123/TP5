<?php
/**
 * 财务日志表验证器
 */

namespace app\admin\validate;

class CsFinance extends Validate
{
    protected $rule = [
            'user_id|用户id' => 'require',
    'type|1花费 2提现 3佣金获得' => 'require',
    'content|内容' => 'require',
    'status|1已完成0初始化' => 'require',
    'money_type|收入=1/支出=2' => 'require',
    'money|金额' => 'require',
    'last_money|' => 'require',
    'admin_id|如果为0则是前台日志 不为0为后台日志' => 'require',
    'currency|1是用户积分 2是人民币' => 'require',

    ];

    protected $message = [
            'user_id.require' => '用户id不能为空',
    'type.require' => '1花费 2提现 3佣金获得不能为空',
    'content.require' => '内容不能为空',
    'status.require' => '1已完成0初始化不能为空',
    'money_type.require' => '收入=1/支出=2不能为空',
    'money.require' => '金额不能为空',
    'last_money.require' => '不能为空',
    'admin_id.require' => '如果为0则是前台日志 不为0为后台日志不能为空',
    'currency.require' => '1是用户积分 2是人民币不能为空',

    ];

    protected $scene = [
        'add'  => ['user_id','type','content','status','money_type','money','last_money','admin_id','currency',],
'edit' => ['user_id','type','content','status','money_type','money','last_money','admin_id','currency',],

    ];

    

}
