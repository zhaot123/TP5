<?php

namespace app\api\controller;

use app\api\validate\MessageV;
use app\api\validate\UserV;
use app\distribution\model\FinanceM;
use app\distribution\model\WithdralM;
use app\picture\model\PictureListM;
use app\picture\model\PictureM;
use app\user\model\DistributionSettingM;
use app\user\model\UserLevelM;
use app\user\model\UserM;
use think\Request;
use think\Db;

class Distribution extends ApiBase
{
    protected $authExcept = ['withdrawPage'];

   /*
    * 分销中心
    * token
    * */
   public function distribution(DistributionSettingM $model,UserM $UM,PictureM $PM,FinanceM $FM,WithdralM $WM,UserLevelM $ULM)
    {


        $user = $this->user_info;
   
        $parent = $UM->field('id,user_name')->get($user['pid']);
        if(!empty($parent)){
            $user['p_username'] = $parent['user_name'];
        }else{
            $user['p_username'] = "";
        }
        if($user['level'] == 0){
            $user['level'] = "普通会员";
        }else{
            $level = $ULM->where('id',$user['level'])->find();
            $user['level'] = $level['name'];
        }

        $user['head_img'] = $this->getImgUrl($user['head_img']);
        //我的一级人员
        $all_user = $UM->whereOr('pid',$user['id'])->whereOr('ggid',$user['id'])->whereOr('gid',$user['id'])->column('id');
        $orderSum = $FM->where('type',1)->whereIn('by_id',$all_user)->sum('money');
        //佣金
        $financeSum = $FM->where('user_id',$user['id'])->where('type',1)->sum('money');
        //提现
        $withdrawSum = $WM->where('user_id',$user['id'])->where('status',2)->sum('price');
        $result['user'] = $user;
        $result['withdraw_price'] = $user['withdraw_price'];
        //未完成佣金 订单状态在2345里面的

		
        $level = $ULM->where('id',$user['level'])->find();
        $first = Db::name('member')->field('id')->where('pid',$user['id'])->where('delete_time',0)->select();
		
        foreach($first as $k1=>$v1){
            $first[$k1]['level'] = 1;
        }
        $second = Db::name('member')->field('id')->where('gid',$user['id'])->where('delete_time',0)->select();
		
		
        foreach($second as $k2=>$v3){
            $second[$k2]['level'] = 2;
        }
        $third = Db::name('member')->field('id')->where('ggid',$user['id'])->where('delete_time',0)->select();
        foreach($third as $k3=>$v3){
            $third[$k3]['level'] = 3;
        }
		
        //array 是我所有的下级 并且带着等级的
        $array= array_merge($first,$second,$third);
        $ids = array();
	
        foreach($array as $k4=>$v4){
            array_push($ids,$v4['id']);
        }

        $orders = $PM->whereIn('buy_id',$ids)->select();
        $sum = 0;

        foreach($orders as $kk=>$vv){
		
            $dist = 0;
            foreach($array as $k=>$v){

                if($v['id'] == $vv['buy_id']){
                    switch ($v['level']){

                        case 1:
                            $dist = $level['first_per'];
                            break;
                        case 2:
                            $dist = $level['second_per'];
                            break;
                        case 3:
                            $dist = $level['third_per'];
                            break;
                        default:
                            $dist = 0;
                            break;
                    }
                }
            }
            $sum += $vv['total_price']*$dist;
        }
        $result['remain_price'] = $sum;
        $result['financeSum'] = $financeSum;
        $result['orderSum'] = $orderSum;
        $result['withdrawSum'] = $withdrawSum;
        $result['peopleSum'] = sizeof($all_user);

        $result['downloadCode'] = $this->getImgUrl($model->field('download_code')->get(1)['download_code']);
        responseReturn(2000,$result);

    }
   /*
    * 提现页面
    * token
    * */
   public function withdrawPage(DistributionSettingM $DM){

       $user = $this->user_info;
       $result = $DM->field('withdraw_fee,withdraw_min')->find();
       $result['money'] = $user['money'];
       responseReturn(2000,$result);
   }

   /*
    * 添加提现
    * token
    * price   必填   提现金额
    * number  必填   提现号码
    * name    必填   提现名称
    * */
   public function  withdraw(WithdralM $model,DistributionSettingM $DM){

       $user = $this->user_info;

       $sum = $model->where('user_id',$user['id'])->where('status',1)->count();
       if($sum >= 1){
           responseReturn(2004,[],'您有一笔订单正在提现中,请耐心等待!');
       }
       $dis = $DM->get(1);
       $param = $this->param;
       if($param['price']< $dis['withdraw_min']){
           responseReturn(2004,[],'最小提现金额为'.$dis['withdraw_min']);
       }
       $data = [
           'type'=>2,

           'number'=>$param['number'],
           'name'=>$param['name'],
           'withdraw_start'=>$user['withdraw_time'],
           'withdraw_end'=>time(),
           'price'=>$param['price'],
           'price_true'=>$param['price'] - $param['price'] * $dis['withdraw_fee'],
           'create_time'=>time(),
           'user_id'=>$user['id'],
       ];
       $usr = [
         'withdraw_time'=>time(),
         'money'=>$user['money'] - $param['price'],
       ];
       $result1= $user->save($usr);
       $result1?  :  responseReturn(2004);
       $result = $model->create($data);
       $result ?  responseReturn(2000) : responseReturn(2004);


   }

   /*
    * 分销佣金
    * token
    * */
   public function commission(WithdralM $model,DistributionSettingM $DM){

       $user = $this->user_info;
       $result['money'] = $user['money'];
       $result['alreadyMoney'] = $user['withdraw_price'];
       $result['waitMoney'] = $model->where('user_id',$user['id'])->where('status',1)->sum('price');
       $result['know'] = $DM->field('know')->get(1)['know'];

       responseReturn(2000,$result);
   }

   /*
    * 分销订单
    *token
    * type
    * apge
    * pagesize
    * */
   public function distributionOrder(PictureM $model,UserM $UM,DistributionSettingM $DM,UserLevelM $ULM,FinanceM $FM){


       $pagesize = isset($_REQUEST['pagesize'])?$_REQUEST['pagesize']:10;
       $page = isset($_REQUEST['page'])?$_REQUEST['page']:1;
       $startpage = ($page - 1)*$pagesize;
       $user = $this->user_info;
       $param = $this->param;
       $where = array();
       $type = isset($param['type']) ? $param['type'] :0;
       if($type == 1){
           $where['p.status'] = 2;
       }elseif($type == 2){
           $where[] = array('p.status','in',[3,4,5]);
       }elseif($type == 3){
           $where['p.status'] = 10;
       }
       $level = $ULM->where('id',$user['id'])->find();
       $first = $UM->field('id')->where('pid',$user['id'])->select();
       foreach($first as $k=>$v){
           $first[$k]['level'] = 1;
       }
       $second = $UM->field('id')->where('gid',$user['id'])->select();
       foreach($second as $kk=>$vv){
           $second[$kk]['level'] = 2;
       }
       $third = $UM->field('id')->where('ggid',$user['id'])->select();
       foreach($third as $kkk=>$vvv){
           $third[$kkk]['level'] = 3;
       }

       $array= array_merge($first->toArray(),$second->toArray(),$third->toArray());
       $ids = array();
       foreach($array as $k=>$v){
           array_push($ids,$v['id']);
       }

       //分页活的的订单
       $orders = $model->alias('p')
                       ->field('p.id,p.order_no,p.user_id,p.status,p.order_no,p.total_price,p.pay_time,p.create_time,p.order_no,p.buy_id,p.pic_id,p.buy_time,m.user_name,m.head_img,l.pic_number,l.attachment,l.pic_name')
                       ->join('picture l','l.id = p.pic_id')
                       ->join('member m','m.id = p.buy_id')
                       ->whereIn('p.buy_id',$ids)
                       ->where($where)
					   ->order('p.create_time desc')
                       ->limit($startpage,$pagesize)
                       ->select();

       foreach($orders as $k=>$v){
           foreach($array as $Kk=>$vv){
               if(($vv['id'] == $v['buy_id'])){
                   $orders[$k]['level'] = $vv['level'];
                   $orders[$k]['level_name'] = $vv['level'].'级';
                   $orders[$k]['head_img'] = $this->getImgUrl($v['head_img']);
                   $orders[$k]['attachment'] = $this->getImgUrl($v['attachment']);


                   if($v['status'] != 10){

                       switch ($vv['level']){

                           case 1:
                               $dist = $level['first_per'];
                               break;
                           case 2:
                               $dist = $level['second_per'];
                               break;
                           case 3:
                               $dist = $level['third_per'];
                               break;
                           default:
                               $dist = 0;
                               break;
                       }

                       $orders[$k]['expect_money'] = $v['total_price'] * $dist;

                   }else{
						$dd = $FM->where('order_id',$v['id'])->where('user_id',$user['id'])->field('money')->find();
					
                       $orders[$k]['expect_money'] = ($FM->where('order_id',$v['id'])->where('user_id',$user['id'])->field('money')->find())['money'];
                       if(empty($orders[$k]['expect_money'])){
                           $orders[$k]['expect_money'] = 0;
                       }
                   }


               }
           }
       }
       responseReturn(2000,$orders);
    


   }


   /*
    * 提现列表
    * token
    * type     非必填   默认0 全部 1审核中 2 待打款 3已打款 4无效(拒绝)
    * page
    * pagesize
    * */
   public function withdrawLog(WithdralM $model){

       $user = $this->user_info;
       $pagesize = isset($_REQUEST['pagesize'])?$_REQUEST['pagesize']:10;
       $page = isset($_REQUEST['page'])?$_REQUEST['page']:1;
       $startpage = ($page - 1)*$pagesize;
       $param = $this->param;
       $type = isset($param['type']) ? $param['type'] : 0;
       $where= array();
       if($type == 1){
           $where['status'] = 1;
       }elseif($type == 2){
           $where['status'] = 2;
       }elseif($type == 3){
           $where['status'] = 3;
       }elseif($type == 4){
           $where['status'] = 0;
       }
       $withdraw = $model->where('user_id',$user['id'])->where($where)->order('create_time desc')->limit($startpage,$pagesize)->select();

       $withdraw ? responseReturn(2000,$withdraw): responseReturn(2004);
   }
   /*
    * token
    * withdraw_id    必填
    * */
   public  function  withdrawOrder(WithdralM $model,PictureM $PM,DistributionSettingM $DM,UserM $UM,UserLevelM $ULM,FinanceM $FM,PictureListM $PL){


       $param = $this->param;
       $user = $this->user_info;
       $pagesize = isset($_REQUEST['pagesize'])?$_REQUEST['pagesize']:10;
       $page = isset($_REQUEST['page'])?$_REQUEST['page']:1;
       $startpage = ($page - 1)*$pagesize;
       $level = $ULM->where('id',$user['id'])->find();
       $withdraw = $model->get($param['withdraw_id']);

       $where = array();

       $dis = $DM->get(1);
       $first = $UM->field('id')->where('pid',$user['id'])->select();
       foreach($first as $k=>$v){
           $first[$k]['level'] = 1;
       }
       $second = $UM->field('id')->where('gid',$user['id'])->select();
       foreach($second as $kk=>$vv){
           $second[$kk]['level'] = 2;
       }
       $third = $UM->field('id')->where('ggid',$user['id'])->select();
       foreach($third as $kkk=>$vvv){
           $third[$kkk]['level'] = 3;
       }

       $array= array_merge($first->toArray(),$second->toArray(),$third->toArray());
       $ids = array();

       foreach($array as $k=>$v){
           array_push($ids,$v['id']);
       }

//       $orders = $FM->alias('f')
//                   ->field('f.id,f.money,f.create_time,f.order_id,p.order_no,p.user_id,p.status,p.total_price,p.pay_time,p.create_time,p.buy_id,p.pic_id,l.pic_number,l.attachment,l.pic_name')
//                   ->join('picture_order p','p.id = f.order_id')
//                   ->join('picture l','l.id = p.pic_id')
//                   ->join('member m','m.id = p.buy_id')
////                   ->whereIn('f.user_id',$ids)
////                   ->where('p.buy_time','between',"{$withdraw['withdraw_start']},{$withdraw['withdraw_end']}")
////                   ->where($where)
//                   ->limit($startpage,$pagesize)
//                   ->select();
       $finance = $FM->field('id,money,create_time,order_id')->where('user_id',$user['id'])->where('create_time','between',"{$withdraw['withdraw_start']},{$withdraw['withdraw_end']}")->whereIn('type',[1,3]) ->limit($startpage,$pagesize)->select();

       foreach($finance as $k=>$v){
           $order = $PM->field("order_no,total_price,pay_time,create_time,buy_id,pic_id,status")->where('id',$v['order_id'])->find();

           $finance[$k]['order_no'] = $order['order_no'];
           $finance[$k]['total_price'] = $order['total_price'];
           $finance[$k]['pay_time'] = $order['pay_time'];
           $finance[$k]['create_time'] = $order['create_time'];
           $finance[$k]['buy_id'] = $order['buy_id'];
           $finance[$k]['pic_id'] = $order['pic_id'];
           $finance[$k]['status'] = $order['status'];
           $user = $UM->field('id,user_name,level')->where('id',$order['buy_id'])->find();
           $finance[$k]['user_name'] = $user['user_name'];
           $finance[$k]['level'] = $user['level'];
           $pic = $PL->field('id,attachment,pic_number,pic_name')->where('id',$order['pic_id'])->find();
           $finance[$k]['attachment'] = $pic['attachment'];
           $finance[$k]['pic_number'] = $pic['pic_number'];
           $finance[$k]['pic_name'] = $pic['pic_name'];
       }

       foreach($finance as $k=>$v){
           foreach($array as $Kk=>$vv){


               if($vv['id'] == $v['buy_id']){

                   $finance[$k]['level'] = $vv['level'];
                   $finance[$k]['level_name'] = $vv['level'].'级';
//                   $orders[$k]['head_img'] = $this->getImgUrl($v['head_img']);
                   $finance[$k]['attachment'] = $this->getImgUrl($v['attachment']);
                   //订单为完成和不完成的
                   if($v['status'] !=10){

                       switch ($vv['level']){

                           case 1:
                               $dist = $level['first_per'];
                               break;
                           case 2:
                               $dist = $level['second_per'];
                               break;
                           case 3:
                               $dist = $level['third_per'];
                               break;
                           default:
                               $dist = 0;
                               break;
                       }

                       $finance[$k]['expect_money'] = $v['total_price'] * $dist;
                   }else{
                       $finance[$k]['expect_money'] = $v['money'];
                   }

               }else{
                   $finance[$k]['expect_money'] = $v['money'];
               }
           }
       }

       responseReturn(2000,$finance);
   }

   /*
    *  我的团队
    * token
    * type    选填   0一及  1二级  2三级
    * page\
    * pagesize
    * */
   public function myGroup(UserM $model,FinanceM $FM){

       $param= $this->param;
       $user = $this->user_info;
       $type = isset($param['type']) ? $param['type'] : 0;
       $pagesize = isset($_REQUEST['pagesize'])?$_REQUEST['pagesize']:10;
       $page = isset($_REQUEST['page'])?$_REQUEST['page']:1;
       $startpage = ($page - 1)*$pagesize;
       $where = array();
       $level1 = $model->where('pid',$user['id'])->count();
       $level2 = $model->where('gid',$user['id'])->count();
       $level3 = $model->where('ggid',$user['id'])->count();
       if($type == 0){
           $where['pid'] = $user['id'];
       }elseif($type == 1){
           $where['gid'] = $user['id'];
       }elseif($type == 2){
           $where['ggid'] = $user['id'];
       }
       $result = $model->field('id,user_name,head_img,mobile,create_time,finish_time,status,withdraw_price,is_finish')->where($where)->limit($startpage)->order('create_time desc')->select();
       foreach($result as $k=>$value){
		   //所有的下级成员
           $sum = $FM->where('user_id',$value['id'])->where('by_id',$value['id'])->sum('money');
	
		if(!empty($value['finish_time'])){
			$result[$k]['finish_time'] = date('Y-m-d H:i',$result[$k]['finish_time']);
		}
		
           $peo = $model->whereOr('pid',$value['id'])->whereOr('gid',$value['id'])->whereOr('ggid',$value['id'])->count();

           $result[$k]['sum'] = $sum;
           $result[$k]['peo'] = $peo;
           $result[$k]['head_img'] = $this->getImgUrl($value['head_img']);
       }
       $res['memberList'] =$result;
       $res['level1'] = $level1;
       $res['level2'] = $level2;
       $res['level3'] = $level3;

       $res ? responseReturn(2000,$res) : responseReturn(2004);
   }


}
