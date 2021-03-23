<?php
/**
 * 商品模型
 */

namespace app\store\model;

use app\admin\model\Model;
use app\api\model\ShopM;
use think\model\concern\SoftDelete;

class TemplateM extends Model
{

    protected $name = 'template';

    protected $searchField = ['username'];
    //关联用户
    public function store()
    {
        return $this->belongsTo(StoreM::class,"store_id",'id')->field('id,username');
    }

    public function shop()
    {
        return $this->belongsTo(ShopM::class,"shop_id",'id')->field('id,username');
    }


}
