<?php
/**
 * 文章表控制器
 */

namespace app\help\controller;

use app\help\model\ComplaintsM;
use app\help\model\HelpM;
use app\help\validate\HelpV;
use app\picture\model\PictureM;
use think\Request;
use app\admin\controller\Controller;

class Complaints extends Controller
{
    //列表
    public function complaints(Request $request, ComplaintsM $model)
    {

        $param = $request->param();
        $model  = $model->scope('where', $param);
        $data = $model->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
        //关键词，排序等赋值
        $this->assign($request->get());
        $this->assign([
            'data'  => $data,
            'page'  => $data->render(),
            'total' => $data->total(),

        ]);
        return $this->fetch();
    }
    public function deal($id,ComplaintsM $model,PictureM $PM){

        $complaints = $model->get($id);
        $result = $model->where('id',$id)->update(['admin_id'=>$_SESSION['admin_user_id']]);
        $PM->where('id',$complaints['order_id'])->update(['is_complaints'=>2]);
        return $result ? success('操作成功', URL_RELOAD) : error();

    }

    //修改
    public function edit($id, Request $request, ComplaintsM $model)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param           = $request->param();


            $result = $data->save($param);
            return $result ? success() : error();
        }
        $this->assign([
            'data' => $data,
        ]);
        return $this->fetch('add');

    }


    
}
