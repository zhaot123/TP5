<?php
/**
 * 安全日志模型
*/

namespace app\user\model;

use app\admin\model\Model;

class ProvinceM extends Model
{
    public $softDelete = false;
    protected $name = 'province';
    protected $autoWriteTimestamp = false;

}
