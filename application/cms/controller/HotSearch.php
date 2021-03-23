<?php
/**
 * 轮播图控制器
 */

namespace app\cms\controller;

use think\Request;
use app\admin\controller\Controller;
use app\cms\model\HotSearchM;


class HotSearch extends Controller
{

    //列表
    public function index(Request $request, HotSearchM $model)
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

    //添加
    public function add(Request $request, HotSearchM $model)
    {
        if ($request->isPost()) {
            $param = $request->param();
            $param['create_time'] = time();
            $result = $model::create($param);

            $url = URL_BACK;
            if (isset($param['_create']) && $param['_create'] == 1) {
                $url = URL_RELOAD;
            }

            return $result ? success('添加成功', $url) : error();
        }
        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, HotSearchM $model)
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
    public function del($id, HotSearchM $model)
    {

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //启用
    public function enable($id, HotSearchM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 1]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //禁用
    public function disable($id, HotSearchM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 0]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }


}
