<?php
/**
 * 轮播图控制器
 */

namespace app\message\controller;

use app\message\model\NoticeM;
use app\message\model\SlideM;
use think\Request;
use app\admin\controller\Controller;



class Slide extends Controller
{

    //列表
    public function index(Request $request, SlideM $model)
    {
        $param = $request->param();

        $data = $model->paginate($this->admin['per_page'], false, ['query' => $request->get()]);
        $page = $data->render();
        $total = $data->total();
        $data = $data->all();
        //关键词，排序等赋值
        $this->assign($request->get());

        $this->assign([
            'data' => $data,
            'page' => $page,
            'total' => $total,

        ]);
        return $this->fetch();
    }

    //添加
    public function add(Request $request, SlideM $model)
    {
        if ($request->isPost()) {
            $param = $request->param();
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

        return $this->fetch();
    }

    //修改
    public function edit($id, Request $request, SlideM $model)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();
            $attachment_attachment = new \app\common\model\Attachment;
            $file_attachment = $attachment_attachment->upload('attachment');
            if ($file_attachment) {
                $param['attachment'] = $file_attachment->url;
            } else {
                return error($attachment_attachment->getError());
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
    public function del($id, SlideM $model)
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
