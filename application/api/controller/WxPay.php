<?php
namespace app\api\controller;

use app\picture\model\PictureM;
use app\shop\model\OrderM;
use app\user\controller\User;

class WxPay extends ApiBase
{

    private $appid = 'wx396bde5376cd66eb';
    //商户号（注册商户平台时，发置注册邮箱的商户id）
    private $mchid = '1563539451';
    //商户平台api支付处设置的key
    private $key = 'evgbqcqvwm3l0ohlil4b6r4550o3gzaw';
    protected $authExcept = ['','wxPay','notify'];

    /*
     * 小程序微信支付单个支付
     * order_id  订单id
     * */
    public function wxPay($order_id,$fee)
    {

        $model = new PictureM;
        $order = $model->get($order_id);

        if($order['status'] > 1){
            responseReturn(2004,[],'订单状态不正确');
        }

        $url= "http://{$_SERVER['HTTP_HOST']}/pho/pay/notify";
        // $param['total_price'] = $param['total_price']*100;
        //传入公共配置
        $params = new \Yurun\PaySDK\Weixin\Params\PublicParams;
        $params->appID = $this->appid;
        $params->mch_id = $this->mchid;
        $params->key = $this->key;

        //SDK实例化，传入公共配置
        $pay = new \Yurun\PaySDK\Weixin\SDK($params);
        //支付接口
        $request = new \Yurun\PaySDK\Weixin\APP\Params\Pay\Request;
        $request->body = '农梦商城';            // 商品描述
        $request->out_trade_no = $order['order_pay_no'];     // 订单号
        $request->total_fee = $fee * 100;                // 订单总金额，单位为：分
        $request->total_fee = 1;                // 订单总金额，单位为：分
        $request->spbill_create_ip = $_SERVER['REMOTE_ADDR']; // 客户端ip，必须传正确的用户ip，否则会报错
        $request->notify_url = "{$url}"; // 异步通知地址
        $request->signType = "MD5";
        $request->attach = $order['user_id'];


        // 调用接口
        $result = $pay->execute($request);

        if($pay->checkResult())
        {
            $clientRequest = new \Yurun\PaySDK\Weixin\APP\Params\Client\Request;
            $clientRequest->prepayid = $result['prepay_id'];

            $pay->prepareExecute($clientRequest, $url, $data);

            unset($data['sub_appid']);
            unset($data['sub_mch_id']);
            responseReturn(2000,$data);
        }
        else
        {
            responseReturn(2004,$pay->getErrorCode() . ':' . $pay->getError());
        }
        exit;
    }

    /*
     * 回调
     * */
    public function notify()
    {
        $params = new \Yurun\PaySDK\Weixin\Params\PublicParams;
        $params->appID = $this->appid;
        $params->mch_id = $this->mchid;
        $params->key = $this->key;
        // SDK实例化，传入公共配置
        $xmlData = file_get_contents('php://input');
        libxml_disable_entity_loader(true);
        $arr = json_decode(json_encode(simplexml_load_string($xmlData, 'SimpleXMLElement', LIBXML_NOCDATA)), true);
        file_put_contents('wx_result.txt', $arr . PHP_EOL, FILE_APPEND);
        if ($arr['result_code'] == 'SUCCESS') {
            $model = new OrderM();
            $order = $model->where('order_pay_no')->select();
            if ($order['status'] == 1) {
                foreach ($order as $k => $v) {
                    $data = [
                        'pay_status' => 1,
                        'status' => 2,
                        'pay_type' => 1,
                    ];
                    $result = $v->save($data);
                }
                return "OK";
            }

        }


    }





}