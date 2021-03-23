<?php
/**
 * 文章表模型
*/

namespace app\help\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;


class CateM extends Model
{

    protected $name = 'complaintsCate';
    protected $searchField = ['complaint_name'];

}
