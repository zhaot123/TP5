<?php
/**
 * 商品控制器
 */

namespace app\shop\controller;



use app\shop\model\EvaluationM;
use think\Request;
use app\admin\controller\Controller;


class Evaluation extends Controller
{

    //列表
    public function index(Request $request, EvaluationM $model)
    {
        $param = $request->param();
        $model = $model->scope('where', $param);

        $data = $model->paginate($this->admin['per_page'], false, ['query' => $request->get()]);

        //关键词，排序等赋值
        $this->assign($request->get());

        $this->assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),

        ]);
        return $this->fetch();
    }
//修改
    public function edit($id, Request $request, EvaluationM $model)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();

            $result = $data->save($param);
            return $result ? success() : error();
        }

        $this->assign([
            'data' => $data,
        ]);
        return $this->fetch('add');
    }


    //删除
    public function del($id, EvaluationM $model)
    {


        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }


}
