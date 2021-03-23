<?php

namespace app\api\controller;

use app\admin\validate\Validate;
use app\api\model\GoodsM;
use app\api\model\SpecificationM;
use app\api\model\ShopCartM;
use app\api\model\CollectionM;
use app\api\model\HistoryM;
use app\api\model\SpecsM;
use app\api\validate\GoodV;

use app\help\model\HelpM;
use think\Request;

class Help extends ApiBase
{
   protected $authExcept = ['help','helpInfo'];

    /*
     * 帮助模块
     *
     * */
    public function help(HelpM $model){

        $result = $model->field('id,help_name,status,create_time,sort')->where('status',1)->order('sort desc,create_time desc')->all();
        $result ? responseReturn(2000,$result) :responseReturn(2004);

    }

    /*
     * 帮助详情
     * help_id     必填    帮助id
     * */
    public function helpInfo(HelpM $model){

        $param = $this->param;
        $result = $model::get($param['help_id']);

        $result ? responseReturn(2000,$result) :responseReturn(2004);
    }


}
