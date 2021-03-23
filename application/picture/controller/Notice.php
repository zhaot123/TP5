<?php
/**
 * 轮播图控制器
 */

namespace app\cms\controller;

use think\Request;
use app\admin\controller\Controller;
use app\cms\model\NoticeM;
use app\cms\validate\SlideV;

class Notice extends Controller
{

    //列表
    public function index(Request $request, NoticeM $model)
    {
        $param = $request->param();
        $model = $model->scope('where', $param);

        $data = $model->paginate($this->admin['per_page'], false, ['query' => $request->get()]);
        $page = $data->render();
        $total = $data->total();
        $data = $data->all();
        foreach($data as $k=>$v){

            $data[$k]['content'] = mb_substr($v['content'],0,31).'...';
        }

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
    public function add(Request $request, NoticeM $model)
    {
        if ($request->isPost()) {
            $param = $request->param();
            $param['create_time'] = time();
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
    public function edit($id, Request $request, NoticeM $model)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();

            $result = $data->save($param);
            return $result ? success() : error();
        }
        $this->assign([
            'data' => $data,
        ]);
        return $this->fetch('add');

    }

    //删除
    public function del($id, NoticeM $model)
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
    //启用
    public function enable($id, SlideM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 1]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //禁用
    public function disable($id, SlideM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 0]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }


}
