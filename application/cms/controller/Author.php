<?php
/**
 * 文章表控制器
 */

namespace app\cms\controller;

use app\cms\model\AuthorM;
use app\cms\validate\AuthorV;
use think\Request;
use app\admin\controller\Controller;
use app\cms\model\ArticleM;
use app\cms\model\CategoryM;
use app\cms\validate\ArticleV;

class Author extends Controller
{
    //列表
    public function index(Request $request, AuthorM $model)
    {

        $param = $request->param();
        $model  = $model->scope('where', $param);
        $data = $model->field('id,author_name,attachment,create_time,status,is_index,sort')->paginate($this->admin['per_page'], false, ['query'=>$request->get()]);
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
    public function add(Request $request, AuthorM $model, AuthorV $validate)
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


        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, AuthorM $model, AuthorV $validate)
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
            'data' => $data,
            ]);
        return $this->fetch('add');

    }
    //删除
    public function del($id, ArticleM $model)
    {
        
      
            $result = $model->whereIn('id', $id)->delete();
        
        return $result ? success('操作成功', URL_RELOAD) : error();
    }

    
}
