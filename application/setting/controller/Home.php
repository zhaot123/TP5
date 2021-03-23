<?php
/**
 * 用户控制器
 */

namespace app\message\controller;

use app\user\model\UserM;
use think\Request;
use app\admin\controller\Controller;
use app\message\model\MessageM;

class Message extends Controller
{

    //列表
    public function index(Request $request, MessageM $model)
    {

        $param = $request->param();
        //关键词，排序等赋值\
        $where = array();
        $param['_order'] = "a.id";

        if(!empty($param['_select'])){
            $where[] =array('u.mobile','like',"%{$param['_select']}%");
        }
        $data = $model  ->alias("a")
                        ->join("Member u",'u.id = a.user_id')
                        ->field('a.*,u.user_name,u.mobile')
                        ->where($where)
                        ->order('create_time desc')
                        ->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
        $this->assign($request->get());
        $this->assign([
            'data'  => $data,
            'page'  => $data->render(),
            'total' => $data->total(),
        ]);
        return $this->fetch();
    }

    //添加
    public function add(Request $request, MessageM $model)
    {

        if ($request->isPost()) {
            $param           = $request->param();
            $array=array();
            $user = UserM::all();
            foreach($user as $key=>$value){
                $param['user_id'] = $value['id'];
                $param['create_time'] = time();
                $param['admin_id'] = $_SESSION['admin_user_id'];
                $message = MessageM::create($param);
                if(!$message){
                    $array[] = $value['id'];
                }
            }
            if(empty($array)){
                return success("添加成功");
            }else{
                return error();
            }

        }

        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, MessageM $model)
    {

//        return 1;
        $data = $model::get($id);

        if ($request->isPost()) {
            $param           = $request->param();

            $result = $data->save($param);
            return $result ? success() : error();
        }
        $this->assign("data",$data);
        return $this->fetch('edit');

    }

    //删除
    public function del($id, MessageM $model)
    {

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }




}
