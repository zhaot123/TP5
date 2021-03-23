<?php
/**
 * 商品分类控制器
 */

namespace app\picture\controller;

use app\picture\model\CateM;
use app\picture\model\PictureM;
use app\picture\validate\CateV;
use think\Request;
use app\admin\controller\Controller;


class Cate extends Controller
{

    //列表
    public function index(Request $request, CateM $model)
    {
        //查询所有菜单并以树的形式显示
        $result = $model->order('sort asc, id asc')->column('*', 'id');

        foreach ($result as $n => $r) {
            $result[$n]['level']          = $this->getLevel($r['id'], $result);
            $result[$n]['parent_id_node'] = $r['parent_id'] ? ' class="child-of-node-' . $r['parent_id'] . '"' : '';
            $result[$n]['str_manage']     = '<a href="' . url('edit', ['id' => $r['id']]) . '" class="btn btn-primary btn-xs" title="修改" data-toggle="tooltip"><i class="fa fa-pencil"></i></a> ';
            $result[$n]['str_manage']     .= '<a class="btn btn-danger btn-xs AjaxButton" data-id="' . $r['id'] . '" data-url="del.html"  data-confirm-title="删除确认" data-confirm-content=\'您确定要删除ID为 <span class="text-red"> ' . $r['id'] . ' </span> 的数据吗\'  data-toggle="tooltip" title="删除"><i class="fa fa-trash"></i></a>';
            $result[$n]['status']        = (int)$r['status'] === 1 ? '启用' : '禁用';
            $result[$n]['is_index']        = (int)$r['is_index'] === 1 ? '启用' : '禁用';

            $result[$n]['class']        = (int)$r['status'] === 1 ? 'class="btn btn-success"' : 'class="btn btn-warning"';
        }

        $str = "<tr id='node-\$id' data-level='\$level' \$parent_id_node><td><input type='checkbox' onclick='checkThis(this)'
                     name='data-checkbox' data-id='\$id\' class='checkbox data-list-check' value='\$id' placeholder='选择/取消'></td>
                    <td>\$id</td>
                    <td>\$spacer\$name</td>
                    <td>
                    <img alt= ''src='\$attachment' class ='pimg' style='height: 80px'>
                    <div id='outerdiv' style='position:fixed;top:0;left:0;background:rgba(0,0,0,0.7);z-index:2;width:100%;height:100%;display:none;'>
                        <div id='innerdiv' style='position:absolute;'>
                        <img id='bigimg' style='border:5px solid #fff;' src='' />
                        </div>
                    </div>
                    </td>
                    <td>\$sort</td>
                    <td>\$status</td>
                    <td>\$is_index</td>
             
                    <td class='td-do'>\$str_manage</td>
                    </tr>";

        $this->initTree($result);
        $data = $this->getTree(0, $str);

        $this->assign('data', $data);
        return $this->fetch('index');
    }

    //添加
    public function add(Request $request, CateM $model,  CateV $validate)
    {
        if ($request->isPost()){
            $param = $request->param();

            $validate_result = $validate->scene('add')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            //处理附件id上传
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
        $parent_id = $request->param('parent_id') ?? 0;
        $parents   = $this->menu($parent_id);
        $this->assign([
            'parents'    => $parents,
        ]);
        return $this->fetch('add');
    }

    //修改
    public function edit($id, Request $request, CateM $model, CateV $validate)
    {

        $data = $model::get($id);
        if ($request->isPost()) {
            $param = $request->param();
            $validate_result = $validate->scene('edit')->check($param);
            if (!$validate_result) {
                return error($validate->getError());
            }
            //处理附件id上传
            if (!empty($_FILES['attachment']['name'])) {
                $attachment_attachment = new \app\common\model\Attachment;
                $file_attachment = $attachment_attachment->upload('attachment');
                if ($file_attachment) {
                    $param['attachment'] = $file_attachment->url;
                }
            }

            $result = $data->save($param);
            return $result ? success() : error();
        }

        $parent_id = $data->parent_id;
        $parents   = $this->menu($parent_id);
        $this->assign([
            'parents'=> $parents,
            'data' => $data
        ]);

        return $this->fetch('add');
    }

    //删除
    public function del($id, CateM $model,PictureM $PM)
    {
        if($id == 1){
            error('此分类不能删除');
        }
        $count = $PM->where('cate_id',$id)->count();
        if($count>0){
            error('当前分类下商品不为空');
        }
        $result = $model->whereIn('id', $id)->delete();

        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //启用
    public function enable($id, CateM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 1]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //禁用
    public function disable($id, CateM $model)
    {
        $result = $model->whereIn('id', $id)->update(['status' => 0]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //首页显示此分类
    public function index_enable($id, CateM $model, CateV $validate)
    {

        $result = $model->whereIn('id', $id)->update(['is_index' => 1]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //取消首页显示此分类
    public function index_disable($id, CateM $model)
    {
        $result = $model->whereIn('id', $id)->update(['is_index' => 0]);
        return $result ? success('操作成功', URL_RELOAD) : error();
    }
    //菜单选择 select树形选择
    protected function menu($selected = 1, $current_id = 0)
    {
        $result = CateM::where('parent_id', '=', 0)->order('sort', 'asc')->order('id', 'asc')->column('id,parent_id,name,sort', 'id');
        foreach ($result as $r) {
            $r['selected'] = (int)$r['id'] === (int)$selected ? 'selected' : '';
        }
        $str = "<option value='\$id' \$selected >\$spacer \$name</option>";
        $this->initTree($result);
        return $this->getTree(0, $str, $selected);
    }
    //ajax返回分类等级
    public function ajaxLevel($id,CateM $model){
        $level = $model->getValueByWhere(['id'=>$id], 'level');
        return (int)$level;
    }

}
