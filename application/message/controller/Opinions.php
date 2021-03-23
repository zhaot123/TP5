<?php
/**
 * 用户控制器
 */

namespace app\message\controller;

use think\Request;
use app\admin\controller\Controller;
use app\user\model\UserM;
use app\message\model\OpinionsM;

use think\Db;

class Opinions extends Controller
{

    //列表
    public function index(Request $request, OpinionsM $model)
    {

        $param = $request->param();
        $model = $model->with('user')->scope('where', $param);

        $data = $model->paginate($this->admin['per_page'], false, ['query' => $request->get()]);
        //关键词，排序等赋值
        $this->assign($request->get());
        $page = $data->render();
        $total = $data->total();
        $data  = $data->all();
        foreach($data as $k=>$v){
            if(strlen($v['content']) > 16){
                $data[$k]['content'] =mb_substr($v['content'],0,16).'...';
            }

        }

        $this->assign([
            'data'  => $data,
            'page'  => $page ,
            'total' => $total,
        ]);

        return $this->fetch();
    }

    public function edit($id, Request $request, OpinionsM $model)
    {


        $data = $model::get($id);
        $is_read['is_read'] = 1;
        $data->save($is_read);
        if ($request->isPost()) {
            $param           = $request->param();
            //处理头像上传

            $result = $data->save($param);
            return $result ? success() : error();
        }
        $this->assign("data",$data);



        return $this->fetch('edit');

    }

    //删除
    public function del($id, UserM $model)
    {


        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }


//    }



}
