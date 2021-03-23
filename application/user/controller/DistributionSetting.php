<?php
/**
 * 用户账号控制器
 */

namespace app\user\controller;

use app\user\model\DistributionSettingM;
use app\user\model\UserM;
use app\user\model\VipM;
use think\Request;
use app\admin\controller\Controller;
use app\user\model\UserWithdrawM;
use app\admin\model\AdminMenuM;

class DistributionSetting extends Controller
{

    //列表
    public function index(Request $request, DistributionSettingM $model,VipM $VM)
    {
        $id = 1;
        $data = $model::field('first_distribution,second_distribution')->get($id);
        $vip = $VM->get(1);
        if ($request->isPost()) {
            $param           = $request->param();

            $vip_result = $vip::save([
                'price'=>$param['price'],
            ]);
            unset($param['price']);
            $result = $data->save($param);
            return $result&&$vip_result ? success("修改成功",false) : error();
        }
        $this->assign([
            'data'=>$data,
            'vip'=>$vip,
        ]);

        return $this->fetch();

    }
    //修改

    public function rule(Request $request, DistributionSettingM $model)
    {
        $id = 2;
        $data = $model::get($id);

        if ($request->isPost()) {
            $param           = $request->param();

            $result = $data->save($param);
            return $result ? success("修改成功",false) : error();
        }
        $this->assign("data",$data);

        return $this->fetch();

    }
    public function level_rule(Request $request, DistributionSettingM $model)
    {
        $id = 4;
        $data = $model::get($id);

        if ($request->isPost()) {
            $param           = $request->param();

            $result = $data->save($param);
            return $result ? success("修改成功",false) : error();
        }
        $this->assign("data",$data);

        return $this->fetch();

    }


    public function poundage(Request $request,DistributionSettingM $model){

        $id = 3;
        $data = $model::get($id);
        if ($request->isPost()) {
            $param           = $request->param();

            $result = $data->save($param);
            return $result ? success("修改成功",false) : error();
        }
        $this->assign("data",$data);

        return $this->fetch();
    }




}
