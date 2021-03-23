<?php
/**
 * 用户控制器
 */

namespace app\user\controller;

use app\admin\model\AdminUserM;
use app\api\controller\Message;
use app\distribution\model\FinanceM;
use app\message\model\MessageM;
use app\picture\model\PictureListM;
use app\picture\model\PictureM;
use PhpOffice\PhpSpreadsheet\Reader\Xls\MD5;
use think\Db;
use think\Request;
use app\admin\controller\Controller;
use app\user\model\UserM;
use app\user\model\UserLevelM;
use app\user\model\VipM;
use app\user\model\UserAccountM;
use app\user\model\UserAssetsM;
use app\user\validate\UserValidate;
use phpqrcode\QRcode;
use think\Session;


class User extends Controller
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
            /**/
            $user = UserM::get(['mobile'=>$param['mobile']]);
            if(!empty($user)){

                return error("用户手机号已经注册");
            }
            //处理头像上传
            $attachment_avatar = new \app\common\model\Attachment;
            //如果图片为空 上传本地图片
            if (!$_FILES['head_img']['name']) {
                $url = env("root_path").'/public/head.png';
                $file = $this->getimg($url);

                $param['head_img'] = $file;
            }else{$file_avatar       = $attachment_avatar->upload('head_img');

                if ($file_avatar) {
                    $param['head_img'] = $file_avatar->url;
                } else {
                    return error($attachment_avatar->getError());
                }
            }

            if(!empty($param['invitation'])){
                $user = UserM::get(['code'=>$param['invitation']]);
                if(empty($user)){
                    return error("此邀请码不存在用户");
                }
                $param['parent_id'] = $user['id'];
            }

            $param['code'] = random_string(6,1,1,1);
//            $co = UserM::get(['code'=>$param['code']]);
//            if($co){
//                $param['code'] = random_string(7,1,1,1);
//            }
            $param['create_time'] = time();
            $param['password'] = MD5($param['password']);

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

    //
    public function getimg($url)
    {
        $state = @file_get_contents($url,0,null,0,1);//获取网络资源的字符内容
        if($state){
            //当日文件夹名称
            $day = date("Ymd");
            $path = "./uploads/attachment/{$day}";
            //创建文件夹
            if(!is_dir($path)){
                mkdir(iconv("UTF-8", "GBK", $path),0777,true);
            }
            $filename = "./uploads/attachment/{$day}/".time().rand(1000,9999).'.png';//文件名称与路径
            ob_start();//打开输出
            readfile($url);//输出图片文件
            $img = ob_get_contents();//得到浏览器输出
            ob_end_clean();//清除输出并关闭
            $size = strlen($img);//得到图片大小
            $fp2 = @fopen($filename, "a");
            fwrite($fp2, $img);//向当前目录写入图片文件，并重新命名
            fclose($fp2);
            //截取去.
            return substr($filename,1,200);
        } else{
            return 0;
        }
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

            if(!empty($param['invitation'])){
                $parent = $model::field("id,code,pid,gid")->get(['code'=>$param['invitation']]);

                if(empty($parent)) {
                    return error("邀请码不存在");
                }
                $param['pid'] = $parent['id'];
                $param['gid'] = $parent['pid'];

            }
            if($param['money'] != $data['money']){

                $admin = AdminUserM::get($_SESSION['admin_user_id']);
                if($param['money'] >$data['money']){

                    $money_type = 1;

                }else{
                    $money_type = 2;
                }
                $content = '后台管理员'.$admin['username'].'将用户'.$data['mobile'].'积分修改为'.$param['money'];
                addfinance($data['id'],4,$content,$money_type,abs($data['money'] - $param['money'] ),0,$_SESSION['admin_user_id']);
            }


            //处理头像上传
            if (!empty($_FILES['head_img']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('head_img');
                if ($file_avatar) {
                    $param['head_img'] = $file_avatar->url;
                }
            }
            if (!empty($_FILES['pin_home']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('pin_home');
                if ($file_avatar) {
                    $param['pin_home'] = $file_avatar->url;
                }
            }
            if (!empty($_FILES['my_ali']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('my_ali');
                if ($file_avatar) {
                    $param['my_ali'] = $file_avatar->url;
                }
            }
            if (!empty($_FILES['ali_page']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('ali_page');
                if ($file_avatar) {
                    $param['ali_page'] = $file_avatar->url;
                }
            }
            if (!empty($_FILES['tao_eval']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('tao_eval');
                if ($file_avatar) {
                    $param['tao_eval'] = $file_avatar->url;
                }
            }
            if (!empty($_FILES['bank_person']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('bank_person');
                if ($file_avatar) {
                    $param['bank_person'] = $file_avatar->url;
                }
            }
            if (!empty($_FILES['bank_img']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('bank_img');
                if ($file_avatar) {
                    $param['bank_img'] = $file_avatar->url;
                }
            }

            if(!empty($param['password']) && $param['password'] != $data['password']){
                $param['password'] = MD5($param['password']);
            }
            $param['update_time'] = time();


            $result = $data->save($param);
            return $result ? success() : error();
        }
        $this->assign("data",$data);



        return $this->fetch('edit');

    }

    //删除
    public function del($id, UserM $model)
    {
        if (count($model->noDeletionId) > 0) {
            if (is_array($id)) {
                if (array_intersect($model->noDeletionId, $id)) {
                    return error('ID为' . implode(',', $model->noDeletionId) . '的数据无法删除');
                }
            } else if (in_array($id, $model->noDeletionId)) {
                return error('ID为' . $id . '的数据无法删除');
            }
        }

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

    //添加账户
    public function addAccount($id,Request $request, UserAccountM $model){


        if ($request->isPost()) {
            $param           = $request->param();

            if($param['is_default'] == 1)
            {
                $account = $model::all()->where("user_id",$id);
                foreach($account as $key=>$value){
                    $data['is_default'] = 0;
                    $account[$key]->save($data);
                }
            }
            $url = URL_BACK;
            if (isset($param['_create']) && $param['_create'] == 1) {
                $url = URL_RELOAD;
            }
            $param['user_id'] = $id;
            $param['mobile'] = $param['user_mobile'];
            $param['create_time'] = date("Y-m-d H:i:s");
            $param['type'] = 1;
            unset($param['id']);

            $result = $model::create($param);


            return $result ? success('添加成功', $url) : error();
        }

        return $this->fetch();
    }


    //发送信息
    public function send(Request $request,MessageM $model){

        $id = $request->param('id');
        $message = $request->param('texts');
        $title = $request->param('title');

        foreach($id as $k=>$v){
            $data['title'] = $title;
            $data['content'] = $message;
            $data['admin_id'] = $_SESSION['admin_user_id'];
            $data['user_id'] = $v;
            $data['create_time'] = time();
            $result = $model->insert($data);
        }
        return $result ? 1 : 2;

    }













}
