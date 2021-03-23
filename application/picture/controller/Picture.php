<?php
/**
 * 文章表控制器
 */

namespace app\picture\controller;

use app\picture\model\PictureListM;
use app\picture\model\PictureM;
use app\picture\validate\PictureV;
use app\user\model\DistributionSettingM;
use app\user\model\UserLevelM;
use app\user\model\UserM;
use think\Request;
use app\admin\controller\Controller;
use app\cms\model\ArticleM;
use app\cms\validate\ArticleV;

class Picture extends Controller
{
    //列表
    public function index(Request $request, PictureM $model)
    {

        $param = $request->param();
        $model  = $model->with(['user'=>["user_name"],"pic"=>["pic_name"]])->scope('where', $param);

        $where = array();
        $whereIn = array();

        if(isset($param['status']) && $param['status'] != ''){
            if($param['status'] == 2){
                $whereIn[]= array('picture_m.status','in',[2,3]);
                $whereIn[] = array('picture_m.point_status','in',[0,1]) ;
            }elseif($param['status'] == 3){
                $where['picture_m.point_status'] =1;
                $whereIn[]=array('picture_m.status','in',[2]);


            }elseif($param['status'] == 4){
                $where['picture_m.status'] =3;
                $whereIn[] = array('picture_m.point_status','in',[2,3]);
            }else{
                $where['picture_m.status']= $param['status'];
            }

            $this->assign('status',$param['status']);
        }
        if(!empty($param['pic_number'])){
            $where['pic.pic_number']=$param['pic_number'];
            $this->assign('pic_number',$param['pic_number']);
        }
        if(!empty($param['pay_type'])){
            $where['picture_m.pay_type'] = $param['pay_type'];
            $this->assign('pay_type',$param['pay_type']);
        }


        $data = $model->where($where)->where($whereIn)->order('picture_m.create_time desc')->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
        //关键词，排序等赋值

        $this->assign($request->get());
        $this->assign([
            'data'  => $data,
            'page'  => $data->render(),
            'total' => $data->total(),

        ]);
        return $this->fetch();
    }
    //添加
    public function add(Request $request, PictureM $model, PictureV $validate,PictureListM $PM)
    {

        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            $pic = $PM->where('id',$param['pic_id'])->update(['is_fabu'=>1]);
            $param['create_time'] = time();
            $param['sale_type'] = 1;
            $result = $model::create($param);
            $url = URL_BACK;
            if(isset($param['_create']) && $param['_create']==1){
                $url = URL_RELOAD;
            }
            return $result ? success('添加成功',$url) : error();
        }
        $pic = $PM->field('')->where('is_fabu',0)->where('status',1)->select();
        $this->assign('pic',$pic);
        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, PictureM $model, PictureV $validate,PictureListM $PM,UserM $UM)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            if($param['status'] == 1){
                $param['user_phone'] = '';
                $param['address_id'] = '';
                $param['user_address'] = '';
                $param['buy_id'] = '';
                $param['buy_time'] = '';
            }

            $param['create_time'] = time();
            $param['sale_type'] = 1;

            $result = $data->save($param);
            $url = URL_BACK;
            if(isset($param['_create']) && $param['_create']==1){
                $url = URL_RELOAD;
            }
            return $result ? success('修改成功',$url) : error();
        }

        $member = $UM->field('id,user_name')->where('is_finish',1)->select();
        $this->assign([
            'data' => $data,
            'member' => $member,
        ]);
        return $this->fetch();

    }
    //删除
    public function del($id, PictureM $model)
    {
        if (count($model->noDeletionId) > 0) {
            if (is_array($id)) {
                if (array_intersect($model->noDeletionId, $id)) {
                    return error('ID为' . implode(',', $model->noDeletionId) . '的数据无法删除');
                }
            } else if (in_array($id, $model->noDeletionId)) {
                return error('ID为' . $id . '的数据无法删除');
            }
        }
        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }
        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    /*
     * 审核
     * */
    public function pass($id, PictureM $model){
        $order = $model->whereIn('id',$id)->select();
        foreach($order as $k=>$v){
            if($v['status'] == 0 && $v['audit_status'] == 1){
                $v->save(['status'=>1]);
            }
        }


        return success('操作成功', URL_RELOAD);
    }
    /*
     *
     * .发货操作
     * */
    public function fahuo($id, PictureM $model){
        $order = $model->whereIn('id',$id)->select();
        foreach($order as $k=>$v){
            if($v['status'] ==4||$v['status'] == 3){
                $v->save(['status'=>5,'delivery_time'=>time()]);
            }
        }


        return success('操作成功', URL_RELOAD);
    }
    /*
   *
   * .shouhuo操作
   * */
    public function shouhuo($id, PictureM $model){
        $order = $model->whereIn('id',$id)->select();
        foreach($order as $k=>$v){
            if($v['status'] ==5){
                $v->save(['status'=>5,'delivery_time'=>time()]);
            }
        }


        return success('操作成功', URL_RELOAD);
    }
    /*
   *
   * 取消操作
   * */
    public function quxiao($id, PictureM $model){
        $order = $model->whereIn('id',$id)->select();
        foreach($order as $k=>$v){
            if($v['status'] ==2){
                $data =[
                    'point_status'=>'',
                    'status'=>1,
                    'is_complaints'=>0,
                    'buy_id'=>'',
                    'buy_time'=>'',
                    'address_id'=>'',
                    'user_phone'=>'',
                    'user_address'=>'',
                    'pay_type'=>0,
                ];

                $v->save($data);
            }
            $redis = new Redis();
            $redis->delete("list".$v['id']);
        }


        return success('操作成功', URL_RELOAD);
    }

    /*
     * 收款操作
     * */
    public function shoukuan($id, PictureM $model){

        $order = $model->where('id',$id)->find();
        if($order['status'] != 2){
            return error();
        }
        $result = $order->save(['status'=>3]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    /*
     * 收货操作
     * */
    public  function  delivery($id, PictureM $model,UserM $UM){
        $orders = $model->whereIn('id',$id)->select();


        foreach($orders as $k=>$v){
            if($v['status'] ==5){
                $v->save(['status'=>10]);
                $user = $UM->where('id',$v['buy_id'])->find();
                if($user['is_finish'] == 0){
                    //不是易学台 修改完成状态 //成为经销商
                    $dataB = [
                        'is_finish'=>1,
                        'finish_time'=>time(),
                        'level'=>1,
                    ];
                    $user->save($dataB);
                    $this->upLevel($user);

                }
                $this->getMoneys($v);
                $data=[
                    'order_no' => onlyosn(),
                    'user_id' => $v['buy_id'],
                    'total_price' => $v['total_price'],
                    'original_price' => $v['total_price'],

                    'create_time' => time(),
                    'sale_type' => 2,
                    'status' => 0,
                    'pic_id' => $v['pic_id'],
                ];
                $v->save(['status'=>10]);
                $model->create($data);
            }

        }


        return success('操作成功', URL_RELOAD);
    }

    public function getLevels($id){
		 $UM = new UserM;
		 $ULM = new UserLevelM;
		 $user = $UM->field('id,pid,gid,ggid,level,is_finish')->where('id',$id)->find();
		 if($user['level'] == 0){
			 $data = [
			 'first_per'=>0,
			 'second_per'=>0,
			 'third_per'=>0,
			 ];
			 return $data;
		 }
         $dis = $ULM->field('id,first_per,second_per,third_per')->where('id',$user['level'])->find();
		 
		 return $dis;
	}

    //从订单获取佣金
    public  function getMoneys($order){
        $model = new PictureM;
        $PM = new PictureListM;
        $DM = new DistributionSettingM;
        $UM = new UserM;
        $ULM = new UserLevelM;
        //买的人的分校参数
        $user = $UM->field('id,pid,gid,ggid,level,is_finish')->where('id',$order['buy_id'])->find();

        //一级
        if($user['level'] <1){
            return 3;
        }
	
        if(!empty($user['pid'])){
            //买的人的父级的级别的奖金比例
            $dis = $this->getLevels($user['pid']);
		
            $UM->where('id',$user['pid'])->setInc('money',$order['total_price'] * $dis['first_per']);
            addfinance($user['pid'],1,'一级分销积分',1,$order['total_price'] * $dis['first_per'],1,0,0,$order['id'],$user['id']);
        }
        //二级别
        if(!empty($user['gid'])){
            //买的人的父父级的级别的奖金比例
            $dis = $this->getLevels($user['gid']);
		
            $UM->where('id',$user['gid'])->setInc('money',$order['total_price'] * $dis['second_per']);
            addfinance($user['gid'],1,'二级级分销积分',1,$order['total_price'] * $dis['second_per'],1,0,0,$order['id'],$user['id']);
        }
        //三级
        if(!empty($user['ggid'])){
            //买的人的父父父级的级别的奖金比例
            $dis = $this->getLevels($user['ggid']);
		
            $UM->where('id',$user['ggid'])->setInc('money',$order['total_price'] * $dis['third_per']);
            addfinance($user['ggid'],1,'三级级分销积分',1,$order['total_price'] * $dis['third_per'],1,0,0,$order['id'],$user['id']);
        }

        //检测用户状态
        $pic = $PM->where('id',$order['pic_id'])->find();
        //如果不是易学台的画

        if($pic['cate_id'] != 1){
            //直推画数量加1
            $UM->where('id',$user['pid'])->setInc('pic_num');
            $pic_num = $UM->field('id,pic_num')->where('id',$user['pid'])->find();
            //是否超过30副画

//            if($pic_num['pic_num'] >= 4){
            if($pic_num['pic_num'] >= 30){
                $resA = $UM->where('id',$user['pid'])->update(['is_get'=>1]);
                if($resA){
                    $distr = $DM->field('reward_money')->get(1);
                    $UM->where('id',$user['pid'])->setInc('money',$distr['reward_money']);
                    addfinance($user['pid'],3,'奖励佣金',1,$distr['reward_money'],1);
                }
            }

            return 1;
        }
        return 2;
    }

    // 升级
    public function upLevel($user){

        $UM = new UserM;
        $p = $UM->field('id,level,pid,gid,ggid')->where('id',$user['pid'])->find();
        $g = $UM->field('id,level,pid,gid,ggid')->where('id',$user['gid'])->find();
        $gg = $UM->field('id,level,pid,gid,ggid')->where('id',$user['ggid'])->find();

        if(!empty($p)){
            $this->checkLevel($p);
        }
        if(!empty($g)){
            $this->checkLevel($g);
        }
        if(!empty($gg)){
            $this->checkLevel($gg);
        }
    }
    //检测当前三级人员是否升级
    public function checkLevel($p){
        $UM = new UserM;
        $whereOr['pid'] = $p['id'];
        $whereOr['gid'] = $p['id'];
        $whereOr['ggid'] = $p['id'];

        if($p['level'] >1){


            switch ($p['level']){
                case 1:
                    //一级的升级条件

                    $oneSum = $UM->where('level',1)->where(function ($query) use ($whereOr) {
                        $query->whereOr($whereOr);
                    })->count();

                    //if($oneSum>=2){
                    if($oneSum>=5){

                        $UM->where('id',$p['id'])->update(['level'=>'2']);
                        $this->upLevel($UM->field('id,level,pid,gid,ggid')->where('id',$p['id'])->find());
                    }
                    break;
                case 2:
                    //二级的升级条件
                    $twoSum = $UM->where('level',2)->where(function ($query) use ($whereOr) {
                        $query->whereOr($whereOr);
                    })->count();
                    //if($twoSum>=3){

                    if($twoSum>20){
                        $UM->where('id',$p['id'])->update(['level'=>'3']);
                        $this->upLevel($UM->field('id,level,pid,gid,ggid')->where('id',$p['id'])->find());
                    }
                    break;
                case 3:
                    $threeSum = $UM->where('level',3)->where(function ($query) use ($whereOr) {
                        $query->whereOr($whereOr);
                    })->count();
                    $groupSum = $UM->whereOr($whereOr)->count();


                    if($threeSum>=3 && $groupSum>=80){
                        //if($threeSum>=2 && $groupSum>=4){

                        $UM->where('id',$p['id'])->update(['level'=>'4']);
                        $this->upLevel($UM->field('id,level,pid,gid,ggid')->where('id',$p['id'])->find());
                    }
                    break;
                default:
                    break;

            }
        }
    }
}
