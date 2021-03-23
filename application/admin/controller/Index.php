<?php
/**
 * 后台首页控制器
 * @author yupoxiong<i@yufuping.com>
 */

namespace app\admin\controller;

use app\admin\model\AdminLogM;
use app\admin\model\AdminMenuM;
use app\admin\model\AdminRoleM;
use app\admin\model\AdminUserM;
use app\user\model\UserM;
use tools\SystemInfo;
use think\Request;

class Index extends Controller
{
    public function index(Request $request)
    {

        $index_config = config('admin.index');

        //默认密码修改检测
        $password_danger = 0;
        if ($index_config['password_warning'] && $this->user->id == 1 && password_verify('super-admin', base64_decode($this->user->password))) {
            $password_danger = 1;
        }

        /**
         * 首页数据展示，可自行替换
         */

        $this->assign([
            //后台用户数量
            'admin_user_count' => AdminUserM::count(),

            //后台角色数量
            'admin_role_count' => AdminRoleM::count(),
            //后台角色数量
            'user_count' => UserM::where("delete_time",0)->count(),
            //后台菜单数量
            'admin_menu_count' => AdminMenuM::where("is_show",1)->count(),
            //            //后台日志数量
            'admin_log_count'  => AdminLogM::count(),
        ]);


        //是否首页显示提示信息
        $show_notice = $index_config['show_notice'];
        //提示内容
        $notice_content = $index_config['notice_content'];


        $this->assign([
            //系统信息
            'system_info'     => SystemInfo::getSystemInfo(),
            //访问信息
            'visitor_info'    => $request,
            //默认密码警告
            'password_danger' => $password_danger,
            //当前用户
            'user'            => $this->user,
            //是否显示提示信息
            'show_notice'     => $show_notice,
            //提示内容
            'notice_content'  => $notice_content,
        ]);
        return $this->fetch();
    }


}
