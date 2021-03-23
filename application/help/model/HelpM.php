<?php
/**
 * 文章表模型
*/

namespace app\help\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;


class HelpM extends Model
{

    protected $name = 'Help';
    protected $searchField = ['help_name'];

}
