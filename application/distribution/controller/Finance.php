<?php
/**
 * 用户控制器
 */

namespace app\distribution\controller;


use app\distribution\model\FinanceM;
use app\api\model\UserM;
use app\distribution\model\WithdralM;
use think\Request;
use app\admin\controller\Controller;


class Finance extends Controller
{

    //列表
    public function index(Request $request, FinanceM $model)
    {

        $param = $request->param();
        $model  = $model->scope('where', $param);
        $data = $model->order('id desc')->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);

        //关键词，排序等赋值
        $this->assign($request->get());
        $this->assign([
            'data'  => $data,
            'page'  => $data->render(),
            'total' => $data->total(),

        ]);
        return $this->fetch();
    }




}
