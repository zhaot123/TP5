<?php
/**
 * 轮播图控制器
 */

namespace app\message\controller;


use app\message\model\NoticeM;
use app\user\model\DistributionSettingM;
use think\Request;
use app\admin\controller\Controller;



class Agreement extends Controller
{

    //列表
    public function index(Request $request, DistributionSettingM $model)
    {
        $param = $request->param();


        $data = $model->field('agreement')->where('id',1)->find();
        if ($request->isPost()) {
            $param = $request->param();

            $result = $data->save($param);
            $result ? success('修改成功',URL_RELOAD):error();
        }

        //关键词，排序等赋值
        $this->assign($request->get());

        $this->assign([
            'data' => $data,

        ]);
        return $this->fetch();
    }

    public function know(Request $request, DistributionSettingM $model)
    {



        $data = $model->field('know')->where('id',1)->find();
        if ($request->isPost()) {
            $param = $request->param();

            $result = $data->save($param);
            $result ? success('修改成功',URL_RELOAD):error();
        }

        //关键词，排序等赋值
        $this->assign($request->get());

        $this->assign([
            'data' => $data,

        ]);
        return $this->fetch();
    }

}
