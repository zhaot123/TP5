<?php
/**
 * 文章表模型
*/

namespace app\picture\model;

use app\admin\model\Model;

use app\user\model\UserAddressM;
use app\user\model\UserM;
use think\model\concern\SoftDelete;

class PictureM extends Model
{
    use SoftDelete;
    protected $name = 'pictureOrder';
    protected $SoftDelete = true;
    protected $searchField = ['order_no','pic_name','user_name'];
    protected $type = ['buy_time' => 'timestamp:Y-m-d H:i:s','pay_time' => 'timestamp:Y-m-d H:i:s',];



    //1启用0禁用获取器
    public function getStatusTextAttr($value, $data)
    {
        return self::BOOLEAN_TEXT[$data['status']];
    }
    public function buyUser()
    {
        return $this->belongsTo(UserM::class,"buy_id","id")->field('id,mobile,user_name');
    }
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id","id")->setEagerlyType(0)->field('mobile,user_name');
    }


    public function address()
    {
        return $this->belongsTo(UserAddressM::class,"address_id","id")->field('id,name,mobile,detail');
    }
    public function pic()
    {
        return $this->belongsTo(PictureListM::class,"pic_id","id")->setEagerlyType(0)->field('pic_number,pic_name');
    }


}
