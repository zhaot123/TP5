<?php
/**
 * 商品模型
 */

namespace app\shop\model;

use app\admin\model\Model;
use app\user\model\UserM;


class EvaluationM extends Model
{

    protected $name = 'evaluation';
    protected $type = ['create_time' => 'timestamp:Y-m-d H:i',];
    protected $searchField = ['keywords'];

    public function user()
    {
        return $this->belongsTo(UserM::class,"user_id","id")->field('id,mobile,user_name');
    }



}
