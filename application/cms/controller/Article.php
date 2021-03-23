<?php
/**
 * 文章表控制器
 */

namespace app\cms\controller;

use think\Request;
use app\admin\controller\Controller;
use app\cms\model\ArticleM;
use app\cms\model\CategoryM;
use app\cms\validate\ArticleV;

class Article extends Controller
{
    //列表
    public function index(Request $request, ArticleM $model)
    {

        $param = $request->param();
        $model  = $model->scope('where', $param);
        $where = array();
        if(!empty($param['type'])){
            $where['type'] = $param['type'];

        }
        $data = $model->field('id,title,keywords,view,create_time,attachment,status,sort,type')->where($where)->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
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
    public function add(Request $request, ArticleM $model, ArticleV $validate)
    {

        if ($request->isPost()) {
            $param           = $request->param();
            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            if (isset($param['content'])) {
                $param['content'] = $request->param(false)['content'];
            }

            //处理附件id上传
            $attachment_attachment = new \app\common\model\Attachment;
            $file_attachment       = $attachment_attachment->upload('attachment');

            if ($file_attachment) {
                $param['attachment'] = $file_attachment->url;
            } else {
                return error($attachment_attachment->getError());
            }
            $result = $model::create($param);
            $url = URL_BACK;
            if(isset($param['_create']) && $param['_create']==1){
               $url = URL_RELOAD;
            }
            return $result ? success('添加成功',$url) : error();
        }


        $param           = $request->param();

        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, ArticleM $model, ArticleV $validate)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param           = $request->param();
            $param['content'] = $request->param(false)['content'];
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            //处理附件id上传
            if (!empty($_FILES['attachment']['name'])) {
                $attachment_attachment = new \app\common\model\Attachment;
                $file_attachment       = $attachment_attachment->upload('attachment');
                if ($file_attachment) {
                    $param['attachment'] = $file_attachment->url;
                }
            }
            $result = $data->save($param);
            return $result ? success() : error();
        }
         $this->assign([
            'data' => $data,0
            ]);
        return $this->fetch('add');

    }
    //删除
    public function del($id, ArticleM $model)
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

    
}
