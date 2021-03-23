<?php
/**
 * 商品规格模型
*/

namespace app\shop\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class GoodSpecsM extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'shop_good_specs';
    protected $searchField = ['name'];

    public function good(){

        return $this->belongsTo('GoodM','good_id','id')->field('id,name');

    }

    

    
}
