<?php
/**
 * 商品控制器
 */

namespace app\store\controller;

use app\admin\validate\Validate;
use app\api\model\CollectionM;
use app\api\model\ShopM;
use app\store\model\StoreM;
use app\store\model\TemplateM;
use app\store\validate\StoreV;
use app\store\validate\TemplateV;
use think\Request;
use app\admin\controller\Controller;


class Template extends Controller
{

    //列表
    public function index(Request $request, TemplateM $model)
    {
        $param = $request->param();
        $model = $model->scope('where', $param);

        $data = $model->paginate($this->admin['per_page'], false, ['query' => $request->get()]);


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
    public function add(Request $request, TemplateM $model, TemplateV $validate,ShopM $SM)
    {


        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            $myShop = $SM->where('id',$param['shop_id'])->field('id,store_id')->find();
            $result['store_id'] = $myShop['store_id'];
            $result['template_no'] = onlyosn();

            //处理附件上传
            $param['create_time'] = time();
            $attachment_attachment = new \app\common\model\Attachment;
            $file_attachment = $attachment_attachment->upload('good_img');
            if ($file_attachment) {
                $param['good_img'] = $file_attachment->url;
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
        $shops = $SM->where('status',1)->field('id,status,username')->select();
        $this->assign('shops',$shops);
        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, StoreM $model, StoreV $validate)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            if($param['password'] != 'xwfgsdgegs87794s' && !empty($param['password'])){

                $param['password'] = md5($param['password']);
            }else{
                unset($param['password']);
            }
            if (!empty($_FILES['avatar']['name'][0])) {
                $attachment_attachment = new \app\common\model\Attachment;
                $file = $attachment_attachment->upload('avatar');

                if ($file) {
                    $param['avatar'] = $file -> url;
                } else {
                    return error($attachment_attachment->getError());
                }
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
    public function del($id, StoreM $model)
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


        $data['status'] = 0;
        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    //启用
    public function enable($id, StoreM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 1]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //禁用
    public function disable($id, StoreM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 0]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    /*
     * 我的店铺
     * */

    public function myShop($id,Request $request,ShopM $model)
    {

        $param = $request->param();
        $model = $model->scope('where', $param);

        $data = $model->where('store_id', $id)->paginate($this->admin['per_page'], false, ['query' => $request->get()]);


        //关键词，排序等赋值
        $this->assign($request->get());

        $this->assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'store_id' => $id,

        ]);
        return $this->fetch();
    }
    /*
     *
     * 店铺添加
     * */
    public function shopAdd($store_id,ShopM $model,Request $request,StoreV $validate){

        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('shop_add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            $param['create_time'] = time();
            $result = $model ->save($param);
            return $result ? success() : error();
        }
        $this->assign('store_id',$store_id);
        return $this->fetch();
    }

    /*
     * 店铺修改
     * */
    public function shopEdit($id, Request $request, ShopM $model, StoreV $validate)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('shopEdit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            $result = $data->save($param);
            return $result ? success() : error();

        }

        $this->assign([
            'data' => $data,
        ]);
        return $this->fetch('shop_add');
    }
    /*
     * 店铺删除
     * */
    public function shopDel($id, ShopM $model)
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


        $data['status'] = 0;
        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }


    /*
     *
     *
     * */
    /*
        * 我的店铺
        * */

    public function template($id,Request $request,ShopM $model)
    {

        $param = $request->param();
        $model = $model->scope('where', $param);

        $data = $model->where('store_id', $id)->paginate($this->admin['per_page'], false, ['query' => $request->get()]);


        //关键词，排序等赋值
        $this->assign($request->get());

        $this->assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),
            'store_id' => $id,

        ]);
        return $this->fetch();
    }
    /*
     *
     * 店铺添加
     * */
    public function templateAdd($store_id,ShopM $model,Request $request,StoreV $validate){

        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('shop_add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            $param['create_time'] = time();
            $result = $model ->save($param);
            return $result ? success() : error();
        }
        $this->assign('store_id',$store_id);
        return $this->fetch();
    }

    /*
     * 店铺修改
     * */
    public function templateEdit($id, Request $request, ShopM $model, StoreV $validate)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('shopEdit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            $result = $data->save($param);
            return $result ? success() : error();

        }

        $this->assign([
            'data' => $data,
        ]);
        return $this->fetch('shop_add');
    }
    /*
     * 店铺删除
     * */
    public function templateDel($id, ShopM $model)
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


        $data['status'] = 0;
        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    public function checkURL(){
        $url = $_POST['urls'];
        $result= file_get_contents($url);
        if(empty($result)){
            return 2;
        }
        $result = mb_convert_encoding($result, 'utf-8', 'gbk');
        preg_match('/(<h1.*>)([^<>]*)(<\/h1>)/', $result, $title);
        dump($title);

        return $title[1];


    }
}
