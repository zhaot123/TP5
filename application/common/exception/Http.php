<?php
/**
 * 接管异常
 */
namespace app\common\exception;
use Exception;
use think\exception\Handle;
use think\facade\Request;
use think\facade\Log;

class Http extends Handle{
    //定义成员变量
    private $code;
    private $msg;
    public function render(Exception $e){
        //处理api模块异常
        if(request()->module()==='api'){
            //处理跨域请求问题
            if (config('api.cross_domain.allow')) {
                if (request()->isOptions()){
                    $header = config('api.cross_domain.header');
                    return json([],200,$header);
                }
            }
            if (config('app_debug') == true){//如是开启调试
                $this->code = 5000;
                $this->msg = $e->getMessage();
            }
            else {//如是关闭调试，是未知错误，我们只需要统一回复
                $this->code = 5000;
                $this->msg = '系统错误,未知服务器消息';
//                $this->recordErrorLog($e); //记录到日志中
            }
            $request = Request::instance(); //参数实例
            //取出访问时的URL
            $data = [
                'url'  => $request->url(),//取出访问时的URL
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ];
            $result =[
                'code' => $this->code,
                'msg' => $this->msg,
                'data' => $data
            ];
            return json($result,$this->code);
        }
        // 其他错误交给系统处理
        return parent::render($e);
    }
    //日志
    private function recordErrorLog(\Exception $e){
        Log::init([
            // 日志记录方式，支持 file socket 或者自定义驱动类
            'type' => 'File',
            //日志保存目录
            'path' => dirname(dirname(__FILE__)).'/logs/',
            //单个日志文件的大小限制，超过后会自动记录到第二个文件
            'file_size'    => 2097152,
            //日志的时间格式，默认是` c `
            'time_format'   => 'c',
            // 最大日志文件数量
            'max_files'   => 10,
        ]);
        Log::record($e->getMessage(),'error');
    }
}
