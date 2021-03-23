<?php
/**
 * 文章表模型
*/

namespace app\help\model;

use app\admin\model\AdminUserM;
use app\admin\model\Model;
use app\user\model\UserM;
use app\picture\model\PictureListM;
use app\picture\model\PictureM;
use think\model\concern\SoftDelete;


class ComplaintsM extends Model
{

    protected $name = 'complaints';
    protected $searchField = ['help_name'];
    //关联用户表
    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id",'id')->field('id,user_name');
    }
    //关联后台用户表
    public function admin()
    {
        return $this->belongsTo(AdminUserM::class,"admin_id",'id')->field('id,username');
    }
    //关联订单表
    public function order()
    {
        return $this->belongsTo(PictureM::class,"order_id",'id')->field('id,user_id,buy_id');
    }
    public function pic(){
        return $this->belongsTo(PictureListM::class,"pic_id",'id')->field('id,pic_number,pic_name,attachment');
    }
}
