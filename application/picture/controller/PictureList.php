<?php
/**
 * 商品控制器
 */

namespace app\picture\controller;

use app\picture\model\CateM;
use app\picture\model\PictureListM;
use app\picture\model\PictureM;
use app\picture\validate\PictureListV;
use app\user\model\CollectionM;
use app\user\model\UserM;
use think\Request;
use app\admin\controller\Controller;
use app\shop\model\GoodM;
use app\shop\validate\GoodV;
use app\shop\model\GoodCateM;

class PictureList extends Controller
{

    //列表
    public function index(Request $request, PictureListM $model)
    {
        $param = $request->param();
        $model = $model->scope('where', $param);
        $cate = CateM::where('status',1)->select();
        $where = array();
        if(!empty($param['cate_id'])){
            $where['cate_id'] = $param['cate_id'];
            $this->assign( 'cate_id' , $param['cate_id']);
        }
        $data = $model->field('id,cate_id,pic_number,pic_name,author,attachment,make_time,pic_size,pic_spec,pic_product,status,user_id,create_time,is_fabu,total_price')->where('is_fabu',0)->where($where)->paginate($this->admin['per_page'], false, ['query' => $request->get()]);
//        foreach ($data as $key=>$value){
//            $data[$key]['cate_name'] = $value->cateName->name;
//            unset($value->cateName);
//        }

        //关键词，排序等赋值
        $this->assign($request->get());

        $this->assign([
            'data' => $data,
            'page' => $data->render(),
            'total' => $data->total(),

            'cate' => $cate,

        ]);
        return $this->fetch();
    }

    //添加
    public function add(Request $request, PictureListM $model, PictureListV $validate,CateM $cate,UserM $UM)
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
            //处理附件上传
            $param['create_time'] = time();
            $attachment_attachment = new \app\common\model\Attachment;
            $file_attachment = $attachment_attachment->upload('attachment');
            if ($file_attachment) {
                $param['attachment'] = $file_attachment->url;
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

        $member = $UM->field('id,user_name')->where('is_finish',1)->select();
        $cate = $cate->all();
        $this->assign([
            'cate' => $cate,
            'member' => $member,
        ]);
        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, PictureListM $model, PictureListV $validate,CateM $cate,UserM $UM)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }

            //处理附件上传
            if (!empty($_FILES['attachment']['name'])) {
                $attachment_attachment = new \app\common\model\Attachment;
                $file_attachment = $attachment_attachment->upload('attachment');
                if ($file_attachment) {
                    $param['attachment'] = $file_attachment->url;
                }
            }

            //处理附件id上传

            $result = $data->save($param);
            return $result ? success() : error();
        }
        $cate = $cate->all();
        $member = $UM->field('id,user_name')->where('is_finish',1)->select();
        $this->assign([
            'data' => $data,
            'cate' => $cate,
            'member' => $member,
        ]);
        return $this->fetch('add');
    }

    //删除
    public function del($id, PictureListM $model)
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

        if ($model->softDelete) {
            $result = $model->whereIn('id', $id)->useSoftDelete('delete_time', time())->delete();
        } else {
            $result = $model->whereIn('id', $id)->delete();
        }

        return $result ? success('操作成功', URL_RELOAD) : error();
    }



    /*
     * 发布订单
    */
    public function fabu($id,Request $request,PictureM $model,PictureListM $PM,UserM $UM){


        $order = $PM->whereIn('id', $id)->select();

        foreach($order as $k=> $v){
            $dataA = [
                'create_time'=> time(),
                'pic_id'=> $v['id'],
                'order_no'=> onlyosn(),
                'total_price'=> $v['total_price'],
                'user_id'=> $v['user_id'],
                'status'=> 1,
            ];
              $model->create($dataA);

        }
        $result = $PM->whereIn('id', $id)->update(['is_fabu'=>'1']);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }

}
