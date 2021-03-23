<?php
/**
 * 商品模型
 */

namespace app\store\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class StoreM extends Model
{

    protected $name = 'store';

    protected $searchField = ['username'];

}
