<?php
/**
 * Created by PhpStorm.
 * User: wangchao
 * Date: 2019/6/15 0015
 * Time: 14:05
 */
namespace app\common\validate;
use app\lib\exception\ZException;
use think\Validate;
use app\common\controller\BaseController;

class BaseValidate extends Validate{
    //构建接口参数
    public function checkData($scene,$params){
        $result = $this->scene($scene)->check($params);
        if(!$result){
//            $e = new ZException([
//                'msg' => $this->getError(),
//            ]);
//            throw $e;//异常拦截
            return responseReturn(4241,[],'错误：'.$this->getError());//状态码返回
        }else{
            return true;
        }
    }

}
