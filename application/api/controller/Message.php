<?php

namespace app\api\controller;

use app\api\model\ResultM;
use app\api\model\UserM;
use app\api\model\MessageM;
use app\api\validate\MessageV;
use app\api\validate\UserV;
use app\shop\model\OrderM;
use think\Request;

class Message extends ApiBase
{
    protected $authExcept = ['message_info','message_del'];

   /*
    * 消息列表页
    * token
    *  type
    *
    * */
   public function messageList(MessageM $model,MessageV $validate){

       $param = $this->param;
       $type = isset($param['type']) ? $param['type'] :0;
       $where = array();
       if(!empty($type)){
           $where['type'] = $type;
       }
       $limit = $this->pagesize;
       $startpage = $this->startpage;
       $user = $this->user_info;

       $message_list = $model::where("user_id",$user['id'])->where($where)->where('user_delete',0)->field('id,title,type,create_time,read_time,user_id')->limit($startpage,$limit)->order('is_read asc,create_time desc,id desc')->all();

       responseReturn(2000,$message_list);



   }
   /*
    * 消息详情页
    * message_id 信息id
    * */
   public function message_info(MessageM $model,MessageV $validate,OrderM $OM){


       $param  = $this->param;

       $message_info = $model->alias('g')
                       ->field('g.id,g.create_time,g.title,g.content,g.is_read,g.type,g.status,g.user_id,g.order_id,g.remittance_time,g.remark,m.user_name,m.mobile')
                       ->join('member m','m.id = g.user_id')
                       ->where('g.id', $param['message_id'])
                       ->where('m.delete_time',0)
                       ->find();

       if(!empty($message_info['order_id'])){
           $order = $OM->field('id,total_price,order_no,status')->where('id',$message_info['order_id'])->find();
           $message_info['total_price'] = $order['total_price'];
           $message_info['order_no'] = $order['order_no'];

       }else{
           $message_info['total_price'] = "";
           $message_info['order_no'] = "";
       }
       if ($message_info['status'] == 0){
           $data['status'] = 1;
        }
       $data['read_time'] = time();
       $data['is_read'] = 1;
       $message_info->save($data);

       responseReturn(2000,$message_info);
   }
   /*
    * 删除消息
    * message_id
    * */
   public function message_del(MessageM $model,MessageV $validate){

       $param  = $this->param;

       $message_info = $model->where('id',$param['message_id'])->delete();

       if($message_info){
           responseReturn(2000);
       }else{
           responseReturn(2004);
       }
       responseReturn(2004);
   }


}
