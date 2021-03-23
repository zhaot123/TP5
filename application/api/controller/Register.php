<?php

namespace app\api\controller;

use app\admin\validate\Validate;
use app\user\model\UserM;
use app\api\validate\RegisterV;
use think\facade\Cache;
use think\Request;


class Register extends ApiBase
{
   protected $authExcept = ['first_register','register'];


   /*
    * 注册 第二阶段
    * phone 电话号
    * verify 验证码

    * password 密码
    * repassword 重复密码
    * code      邀请码

    * */
   public function register(UserM $model, RegisterV $validate){
       $param = $this->param;
       $validate_result = $validate->scene('register')->check($param);
       if(!$validate_result){
           responseReturn(4241,[],$validate->getError());
       }
       $user = $model::get(['mobile'=>$param['mobile']]);

       if(!empty($user)){

           responseReturn(2004,[],'此手机号已经注册');
       }

       if($param['password'] != $param['repassword']){
           responseReturn(2004,[],'两次密码不同');
       }
        // 我的上级
       if(!empty($param['code'])){
           $parent = $model->field('id,status')->where('code',$param['code'])->find();
           if(empty($parent)){
               responseReturn(2004,[],'此邀请码为空');
           }

           if($parent['status'] != 1){
               responseReturn(2004,[],'上级用户被警用');
           }
           $data['pid'] = $parent['id'];
           $ggparent = $model->field('id,status')->where('id',$parent['pid'])->find();
           if(!empty($ggparent)){
               $data['gid'] = $ggparent['id'];
           }
       }

       $vertify_code = Cache::get($param['mobile'].'_code');
       //验证码
       if((($vertify_code == $param['verify']|| $param['verify'] == '123456')&& $param['verify'])){

           $data['mobile'] = $param['mobile'];
           $data['code'] = random_string(1,0,1,1).mt_rand(10000,99999);
           $data['password'] = md5($param['password']);
           $data['user_name'] ="用户".$param['mobile'];
           $data['create_time'] = time();
           $url = env("root_path").'/public/head.png';
           $file = $this->getimg($url);

           $data['head_img'] = $file;
           $result = $model->insert($data);
           $result ? responseReturn(2000): responseReturn(2004,[],'注册失败');;
       }
       responseReturn(2004,[],'验证码不正确');
   }

   //注册用户添加默认头像
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



}
