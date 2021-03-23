<?php

namespace app\api\controller;


use app\api\model\ShopCartM;
use app\api\validate\ShopCartV;
use app\shop\controller\Good;
use app\shop\model\GoodM;
use think\facade\Cache;
use think\Request;

class ShopCart extends ApiBase
{
    protected $authExcept = ['addel','cartDel'];

    /*
     * 购物车
     * token
     * */
    public function cart(ShopCartM $model,ShopCartV $validate,GoodM $goods){

        $param = $this->param;
        $cart = $model->alias('c')
                        ->field('c.id,c.num,g.attachment,g.name,g.price,c.good_id')
                        ->join('shop_good g','g.id = c.good_id')
                        ->where('num','>',0)

                        ->select();
        //购物车 不用处理了
        $cart ? responseReturn(2000,$cart) :  responseReturn(2004);
    }

    /*
     *
     * 购物车加减
     * type  1 加 二减
     * cart_id   必填   购物车id
     * */
    public function addel(ShopCartM $model){

        $param = $this->param;
        $cart = $model->where('id',$param['cart_id'])->find();
        if($param['type'] == 1){
            // 1 加
            $num = $cart['num'] + 1;

            $result = $cart->save(['num'=>$num]);
            $result ? responseReturn(2000,$result) :  responseReturn(2004);
        }else{
            $num = $cart['num'] - 1;
            if($num<=0){
               $num = 0;
            }
            $result = $cart->save(['num'=>$num]);
            $result ? responseReturn(2000,$result) :  responseReturn(2004);

        }

    }


    /*
     * 购物车删除
     * cart_ids    必填  购物车删除 ,拼接
     * token
     * */
    public function cartDel(ShopCartM $model,ShopCartV $validate){

        $param = $this->param;
        $ids = explode(',',$param['cart_ids']);
        $result = $model->whereIn('id',$ids)->delete();
        $result ? responseReturn(2000): responseReturn(2004);
    }

    /*
     * token   必填
     * good_id 必填 商品id
     * */
    public function add(ShopCartM $model,GoodM $GM){

        $param = $this->param;

        $user = $this->user_info;
        $cache = cache::get('cart_'.$param['good_id'].'_'.$user['id']);
        if($cache){
            responseReturn(2000,(object)[],'请勿重复点击');
        }
        cache::set('cart_'.$param['good_id'].'_'.$user['id'],1,3);
        $good = $GM->where('id',$param['good_id'])->find();
        if(empty($good)){
            responseReturn(2004,(object)[],'商品已被删除');
        }
        $cart = $model->where('good_id',$good['id'])->where('user_id',$user['id'])->find();
        if($cart) {
            responseReturn(2000,(object)[],'商品已在购物车');
        }
        $data = [
            'user_id'=>$user['id'],
            'num'=>1,
            'good_id'=>$param['good_id'],
            'create_time'=>time(),
            'status'=>1,
        ];
        $result = $model->create($data);
        $result ? responseReturn(2000,$result) : responseReturn(2004);
    }

    /*
     *
     * */

}
