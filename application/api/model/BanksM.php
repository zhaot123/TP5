<?php
/**
 * 用户模型
 */

namespace app\api\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class BanksM extends Model
{

    public $softDelete = false;
    protected $name = 'banks';





}
