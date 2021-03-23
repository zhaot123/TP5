<?php
/**
 * 文章表模型
*/

namespace app\picture\model;

use app\admin\model\Model;
use app\user\model\UserAddressM;
use app\user\model\UserM;
use app\picture\controller\Cate;
use app\user\controller\User;
use think\model\concern\SoftDelete;

class PictureListM extends Model
{
    use  softDelete;
    protected $name = 'picture';
    protected $searchField = ['pic_name'];
    public $softDelete = true;
    public function cate()
    {
        return $this->belongsTo(CateM::class,"cate_id","id")->field('id,name');
    }
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id","id")->field('id,mobile,user_name');
    }
}
