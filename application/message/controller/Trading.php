<?php
/**
 * 用户控制器
 */

namespace app\trading\controller;

use think\Request;
use app\admin\controller\Controller;
use app\user\model\UserM;
use app\user\model\TradingM;
use app\user\validate\UserValidate;
use think\Db;

class Trading extends Controller
{

    //列表
    public function index(Request $request, UserM $model)
    {

        $param = $request->param();
        $model = $model->with('user_level')->scope('where', $param);
        $data = $model->paginate($this->admin['per_page'], false, ['query' => $request->get()]);
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
    public function add(Request $request, UserM $model, UserValidate $validate)
    {
        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            //处理头像上传
            $attachment_avatar = new \app\common\model\Attachment;
            $file_avatar       = $attachment_avatar->upload('avatar');
            if ($file_avatar) {
                $param['avatar'] = $file_avatar->url;
            } else {
                return error($attachment_avatar->getError());
            }

            $param['add_time'] = time();
            $result = $model::create($param);

            $url = URL_BACK;
            if (isset($param['_create']) && $param['_create'] == 1) {
                $url = URL_RELOAD;
            }

            return $result ? success('添加成功', $url) : error();
        }

        $this->assign([
            'user_level_list' => UserLevelM::all(),

        ]);



        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, UserM $model, UserValidate $validate)
    {

//        return 1;
        $data = $model::get($id);
        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            //处理头像上传
            if (!empty($_FILES['avatar']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('avatar');
                if ($file_avatar) {
                    $param['avatar'] = $file_avatar->url;
                }
            }


            $result = $data->save($param);
            return $result ? success() : error();
        }
        $this->assign("data",$data);
        $this->assign([

            'user_level_list' => UserLevelM::all(),

        ]);


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

    //启用
    public function enable($id, UserM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 1]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }


//禁用
    public function disable($id, UserM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 0]);
        return $result ? success('操作成功', URL_RELOAD) : error();
}


//    //start
//    //添加
//    public function add(){
//
//        if(request()->isPost()){
//
//           $request  = request()->post();
//           $data['level'] =$request['level'] ;
//           $data['ture_name'] =$request['ture_name'] ;
//           $data['nick_name'] =$request['nick_name'] ;
//           $data['mobile'] =$request['mobile'] ;
//           $data['password'] =md5($request['password']) ;
//           $data['account'] =($request['account']) ;
//           $file = request()->file('avatar');
//           if(empty($file)){
//               return $this->error("图片未上传");
//           }
//           // 移动到框架应用根目录ROOT_PATH 和DS 为什么不好使
//           $info = $file->validate(['ext'=>'jpg,jpeg,png,gif'])->move($_SERVER['DOCUMENT_ROOT'].'/user');
//           if($info){
//
//               $filename = $info->getSaveName();
//               $data['avatar'] = 'user/'.$filename;
//           }
//           $data['add_time'] = time();
//
//           $res = Db::name("user") ->insert($data);
//           return $res ? success('操作成功', URL_RELOAD) : error();
//        }
//        $level = Db::name("Level") ->field("id,name")->where("status",1)->select();
//        $this->assign("user_level_list",$level);
//        return $this->fetch();
//
//    }
//
//    //修改
//    public function edit(){
//
//        $id = input("id");
//        if(request()->isPost()){
//
//            $request  = request()->post();
//            $data['level'] =$request['level'] ;
//            $data['ture_name'] =$request['ture_name'] ;
//            $data['nick_name'] =$request['nick_name'] ;
//            $data['mobile'] =$request['mobile'] ;
//            $data['password'] =md5($request['password']) ;
//            $data['account'] =($request['account']) ;
//            $file = request()->file('avatar');
//
//            if(!empty($file)) {
//                //删除原有文件
//                unlink($_SERVER['DOCUMENT_ROOT'].'/public/user'.$data['avatars']);
//                $info = $file->validate(['ext'=>'jpg,jpeg,png,gif'])->move($_SERVER['DOCUMENT_ROOT'].'/user');
//            }
//            // 移动到框架应用根目录ROOT_PATH 和DS 为什么不好使
//
//            if($info){
//
//                $filename = $info->getSaveName();
//                $data['avatar'] = 'user/'.$filename;
//            }
//
//
//            $res = Db::name("user") ->where("id",$request['id'])->update($data);
//            return $res ? success('操作成功', URL_RELOAD) : error();
//        }
//        $user = Db::name("user")->where("id",$id)->find();
////        $user['avatar'] = $_SERVER['DOCUMENT_ROOT'].'/'.$user['avatar'];
////        dump($user);
//        $level = Db::name("Level") ->field("id,name")->where("status",1)->select();
//        $this->assign("user_level_list",$level);
//        $this->assign("data",$user);
//        $this->assign("id",$id);
//        return $this->fetch();
//
//    }
//
//    //
//    public function del(){
//
//        $id = input("id");
//        if(is_array($id)){
//            foreach($id as $v){
//                $res = Db::name("User") ->where("id",$v)->update(['status'=>'3']);
//            }
//            return $res ? success('操作成功', URL_RELOAD) : error();
//        }
//        $res  =Db::name("User") ->where("id",$id)->update(['status'=>'3']);
//        return $res ? success('操作成功', URL_RELOAD) : error();
//
//    }



}
