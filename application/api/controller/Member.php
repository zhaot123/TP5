<?php

namespace app\api\controller;

/**
 *
 *
 *                        _oo0oo_
 *                       o8888888o
 *                       88" . "88
 *                       (| -_- |)
 *                       0\  =  /0
 *                     ___/`---'\___
 *                   .' \\|     |// '.
 *                  / \\|||  :  |||// \
 *                 / _||||| -:- |||||- \
 *                |   | \\\  - /// |   |
 *                | \_|  ''\---/''  |_/ |
 *                \  .-\__  '-'  ___/-. /
 *              ___'. .'  /--.--\  `. .'___
 *           ."" '<  `.___\_<|>_/___.' >' "".
 *          | | :  `- \`.;`\ _ /`;.`/ - ` : | |
 *          \  \ `_.   \_ __\ /__ _/   .-` /  /
 *      =====`-.____`.___ \_____/___.-`___.-'=====
 *                        `=---='
 * 
 * 
 *      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * 
 *            佛祖保佑       永不宕机     永无BUG
 * 
 *        佛曰:  
 *                写字楼里写字间，写字间里程序员；  
 *                程序人员写程序，又拿程序换酒钱。  
 *                酒醒只在网上坐，酒醉还来网下眠；  
 *                酒醉酒醒日复日，网上网下年复年。  
 *                但愿老死电脑间，不愿鞠躬老板前；  
 *                奔驰宝马贵者趣，公交自行程序员。  
 *                别人笑我忒疯癫，我笑自己命太贱；  
 *                不见满街漂亮妹，哪个归得程序员？
 */
use app\api\model\CollectionM;
use app\api\model\FootprintM;
use app\api\model\ShopCartM;
use app\api\validate\AddressV;
use app\distribution\model\FinanceM;
use app\distribution\model\WithdralM;
use app\user\model\DistributionSettingM;
use app\user\model\UserAddressM;
use app\user\model\UserM;
use app\api\validate\MemberV;

use think\cache\driver\Redis;
use think\Exception;
use think\facade\Cache;

class Member extends ApiBase
{
    protected $authExcept = ['withdrawParam','upload','cancel_collection','invitation_rule',
    'level_rule','reward'];

    /**
     * 用户个人中心/我的资料
     * @param UserM $model
     * param uid 用户id
     * param
     */
    public function person(UserM $model){

        $param = $this->param;
        $user = $this->user_info;

        $user['head_img'] = $this->getImgUrl($user['head_img']);
        $result['user'] = $user;
        $result?responseReturn(2000,$result,'成功'):responseReturn(2004,[],'失败');

    }

    /*
   * 修改用户名操作
   * param uid 用户id
   * param user_name 用户名称
   * param head_img 用户名称

   * */
    public function updateUserInfo(){

        $param = $this->param;
        $user = $this->user_info;
        try {
            $result = $user->save($param);
            responseReturn(2000);
        }catch (Exception $e){
            responseReturn(2004,[],$e->getMessage());
        }
        responseReturn(2004,[],$e->getMessage());

    }



    /*
     * 修改密码
     * password     必填    密码
     * repassword   必填    重复密码
     * originalPass 必填    原密码
     * token
     * */
    public function editPassword(){

        $param = $this->param;
        $user  = $this->user_info;
        if($param['password'] != $param['repassword']){
            responseReturn(2004,[],'两次密码不一致');
        }
        if($user['password'] != md5($param['originalPass'])){
            responseReturn(2004,[],'原密码错误');
        }
        $data['password'] = md5($param['password']);
        $result = $user->save($data);
        $result ? responseReturn(2000): responseReturn(2004);

    }
    /*
     * 我的钱包
     * token
     * */
    public function myWallet(WithdralM $model){

        $user = $this->user_info;

        $withdraw = $model->where('user_id',$user['id'])->where('status',1)->sum('price');
        $result['withdrawing'] = $withdraw;
        $result['money'] = $user['money'];
        $result['withdrawPrice'] = $user['withdraw_price'];

        $result ? responseReturn(2000,$result): responseReturn(2004);
    }

    /*
     * 提现参数
     * */
    public function withdrawParam(DistributionSettingM $model){

        $redis = new Redis();
        $result['oneChange'] = $redis->get('oneChange');
        if(empty($result['oneChange'])){
            $result['oneChange'] = $model->filed('oneChange')->get(1)['onChange'];
        }
        $result['meetMoney']= $redis->get('meetMoney');
        if(empty($result['meetMoney'])){
            $result['meetMoney'] = $model->filed('meetMoney')->get(1)['meetMoney'];
        }
        $user = $this->user_info;
        $result['true_name'] = $user['true_name'];
        $result['bank_name'] = $user['bank_name'];
        $result['bank_card'] = $user['bank_card'];
        $result['money'] = $user['money'];
        responseReturn(2000,$result);
    }


    /*
     * 修改头像
     * head_img    必填  头像路径
     * token       必填  token
     * */
    public function  updateImg(UserM $model){

        $param = $this->param;
        $user  = $this->user_info;
        $result = $user->save(['head_img'=>$param['head_img']]);
        $result ? responseReturn(2000, $result) : responseReturn(2004);
    }
    /*
     *提现
     * token
     * price   必须 提现多少钱
     * */
    public function  withdraw(WithdralM $model,DistributionSettingM $DM){

        $param = $this->param;
        $user = $this->user_info;
        $redis = new Redis();
        $cache = $redis->get('withdrawCache_'.$user['id']);
        if(!empty($cache)){
            responseReturn(2004,(object)[],'请勿重复点击');
        }
        $redis->set('withdrawCache_'.$user['id'],2,5);
        $meetMoney = $redis->get('meetMoney');
        if($user['money']< $meetMoney){
            responseReturn(2004,(object)[],'金额不足');
        }
        $count =  $model->where('user_id',$user['id'])->where('status',1)->count();
        if($count>1){
            responseReturn(2004,(object)[],'您有一笔提现正在进行');
        }
        $rate = $redis->get('rate_withdraw');
        if(empty($rate)){
            $rate = $DM->field('rate_withdraw')->get(1)['rate_withdraw'];
            $redis->set('rate_withdraw',$rate);
        }
        $data = [
            'bank_name'=>$user['bank_name'],
            'true_name'=>$user['true_name'],
            'bank_card'=>$user['bank_card'],
            'id_card'=>$user['id_card'],
            'price'=>$param['price'],
            'price_true'=>$param['price'] * $rate,

            'create_time'=>time(),
            'type'=>3,
            'user_id'=>$user['id'],
        ];
        $result = $model->create($data);
        $user->setDec('money',$param['price']);
        $result ? responseReturn(2000) : responseReturn(2004);
    }

    /*
     * 金豆明细
     * page
     * pagesize
     * token
     * */
    public function moneyLog(FinanceM $model){

        $user = $this->user_info;
        $pagesize = $this->pagesize;
        $startpage = $this->startpage;
        $result = $model->field('id,money_type,status,create_time,money_type,money,last_money,content')->where('user_id',$user['id'])->limit($startpage,$pagesize)->order('id desc')->select();
        $result ? responseReturn(2000,$result) : responseReturn(2004);
    }



        /*
     * 我的组
     * token
      page
        pagesize
        type  1 一级 2  二级
     * */
    public function myGroup(UserM $model){

        $user = $this->user_info;
        $pagesize = $this->pagesize;
        $startpage = $this->startpage;
        $param = $this->param;
        $taskSum = $model->whereOr('pid',$user['id'])->whereOr('gid',$user['id'])->sum('task_num');
        $type = isset($param['type']) ? $param['type'] : 1;
        if($type  == 1){
            $myList = $model->where('pid',$user['id'])->field('user_name,true_name,mobile,money,is_real,create_time,is_check')->limit($startpage,$pagesize)->order('id desc')->select();

        }
        else{

            $myList = $model->where('gid',$user['id'])->field('user_name,true_name,mobile,money,is_real,create_time,is_check')->limit($startpage,$pagesize)->order('id desc')->select();
        }

        $result['taskSum'] = $taskSum;
        $result['myList'] = $myList;
        $result['firstSum'] = $model->where('pid',$user['id'])->count();

        $result['secondSum'] = $model->where('gid',$user['id'])->count();
        $result['money'] = $user['money'];
        $result ? responseReturn(2000,$result): responseReturn(2004);
    }

    /*
     * 用接单流程和奖励说明
     *type 1   奖励说明 2 接单流程
     * */
    public function  reward(DistributionSettingM $model){

        $param = $this->param;
        $type = isset($param['type']) ? $param['type'] : 1;
        if($type == 1){
            $result = $model->field('reward_show')->get(1);
        }else{
            $result = $model->field('get_order reward_show')->get(1);
        }

        $result ? responseReturn(2000,$result): responseReturn(2004);

    }

    /*
     * 我的二维码
     * token
     * */
    public function myQrcode(){

        $user = $this->user_info;
        if(empty($user['qrcode'])){
            $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
            $url = $protocol."47.92.235.179:10042/api/classroom/dealewm?id=".$user['id'];

            $filename = "uploads/qrcode/".$user['id'].'.png';
            $project = new \PHPQRCode\QRcode();
            $level = 3;
            $size = 4;
            $errorCorrectionLevel = intval($level);
            //生成图片大小  
            $matrixPointSize = intval($size);
            $project::png($url, $filename, $errorCorrectionLevel, $matrixPointSize, 2);
            if ($filename){
                //添加二维码
                //生成成功 返回并且保存
                $result = $user->save(['qrcode'=>'/'.$filename]);
                $usep['code'] = $user['code'];
                $usep['qrcode'] = $this->getImgUrl('/'.$filename);
                $usep['qrcode_url'] = $url;
                $usep ? responseReturn(2000,$usep): responseReturn(2004);
            }else{
                responseReturn(2004,(object)[],'生成失败');
            }
        }

        //如果不为空
        $usep['code'] = $user['code'];
        $usep['qrcode'] = $this->getImgUrl($user['qrcode']);
        $usep['qrcode_url'] = $user['qrcode_url'];
        $usep ? responseReturn(2000,$usep): responseReturn(2004);
    }



}

