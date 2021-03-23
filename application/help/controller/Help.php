<?php
/**
 * 文章表控制器
 */

namespace app\help\controller;

use app\help\model\HelpM;
use app\help\validate\HelpV;
use think\Request;
use app\admin\controller\Controller;

class Help extends Controller
{
    //列表
    public function index(Request $request, HelpM $model)
    {

        $param = $request->param();
        $model  = $model->scope('where', $param);
        $data = $model->field('id,help_name,status,create_time')->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
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
    public function add(Request $request, HelpM $model, HelpV $validate)
    {

        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            if (isset($param['help_content'])) {
                $param['help_content'] = $request->param(false)['help_content'];
            }

            //处理附件id上传
            $param['create_time'] = time();
            $result = $model::create($param);
            $url = URL_BACK;
            if(isset($param['_create']) && $param['_create']==1){
               $url = URL_RELOAD;
            }
            return $result ? success('添加成功',$url) : error();
        }


        $param           = $request->param();

        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, HelpM $model, HelpV $validate)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param           = $request->param();
            $param['help_content'] = $request->param(false)['help_content'];
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            $result = $data->save($param);
            return $result ? success() : error();
        }
        $this->assign([
            'data' => $data,
            ]);
        return $this->fetch('add');

    }
    //删除
    public function del($id, HelpM $model)
    {

            $result = $model->whereIn('id', $id)->delete();

        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    
}
