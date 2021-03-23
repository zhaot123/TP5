<?php
/**
 * 商品控制器
 */

namespace app\shop\controller;

use app\api\model\CollectionM;
use think\Request;
use app\admin\controller\Controller;
use app\shop\model\GoodM;
use app\shop\validate\GoodV;
use app\shop\model\GoodCateM;

class Good extends Controller
{

    //列表
    public function index(Request $request, GoodM $model)
    {
        $param = $request->param();
        $model = $model->scope('where', $param);

        $data = $model->field('id,cate_id,name,keywords,attachment,sort,sales_volume,price,virtual_volume,type,old_price,old_price,status,create_time,sale_time')->paginate($this->admin['per_page'], false, ['query' => $request->get()]);
        foreach ($data as $key=>$value){

        }
        //关键词，排序等赋值
        $this->assign($request->get());

        $this->assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),

        ]);
        return $this->fetch();
    }

    //添加
    public function add(Request $request, GoodM $model, GoodV $validate)
    {

        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            if (isset($param['description'])) {
                $param['description'] = $request->param(false)['description'];
            }
            if($param['cate_id'] == 1){
                $param['price'] = $param['old_price'];
            }

            if(!empty($param['sale_time'])){
                $time = time();

                if(strtotime($param['sale_time'])<$time + 3600){
                    return error('预售时间必须大于当前时间');
                }
            }

            //处理附件上传

            $attachment_attachment = new \app\common\model\Attachment;
            $file_attachment = $attachment_attachment->upload('attachment');
            if ($file_attachment) {
                $param['attachment'] = $file_attachment->url;
            } else {
                return error($attachment_attachment->getError());
            }
            //处理附件id上传商品轮播图
            $file = $attachment_attachment->uploadMulti('good_pic');
            if ($file) {
                $param['good_pic'] = json_encode($file);
            } else {
                return error($attachment_attachment->getError());
            }
            $result = $model::create($param);
            $url = URL_BACK;
            if (isset($param['_create']) && $param['_create'] == 1) {
                $url = URL_RELOAD;
            }
            return $result ? success('添加成功', $url) : error();
        }

        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, GoodM $model, GoodV $validate)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            if(!empty($param['sale_time'])){
                $time = time();

                if(strtotime($param['sale_time'])<$time + 3600){
                    return error('预售时间必须大于当前时间');
                }
            }
            $param['description'] = $request->param(false)['description'];
            //处理附件上传
            if (!empty($_FILES['attachment']['name'])) {
                $attachment_attachment = new \app\common\model\Attachment;
                $file_attachment = $attachment_attachment->upload('attachment');
                if ($file_attachment) {
                    $param['attachment'] = $file_attachment->url;
                }
            }

            if(!empty($param['sale_time'])){

                $param['sale_time']  = strtotime($param['sale_time']);
            }

            //处理附件id上传
            if (!empty($_FILES['good_pic']['name'][0])) {
                $attachment_attachment = new \app\common\model\Attachment;
                $file = $attachment_attachment->uploadMulti('good_pic');

                if ($file) {
                    $param['good_pic'] = json_encode($file);
                } else {
                    return error($attachment_attachment->getError());
                }
            }
            if(empty($_FILES['good_pic']['name'][0])){
                $unsetfile = $param['unsetfile'];
                $files = json_decode($data['good_pic']);
                $filess = $files;
                $arr = explode(',',$unsetfile);
                foreach($arr as $k=>$v){

                    $arr[$k] = substr($v,strlen($_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['SERVER_NAME'])+29,100);
                }
                foreach($files as $kk=>$vv){

                    $files[$kk] = substr($vv,29,100);
                }
                foreach($files as $ke=>$ve){
                    foreach($arr as $kke=>$vve){
                        if($ve == $vve){
                            unset($filess[$ke]);
                        }
                    }
                }
                $param['good_pic'] = json_encode(array_values($filess));


            }
            $result = $data->save($param);
            return $result ? success() : error();
        }

        $this->assign([
            'data' => $data,
        ]);
        return $this->fetch('add');
    }

    //删除
    public function del($id, GoodM $model, CollectionM $collectionM)
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

        //删除商品时让收藏变为无效
        $coll = $collectionM::where('good_id',$id)->all();
        $data['status'] = 0;
        foreach($coll as $k=>$value){
            $value->save($data);
        }

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    //启用
    public function enable($id, GoodM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 1]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //禁用
    public function disable($id, GoodM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 0]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //ajaxReturn商品类型
    public function ajaxGoodType($id, GoodM $model){
        $type = $model->getValueByWhere(['id'=>$id], 'type');
        return (int)$type;
    }
    //ajaxReturn商品
    public function ajaxGood(Request $request,GoodM $model){
        $param = $request->param();
        $good = $model->getListByWhere(['type'=>$param['type']],'id,name as text');
        return $good;
    }

}
