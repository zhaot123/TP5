<?php
namespace app\common\controller;
use think\Controller;
use think\facade\Request;
use think\facade\Response;
use think\exception\HttpResponseException;
//如果需要设置允许所有域名发起的跨域请求，可以使用通配符 *
//header('Access-Control-Allow-Origin:*');   // 指定允许其他域名访问
////// 响应头允许字段设置
//header('Access-Control-Allow-Headers:Authorization,TOKEN,DNT,X-Mx-ReqToken,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type, Accept-Language, Accept-Encoding');
//header('Access-Control-Allow-Methods: GET,PUT,POST,OPTIONS');//指定允许的提交方式
/*HTTP访问方式
 * GET：读取（Read）
 * POST：新建（Create）
 * PUT：更新（Update）
 * PATCH：更新（Update），通常是部分更新
 * DELETE：删除（Delete）
 * */
class BaseController extends Controller{
    public function __construct(){
        parent::__construct();//调用一下父类的构造函数
    }
    /**
     * 获取当前类名称
     * @param bool|false $all
     * @return string
     *
    public function getClassName($all = false){
        return $all ? get_called_class() : basename(str_replace('\\', '/', get_called_class()),'.php');
    }
    /**
     * 单图片上传
     * @param string    $save_path  要保存的uploads/images下目录
     * @param bool      $fileRename  保存的文件名(默认自动生成),如不为true则重命名文件名
     * @param bool      $replace  同名文件是否覆盖
     * return array 状态，信息，文件地址
     *
    public function uploadImage($path='',$fileRename=true,$replace=true){
        $file = request()->file('image');
        if ($file) {
            if (empty($path)){
                $save_path = 'uploads'.DIRECTORY_SEPARATOR.'images';
                $public_path = 'public'.DIRECTORY_SEPARATOR.$save_path;
            }
            else{
                $save_path = 'uploads'.DIRECTORY_SEPARATOR.'images'. DIRECTORY_SEPARATOR.$path;
                $public_path = 'public'.DIRECTORY_SEPARATOR.$save_path;
            }
            $info = $file->validate(['size' => 5242880, 'ext' => 'jpg,png,jpeg','type'=>'image/jpg,image/png,image/jpeg'])->move($public_path,$fileRename,$replace);
            if ($info) {
                $data['status'] = 1;
                $data['msg'] = '';
                $data['image_path'] = $save_path.'/'.str_replace('\\', '/', $info->getSaveName());
            } else {
                $data['status'] = 0;
                $data['msg'] = $file->getError();
                $data['image_path'] = '';
            }
        } else {
            $data['status'] = 0;
            $data['msg'] = '未检测到上传文件';
            $data['image_path'] = '';
        }
        return $data;
    }
    /**
     * 多图片上传
     * @param string    $path  要保存的uploads/images下目录
     * @param bool      $fileRename  保存的文件名(默认自动生成),如不为true则重命名文件名
     * @param bool      $replace  同名文件是否覆盖
     * return array 状态，信息，文件地址
     *
    public function uploadImages($path='',$fileRename=true,$replace=true){
        $files = $this->request->file('images');
        if ($files) {
            if (!is_array($files)) {
                $images[] = $files;
            } else {
                $images = $files;
            }
            if (empty($path)){
                $save_path = 'uploads'.DIRECTORY_SEPARATOR.'images';
                $public_path = 'public'.DIRECTORY_SEPARATOR.$save_path;
            }
            else{
                $save_path = 'uploads'.DIRECTORY_SEPARATOR.'images'. DIRECTORY_SEPARATOR.$path;
                $public_path = 'public'.DIRECTORY_SEPARATOR.$save_path;
            }
            $data = array();
            foreach ($images as $key => $value) {
                $info = $value->validate(['size' => 5242880, 'ext' => 'jpg,png,jpeg', 'type' => 'image/jpg,image/png,image/jpeg'])->move($public_path, $fileRename, $replace);
                if ($info) {
                    $data[$key] = $save_path . '/' . str_replace('\\', '/', $info->getSaveName());
                } else{
                    $data['status'] = 0;
                    $data['msg'] = $value->getError();
                    $data['image_path'] = '';
                    return $data;
                }
            }
            $data['status'] = 1;
            $data['msg'] = '';
            $data['image_path'] = serialize($data);
            return $data;
        }else {
            $data['status'] = 0;
            $data['msg'] = '未检测到上传文件';
            $data['image_path'] = '';
            return $data;
        }
    }

    /**
     * 单文件上传
     * @param string    $save_path  要保存的uploads/files下目录
     * @param bool      $fileRename  保存的文件名(默认自动生成),如不为true则重命名文件名
     * @param bool      $replace  同名文件是否覆盖
     * return array 状态，信息，文件地址
     *
    public function uploadFile($path='',$fileRename=true,$replace=true){
        $file = $this->request->file('file');
        if ($file) {
            if (empty($path)){
                $save_path = 'uploads'.DIRECTORY_SEPARATOR.'files';
                $public_path = 'public'.DIRECTORY_SEPARATOR.$save_path;
            }
            else{
                $save_path = 'uploads'.DIRECTORY_SEPARATOR.'files'. DIRECTORY_SEPARATOR.$path;
                $public_path = 'public'.DIRECTORY_SEPARATOR.$save_path;
            }
            $info = $file->validate([
                'size' => 10485760,
                'ext' => 'doc,docx,xls,xlsx,ppt,pptx,pdf,txt,zip,rar',
                'type'=>'application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/pdf,text/plain,application/zip,application/x-rar-compressed'
            ])->move($public_path,$fileRename,$replace);
            if ($info) {
                $data['status'] = 1;
                $data['msg'] = '';
                $data['image_path'] = $save_path.'/'.str_replace('\\', '/', $info->getSaveName());
            } else {
                $data['status'] = 0;
                $data['msg'] = $file->getError();
                $data['image_path'] = '';
            }
        } else {
            $data['status'] = 0;
            $data['msg'] = '未检测到上传文件';
            $data['image_path'] = '';
        }
        return $data;
    }/
    /**
     * 空操作
     */
    public function _empty(){
        return $this->responseReturn(4040,[],'',[],404);
    }

    /**
     * 定义返回码的massage名称
     * GET: 200 OK
     * POST: 201 Created
     * PUT: 200 OK
     * PATCH: 200 OK
     * DELETE: 204 No Content
     * GET：读取（Read）
     * POST：新建（Create）
     * PUT：更新（Update）
     * PATCH：更新（Update），通常是部分更新
     * DELETE：删除（Delete）
     */
    static protected $returnCode=[
        1010 => '注册成功',
        1011 => '注册失败',
        1012 => '账号已存在',
        1020 => '登录成功', //用户登录成功
        1021 => '登录失败,账号不存在',
        1022 => '登录成功,未绑定手机号', //已注册成功,未绑定手机,跳转到绑定手机
        1023 => '登录失败,密码错误',
        1024 => '登录失败,账号被冻结',
        1025 => '登录失败',
        1030 => '发布成功',
        1031 => '发布失败',
        1040 => '验证码发送成功',
        1041 => '验证码发送失败',
        1042 => '验证码已过期',
        1043 => '验证码错误',
        1050 => '提现成功',
        1051 => '提现失败',
        1052 => '提现账户信息错误',
        1060 => '充值成功',
        1061 => '充值失败',
        1070 => '支付成功',
        1071 => '支付失败',
        2000 => '获取成功', //GET获取数据成功
        2001 => '更新成功', //POST更新数据成功
//        2002 => '更新成功', //PUT更新数据成功
//        2003 => '更新成功', //PATCH更新部分数据成功
        2004 => '更新失败', //更新失败
        2010 => '创建成功', //Created添加数据成功
        2011 => '创建失败', //Created添加数据失败
        2012 => '添加成功',
        2013 => '添加失败',
        2040 => '删除成功', //DELETE请求删除成功
        2041 => '删除失败', //DELETE请求删除失败
        4010 => 'Token错误或已过期,请重新登录', //用户未提供身份验证凭据，或者没有通过身份验证。
//        4020 => '密钥已刷新',
        4030 => '无此访问权限', //用户通过了身份验证，但是不具有访问资源所需的权限。
        4040 => '无效的请求', //所请求的资源不存在，或不可用
//        4050 => '错误的HTTP请求方法',//用户已经通过身份验证，但是所用的 HTTP 方法不在他的权限之内。
//        4100 => '数据已不存在', //所请求的资源已从这个地址转移，不再可用。
        4220 => '上传的附件无法处理', //客户端上传的附件无法处理，导致请求失败。
        4221 => '上传文件为空', //客户端上传的附件无法处理，导致请求失败。
        4223 => '上传成功', //客户端上传的附件无法处理，导致请求失败。
//        4221 => '上传的附件不符合要求', //上传的附件不符合要求
//        4230 => '数据被锁定请重新提交', //更新时数据被锁定（详情见tp5进阶的乐观锁https://www.kancloud.cn/mikkle/thinkphp5_study/359349）
//        4240 => '请求失败',
        4241 => '请求参数错误', //如参数不完整,类型不正确
//        4290 => '请不要重复请求', //客户端重复提交
        5000 => '系统错误,未知服务器消息', //客户端请求有效，服务器处理时发生了意外
        5030 => '服务器维护中', //服务器无法处理请求，一般用于网站维护状态
    ];
    /**
     * 定义返回码的数组名称
     */
    static protected $returnCodeName=[
        'code'  =>'code',
        'data'  =>'data',
        'msg'   =>'msg',
    ];
    /**
     * 默认的返回码
     */
    static protected $defaultCode = [
        'code' => 5000,
        'msg' => '未知信息',
        'data' => [],
    ];
    /**
     * 返回码方法
     * @param int $code 返回码
     * @param array $data 返回值
     * @param string $msg 返回消息的说明
     * @param array $header header头附加信息
     * @param int $http http状态码
     * @return array
     */
    static public function responseReturn($code = 0,$data = [],$msg = '',$header=[],$http=200){
        $returnCode = self::$defaultCode;

        if ($code == 0) {
            return $returnCode;
        }else{
            $returnCode['code'] = $code;
        }
        if(!empty($data)){
            $returnCode['data'] = $data;
        }
        if($code == 2004){
            $returnCode['data'] = (object)$returnCode['data'];
        }elseif($code == 1025){
            $returnCode['data'] = (object)$returnCode['data'];
        }
        if(!empty($msg)){
            $returnCode['msg'] = $msg;
        }else if (isset(self::$returnCode[$code]) ) {
            $returnCode['msg'] = self::$returnCode[$code];
        }
        //$api = self::Apilog($data,$msg,$code);
        $return = [
            self::$returnCodeName['code'] => $returnCode['code'],
            self::$returnCodeName['data'] => $returnCode['data'],
            self::$returnCodeName['msg'] => $returnCode['msg'],
        ];
//        if (!empty($append)&& is_array($append)){
//            $return = array_merge($return,$append);
//        }
//        exit(json_encode($return,JSON_UNESCAPED_SLASHES));//JSON_UNESCAPED_SLASHES可以避免json格式出现的转义
        $response = Response::create($return, 'json', $http,$header);
        throw new HttpResponseException($response);
    }

    static public function Apilog($aa="",$res="",$code=''){

        $module = Request::module();
        $controller = Request::controller();
        $action = Request::controller();
        $Ymd=date("Ymd");
        $myfile = fopen("test_log".$Ymd."11.txt", "a") or die("Unable to open file!");
        $qq = $_REQUEST;
        $time=date("Y-m-d H:i:s");
        fwrite($myfile, "请求时间：".$time."\r\n请求数据：".json_encode($qq)."\r\n接口名称：".$module.'/'.$controller.'/'.$action."\r\n返回信息：".$res."\r\n返回码：".$code."\r\n返回数据".json_encode($aa)."\r\n********************************************************************************************************************************************************************************************************\r\n");
		
    }


}
