<?php
namespace app\api\controller;


use app\shop\model\GoodM;
use app\shop\model\OrderM;

class Task extends ApiBase
{
    protected $authExcept = ['','checkOrder','checkGood','getShopName'];

    //未支付订单检测是否到期
    public function checkOrder(OrderM $model){

        $order = $model->where('status',1)->select();
        foreach($order as $k=>$v){
            if (time()>strtotime($v['create_time'])+24*3600){
                //说明时间到期变为已取消状态
                $data = [
                    'status'=>10,
                ];
                $v->save($data);
            }
        }
        responseReturn(2000);
    }

    public function checkGood(GoodM $model){

        $goods = $model->where('cate_id',2)->select();
        foreach($goods as $k=>$v){
            if(strtotime($v['sale_time'])<=time()){
                //说明到时间了
                $data['price'] = $v['old_price'];
                $data['cate_id'] = 1;
                $v->save($data);
            }
        }
        responseReturn(2000);
    }

    public function getShopName(){

        $result= file_get_contents("https://detail.tmall.com/item.htm?spm=a220m.1000858.1000725.13.3c17670ffWwJGB&id=613256380507");
        $result = explode('<h1 data',$result);

        $result = explode('>',$result[1]);
        $result = explode('</h1',$result[1]);
        $result = trim($result[0]);

        file_put_contents('22.txt',$result);


    }



}