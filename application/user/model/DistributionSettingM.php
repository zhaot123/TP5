<?php
/**
 * 用户地址模型
*/

namespace app\user\model;

use app\admin\model\Model;
use app\admin\model\AdminUserM;

class DistributionSettingM extends Model
{
    public $softDelete = false;
    protected $name = 'distribution_setting';
    protected $autoWriteTimestamp = false;


}
