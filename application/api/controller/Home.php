<?php

namespace app\api\controller;

use app\admin\validate\Validate;


use app\api\model\BanksM;
use app\api\model\MemberAudit;
use app\api\model\MemberAuditM;
use app\api\model\MemberPinM;
use app\api\model\UserM;
use app\cms\model\ArticleM;
use app\common\model\Attachment;
use app\message\model\NoticeM;
use app\message\model\SlideM;

use app\shop\model\GoodM;
use app\shop\model\OrderM;
use app\user\model\DistributionSettingM;
use think\cache\driver\Redis;
use think\Request;

class Home extends ApiBase
{
   protected $authExcept = ['home','noticeList','noticeInfo','articleList','articleInfo','goodList','workInfo','searchList','pictureList','orderInfo','bankList','agreement'];


    /*
     *home
     *
     * AA AAA AA
     *  轮播 公告  分类  画家
     *  */

    public function home(SlideM $SM,ArticleM $AM,GoodM $GM,NoticeM $MM){

        $slide = $SM->field('id,title,attachment,sort,create_time')->where('status',1)->order('sort desc,create_time desc ')->limit(0,5)->select();

        foreach($slide as $k=>$v){
            $slide[$k]['attachment'] = $this->getImgUrl($v['attachment']);
        }
        $notice = $MM->field('id,title,content,status')->where('status',1)->order('sort desc,id desc')->select();

        $result['slide'] = $slide;
        $result['notice'] = $notice;
        $result ? responseReturn(2000,$result) : responseReturn(2004);

    }

    /*
     * 公告详情
     * id         必须   公告详情
     * */
    public function noticeInfo(NoticeM $model){
        $param = $this->param;
        $result = $model->where('id',$param['id'])->find();
        $result ? responseReturn(2000,$result) : responseReturn(2004);
    }



    /*
     * 填写信息
     * token
     *
     * true_name    必须  真实姓名
     * sex          必须  1男2女
     * age                年龄
     * taobao_name        淘宝名称
     * bank_name          银行名称
     * bank_card          银行卡号
     * id_card            身份证号
     * bank_person        手持身份证
     * tao_eval
     * ali_page
     * my_ali
     * */
    public function fillIn(MemberAuditM $model,UserM $UM,Sms $sms){

        $user = $this->user_info;
        if($user['is_real'] != 0){
            responseReturn(2004,[],'审核状态错误');
        }
        $param = $this->param;
        $check = $sms ->checkPerson($param['bank_card'],$param['id_card'],$user['mobile'],$param['true_name']);
        $check = json_decode($check,true);


        if($check['code'] != 200){
            responseReturn(2004,[],$check['msg']);
        }
        $data = [
            'user_id'=>$user['id'],
            'true_name'=>$param['true_name'],
            'sex'=>$param['sex'],
            'age'=>$param['age'],
            'taobao_name'=>$param['taobao_name'],
            'bank_name'=>$param['bank_name'],
            'bank_card'=>$param['bank_card'],
            'id_card'=>$param['id_card'],

        ];
        $attachment_avatar = new \app\common\model\Attachment;
        $bank_person       = $attachment_avatar->upload('bank_person');
        $tao_eval       = $attachment_avatar->upload('tao_eval');
        $ali_page       = $attachment_avatar->upload('ali_page');
        $my_ali       = $attachment_avatar->upload('my_ali');
        if($bank_person && $tao_eval && $ali_page && $my_ali){
            $data['bank_person'] = $bank_person->url;
            $data['tao_eval'] = $tao_eval->url;
            $data['ali_page'] = $ali_page->url;
            $data['my_ali'] = $my_ali->url;
        }else{
            responseReturn(2004,[],'文件错误');
        }
        $result = $model->create($data);
        if($result){
           // 后台审核
            $result = $user->save(['is_real'=>2]);
            $result ? responseReturn(2000,$result) : responseReturn(2004);
        }
        responseReturn(2004);

    }

    /*
    * 单图片上传接口
    * file  文件
    * */
    public function upload($file ='file'){

        $file = request()->file($file);
        if(empty($file)){
            responseReturn(4221);
        }
        $attachment_avatar = new \app\common\model\Attachment;
        $file_avatar       = $attachment_avatar->upload('file');
        $data = [
            'img_url' => $file_avatar->url,
            'use_url' => $this->getImgUrl($file_avatar->url),
        ];
        if ($file_avatar) {

            responseReturn(2000, $data);
          } else {
            responseReturn(2004,[],$attachment_avatar->getError());
        }


    }


    /*
     * 抢单操作
     *   1 o
     * task_type  选填   0默认全部 1精刷单 2流量单 3 隔日单
     * type       必须   默认1 淘宝任务 2拼多多任务
     *
     * */
    public function robOrder(OrderM $model){

        $redis = new Redis();


        $param = $this->param;
        $later = $redis->get('later');
        $maxDayOrder = $redis->get('maxDayOrder');
        $maxDayCancelOrder = $redis->get('maxDayCancelOrder');
        $user = $this->user_info;
        if($user['day_cancel'] >= $maxDayCancelOrder && $maxDayCancelOrder !=0){
            responseReturn(2004,(object)[],'您在今天取消的订单次数太多,今天不能在接单了');
        }
        if($user['day_order'] >= $maxDayOrder){
            responseReturn(2004,(object)[],'超过今日抢单上限');
        }
        if(!empty($later)){
            $number = mt_rand(0,100);
            if($number > $later){
                responseReturn(2002, (object)[],'抢单失败,重新抢单');
            }
        }
        $type = isset($param['type']) ?  $param['type'] : 1;
        $taskType = isset($param['taskType']) ? $param['taskType'] : '' ;
        $where = array();
        $whereIn = array();
//        if($type == 1){
            //淘宝订单
            $where['type'] = $type;
            if(!empty($taskType)){
                $where['task_type'] = $type;
            }
            //查询redis 记录下的我买过的店铺
            $shops = $redis->get('user_'.$user['id']);
            $array =array();

            if(!empty($shops)){
                $array = explode(',',$shops);
                $whereIn[] = array('shop_id','not in',$array);

            }

            $data = $model->field('id,total_price,good_img,status,create_time,shop_id')->where($where)->where($whereIn)->where('status',1)->orderRaw('rand()')->find();

            if(empty($data)){
                responseReturn(2004, (object)[],'暂无订单可抢!');
            }
            //查询此单是否存在于缓存中
            if($redis->lLen('order_'.$data['id']) == 0){
                $redis->rPush('order_'.$data['id'],1);
            }else{
                responseReturn(2002, (object)[],'抢单失败,重新抢单');
            }

            if($data['status'] == 1){
                $save = [
                    'buy_id' => $user['id'],
                    'status' => 2,
                    'pipei_time' => time(),
                ];
                $result = $data->save($save);
                $array[] = $data['shop_id'];
                $res = implode(',',$array);
                $redis->set('user_'.$user['id'],$res);
                $redis->rm('order_'.$data['id']);

                $result ?  responseReturn(2000, $data,'抢单成功') :  responseReturn(2004, (object)[],'抢单失败');
            }
            responseReturn(2004, (object)[],'抢单失败');




//        }else{
//            //拼多多订单
//            $where['type'] = $type;
//            if(!empty($taskType)){
//                $where['task_type'] = $type;
//            }
//            //查询redis 记录下的我买过的店铺
//            $shops = $redis->get('user_'.$user['id']);
//            $array =array();
//
//            if(!empty($shops)){
//                $array = explode(',',$shops);
//                $whereIn[] = array('shop_id','not in',$array);
//
//            }
//
//            $data = $model->field('id,total_price,good_img,status,create_time,shop_id')->where($where)->where($whereIn)->where('status',1)->orderRaw('rand()')->find();
//
//            if(empty($data)){
//                responseReturn(2000, [],'暂无订单可抢!');
//            }
//            //查询此单是否存在于缓存中
//            if($redis->lLen('order_'.$data['id']) == 0){
//                $redis->rPush('order_'.$data['id'],1);
//            }else{
//                responseReturn(2002, [],'抢单失败,重新抢单1');
//            }
//
//            if($data['status'] == 1){
//                $save = [
//                    'buy_id' => $user['id'],
//                    'status' => 2,
//                ];
//                $result = $data->save($save);
//                $array[] = $data['shop_id'];
//                $res = implode(',',$array);
//                $redis->set('user_'.$user['id'],$res);
//                $redis->rm('order_'.$data['id']);
//                $result ?  responseReturn(2000, [],'抢单成功') :  responseReturn(2004, [],'抢单失败');
//            }
//            responseReturn(2004, [],'抢单失败');
//
//
//
//
//        }

    }

    /*
     * 银行列表
     * */
    public function bankList(BanksM $model){

        $bankList = $model->where('status',1)->select();
        $bankList ? responseReturn(2000,$bankList) : responseReturn(2004);

    }

    /*
     * 平台协议/隐私协议
     * type   1 平台协议 2 隐私协议
     * */
    public function agreement(DistributionSettingM $model){

        $param = $this->param;
        $type = isset($param['type']) ? $param['type'] : 1;
        $field =  '';
        if($type == 1){
            $field = 'privacy';
        }else{
            $field = 'user';
        }
        $result = $model->field($field.' agreement')->get(1);
        $result ? responseReturn(2000,$result) : responseReturn(2004);
    }

    /*
     * 拼多多认证
     * pin_name
     * pin_home
     * token
     * */
    public function pinAudit(MemberPinM $model){

        $param = $this->param;
        $user = $this->user_info;
        if($user['is_pin'] != 0){
            responseReturn(2004,[],'认证中/已认证');
        }
        $attachment_avatar = new \app\common\model\Attachment;
        $file_avatar       = $attachment_avatar->upload('pin_home');
        if ($file_avatar) {
            $param['pin_home'] = $file_avatar->url;
            $result = $model->create($param);
            $user->save(['is_pin'=>1]);
            $result ?  responseReturn(2000): responseReturn(2004);
        } else {
            responseReturn(2004,[],$attachment_avatar->getError());
        }
    }

    /*
     * 公告列表
     *  page
     * pagesize
     * */
    public function noticeList(NoticeM $model){

        $startPage = $this->startpage;
        $pagesize = $this->pagesize;
        $result = $model->where('status',1)->limit($startPage,$pagesize)->select();
        $result ?  responseReturn(2000,$result): responseReturn(2004);
    }




}
