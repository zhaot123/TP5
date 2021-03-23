<?php
/**
 * Created by PhpStorm.
 * User: WangChao
 * Date: 2019/8/23 0023
 * Time: 16:50
 */
namespace app\api\controller;
use app\common\controller\BaseController;
use app\user\model\UserM;
use think\facade\Request;
use app\api\traits\ApiAuth;

class ApiBase extends BaseController {
    use ApiAuth;
    protected $aliApiConfig = [];
    protected $authExcept = [];//无需验证登录的方法，禁止在此处修改,请在具体业务Controller中修改
    protected $uid = 0;//当前访问的用户
    protected $page;//当前页码
    protected $pagesize; //每页数据量
    protected $param;//当前请求的参数，get/post都在其中
    protected $id;//当前请求数据的ID
    protected $sort;//默认的排序顺序
    protected $startpage;//开始的页数

    public function __construct(){
        parent::__construct();//调用一下父类的构造函数
        //jwt验证
        $this->jtwInit();
        $this->checkToken();
        //初始化基本数据
        
        $this->param = config('app_debug') ? Request::param() : (Request::param());
        $this->page  = $this->param['page'] ?? 1;
        $this->pagesize = $this->param['pagesize'] ?? 10;
        $this->sort = "sort desc,create_time desc";
        $this->startpage = ( $this->page - 1)*$this->pagesize;
        $this->id    = $this->param['id'] ?? 0;
        //limit防止过大处理
        $this->pagesize = $this->pagesize <= 100 ? $this->pagesize : 100;
        if(!empty($_SERVER['HTTP_AUTHORIZATION'])){
            $token = substr($_SERVER['HTTP_AUTHORIZATION'],7,300);
            $this->user_info = UserM::where("token",$token)->find();

            if(empty($this->user_info)){
                responseReturn(1025,[],"登录状态失效,请重新登录");
            }

            if($this->user_info['status'] != 1){
                responseReturn(1025,[],"用户被封禁");
            }


        }

    }
    public function getImgUrl($url){

        $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
        $urls = "$protocol$_SERVER[HTTP_HOST]".$url;
        return $urls;
    }
    public function getAliApiConfig(){
        $this->aliApiConfig = [];
    }
    /**
     * 空操作
     */
    public function _empty(){
        return $this->responseReturn(4040,[],'',[],404);
    }

    /**
     * CURL请求
     * @param string $url 请求url地址
     * @param string $method 请求方法 get post
     * @param array null $postFields post数据数组
     * @param array $headers 请求header信息
     * @param bool|false $debug  调试开启 默认false
     * @return mixed
     */
    public static function httpRequest($url, $method="GET", $postFields = null, $headers = array(), $debug = false) {
        $method = strtoupper($method);
        $curl = curl_init();//初始化一个cURL会话
        //Curl settings
        curl_setopt($curl, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_0);//强制使用 HTTP/1.0
        curl_setopt($curl, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.2; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0");//在HTTP请求中包含一个"User-Agent: "头的字符串。
        curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, 60); //在发起连接前等待的时间，如果设置为0，则无限等待
        curl_setopt($curl, CURLOPT_TIMEOUT, 7); //设置cURL允许执行的最长秒数
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);//将curl_exec()获取的信息以文件流的形式返回，而不是直接输出。
        switch ($method) {
            case "POST":
                curl_setopt($curl, CURLOPT_POST, true);//设置访问方式为POST
                if (!empty($postFields)) {
                    $tmpDataStr = is_array($postFields) ? http_build_query($postFields) : $postFields;
                    curl_setopt($curl, CURLOPT_POSTFIELDS, $tmpDataStr);//POST的数据数组
                }
                break;
            default:
                curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);//设置访问方式为GET
                break;
        }
        $ssl = preg_match('/^https:\/\//i',$url) ? TRUE : FALSE;
        curl_setopt($curl, CURLOPT_URL, $url);//需要获取的URL地址，也可以在curl_init()函数中设置
        if($ssl){
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE); // https请求 不验证证书和hosts
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE); // 不从证书中检查SSL加密算法是否存在
        }
        //curl_setopt($ci, CURLOPT_HEADER, true); //启用时会将头文件的信息作为数据流输出
        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);//启用时会将服务器服务器返回的"Location: "放在header中递归的返回给服务器
        curl_setopt($curl, CURLOPT_MAXREDIRS, 2);/*指定最多的HTTP重定向的数量，这个选项是和CURLOPT_FOLLOWLOCATION一起使用的*/
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);//设置HTTP头字段的数组
        curl_setopt($curl, CURLINFO_HEADER_OUT, true);//启用时追踪句柄的请求字符串。
        //curl_setopt($ci, CURLOPT_COOKIE, $Cookiestr); //设定HTTP请求中"Cookie: "部分的内容。多个cookie用分号分隔，分号后带一个空格
        //Curl settings 结束
        $response = curl_exec($curl);//执行一个cURL会话
        $requestInfo = curl_getinfo($curl);//获取一个cURL连接资源句柄的信息
        $http_code = curl_getinfo($curl, CURLINFO_HTTP_CODE);//最后一个收到的HTTP代码
        if ($debug) {
            echo "=====post data======\r\n";
            var_dump($postFields);
            echo "=====info===== \r\n";
            print_r($requestInfo);
            echo "=====response=====\r\n";
            print_r($response);
        }
        curl_close($curl);//关闭一个cURL会话
        return $response;
        //return array($http_code, $response,$requestinfo);
    }






}
