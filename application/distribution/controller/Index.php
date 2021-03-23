<?php
/**
 * 用户控制器
 */

namespace app\distribution\controller;


use app\distribution\validate\IndexV;
use app\user\model\DistributionSettingM;
use app\user\model\UserM;
use think\cache\driver\Redis;
use think\Request;
use app\admin\controller\Controller;
use app\message\model\MessageM;

class Index extends Controller
{

    //列表
    public function index(Request $request, DistributionSettingM $model,IndexV $validate)
    {

        $param = $request->param();
        //关键词，排序等赋值\
        $data = $model::get(1);
        $redis = new Redis();
        if ($request->isPost()) {
            $param           = $request->param();
            if (!empty($_FILES['requirement']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('requirement');
                if ($file_avatar) {
                    $param['requirement'] = $file_avatar->url;
                    $redis->set('setting_requirement',$param['requirement']);
                }
            }
            if (!empty($_FILES['ali_pay']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('ali_pay');
                if ($file_avatar) {
                    $param['ali_pay'] = $file_avatar->url;
                    $redis->set('setting_ali_pay',$param['ali_pay'] );
                }
            }
            if (!empty($_FILES['id_bank']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('id_bank');
                if ($file_avatar) {
                    $param['id_bank'] = $file_avatar->url;
                    $redis->set('setting_id_bank',$param['ali_pay'] );
                }
            }
            if (!empty($_FILES['real']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('real');
                if ($file_avatar) {
                    $param['real'] = $file_avatar->url;
                    $redis->set('setting_real',$param['real'] );
                }
            }
            if (!empty($_FILES['my_ali']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('my_ali');
                if ($file_avatar) {
                    $param['my_ali'] = $file_avatar->url;
                    $redis->set('setting_my_ali',$param['my_ali'] );
                }
            }
            //修改redis
            foreach($param as $k=>$v){
                $redis->set($k,$v);
            }

            $result = $data->save($param);
            return $result ? success('操作成功', URL_RELOAD) : error();
        }


        $this->assign([
            'data'  => $data,
        ]);
        return $this->fetch();
    }

    public function info(Request $request, DistributionSettingM $model,IndexV $validate)
    {


        //关键词，排序等赋值
        $data = $model::get(1);
        if ($request->isPost()) {
            $param           = $request->param();

            if (!empty($_FILES['wx_code']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('wx_code');
                if ($file_avatar) {
                    $param['wx_code'] = $file_avatar->url;
                }
            }
            if (!empty($_FILES['ali_code']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('ali_code');
                if ($file_avatar) {
                    $param['ali_code'] = $file_avatar->url;
                }
            }
            if (!empty($_FILES['yinl_code']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('yinl_code');
                if ($file_avatar) {
                    $param['yinl_code'] = $file_avatar->url;
                }
            }
            if (!empty($_FILES['download_code']['name'])) {
                $attachment_avatar = new \app\common\model\Attachment;
                $file_avatar       = $attachment_avatar->upload('download_code');
                if ($file_avatar) {
                    $param['download_code'] = $file_avatar->url;
                }
            }

            $result = $data->save($param);
            return $result ? success('操作成功', URL_RELOAD) : error();
        }
        $this->assign([
            'data'  => $data,
        ]);
        return $this->fetch();
    }


}
