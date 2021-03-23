<?php
/**
 * 文章表控制器
 */

namespace app\cms\controller;

use think\Request;
use app\admin\controller\Controller;
use app\cms\model\ResultM;
use app\cms\model\CategoryM;


class Result extends Controller
{
    //列表
    public function index(Request $request, ResultM $model)
    {

        $param = $request->param();
        $where = array();
        if(!empty($param['type'])){
            $where['type'] = $param['type'];
        }
        $model  = $model->scope('where', $param);

        $data = $model->where($where)->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
        //关键词，排序等赋值
        $this->assign($request->get());
        $this->assign([
            'data'  => $data,
            'page'  => $data->render(),
            'total' => $data->total(),
        ]);
        return $this->fetch();
    }
    //添加
    public function add(Request $request, ResultM $model,CategoryM $categoryM)
    {
        if ($request->isPost()) {
            $param           = $request->param();
            if (isset($param['content'])) {
                $param['content'] = $request->param(false)['content'];
            }

            $result = $model::create($param);
            $url = URL_BACK;
            if(isset($param['_create']) && $param['_create']==1){
               $url = URL_RELOAD;
            }
            return $result ? success('添加成功',$url) : error();
        }
        $category = $categoryM->getListByWhere([],'id,name');//分类
        $this->assign([
            'category' => $category,
        ]);
        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, ResultM $model)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param           = $request->param();
            $param['content'] = $request->param(false)['content'];
            $result = $data->save($param);
            return $result ? success() : error();
        }

        $this->assign([
            'data' => $data,
            ]);
        return $this->fetch('add');

    }
    //删除
    public function del($id, ResultM $model)
    {
        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }
        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    
}
