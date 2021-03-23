<?php

namespace app\api\controller;

use app\api\model\ResultM;
use app\api\model\UserM;
use app\api\model\AddressM;
use app\api\validate\AddressV;
use app\api\validate\UserV;
use think\Request;

class Address extends ApiBase
{
    protected $authExcept = [];

    /* 用户地址列表
        uid  用户id
     * */
    public function address_list(AddressM $model,AddressV $validate){

        $param = $this->param;
        $validate_result = $validate->scene('address_list')->check($param);
        if(!$validate_result){
            responseReturn(4241);
        }
        $address_list = $model::where("user_id",$param['uid'])->field("id,name,mobile,province,city,district,detail,post_code,is_default")->order('id desc')->all();
        responseReturn(2000,$address_list);
    }
    /*
     * 设置默认地址接口
     *  uid 用户id
     *  address_id 地址id
     * */

    public function set_default(AddressM $model,AddressV $validate){

        $param = $this->param;
        $validate_result = $validate->scene('set_default')->check($param);
        if(!$validate_result){
            responseReturn(4241);
        }

        $address_list = $model::where("user_id",$param['uid'])->all();
        $change['is_default'] = 0;
        foreach($address_list as $k=>$v){
            $v->save($change);
        }
        $data['is_default'] = 1;
        $address = $model::find($param['address_id']);
        $result = $address->save($data);
        if($result){
            responseReturn(2000);
        }
        responseReturn(2004);





    }
    /*
     * 删除地址
     * */

    public function address_del(AddressM $model,AddressV $validate){

        $param = $this->param;
        $validate_result = $validate->scene('address_del')->check($param);
        if(!$validate_result){
            responseReturn(4241);
        }
        if ($model->softDelete) {
            $result = $model->whereIn('id', $param['address_id'])->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $param['address_id'])->delete();
        }

         $result ?responseReturn(2000) :responseReturn(2004);
    }
    /*
     * 添加地址
     * 'province_id|省级id' => 'require',
        'province|省名称' => 'require',
        'city_id|城市id' => 'require',
        'city|城市名称' => 'require',
        'district_id|区id' => 'require',
        'district|区名称' => 'require',
        'is_default|是否默认' => 'require',
        'detail|详细地址' => 'require',
        'post_code|邮政编码' => 'require',
     * */
    public function address_add(AddressM $model,AddressV $validate){

        $param = $this->param;
        $validate_result = $validate->scene('address_add')->check($param);
        if(!$validate_result){

            responseReturn(4241,[],$validate->getError());
        }

        if($param['is_default'] == 1){
            $address_list = $model::where("user_id",$param['user_id'])->where('is_default',1)->all();
            $change['is_default'] = 0;
            foreach($address_list as $k=>$v){
                $v->save($change);
            }
        }

        $result = $model->save($param);
        $result ?responseReturn(2000) :responseReturn(2004);
    }
    /*
     * 地址详情接口
     * address_id 地址id
     * */
    public function address_info(AddressM $model,AddressV $validate){

        $param = $this->param;
        $validate_result = $validate->scene('address_info')->check($param);
        if(!$validate_result){

            responseReturn(4241,[],$validate->getError());
        }
        $address = $model::get($param['address_id']);
        $address ?responseReturn(2000,$address) :responseReturn(2004);

    }
}
