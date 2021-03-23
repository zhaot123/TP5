<?php
/**
 * 订单详情控制器
 */

namespace app\shop\controller;

use think\Request;
use app\admin\controller\Controller;
use app\shop\model\OrderInfoM;

class OrderInfo extends Controller
{

    //列表
    public function index($id, Request $request, OrderInfoM $model)
    {
        $param = $request->param();
        $model  = $model->scope('where', $param);
        $data = $model->where(['order_id'=>$id])->select();
        //关键词，排序等赋值
        $this->assign($request->get());
        $this->assign([
            'data'  => $data,
        ]);
        return $this->fetch();
    }


}
