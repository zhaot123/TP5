<?php
/**
 * 安全日志模型
*/

namespace app\user\model;

use app\admin\model\Model;

class CityM extends Model
{
    public $softDelete = false;
    protected $name = 'city';
    protected $autoWriteTimestamp = false;

}
