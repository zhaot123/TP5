<?php
/**
 * 访问空控制器，用于访问不存在的控制器跳转
 * @author yupoxiong <i@yufuping.com>
 */

namespace app\admin\controller;

class Error extends Controller
{
    public function index()
    {
        $this->admin['title'] = '404';
        return $this->fetch('template/404');
    }

}
