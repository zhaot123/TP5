<?php
/**
 * 文章表模型
*/

namespace app\picture\model;

use app\admin\model\Model;
use app\api\model\AddressM;
use app\api\model\UserM;
use think\model\concern\SoftDelete;

class CateM extends Model
{

    protected $name = 'pictureCate';
    protected $searchField = ['pic_name'];

    public function cate()
    {
        return $this->belongsTo(CateM::class,"cate_id","id")->field('id,name,attachment');
    }
}
