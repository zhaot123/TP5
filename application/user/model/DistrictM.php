<?php
/**
 * 安全日志模型
*/

namespace app\user\model;

use app\admin\model\Model;

class DistrictM extends Model
{
    public $softDelete = false;
    protected $name = 'district';
    protected $autoWriteTimestamp = false;

}
