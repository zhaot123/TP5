<?php
namespace app\api\controller;

use app\picture\model\PictureM;
use app\shop\model\OrderM;
use app\user\controller\User;

class AliPay extends ApiBase
{


    protected $authExcept = ['','aliPay','notify'];
    /*
     * 小程序微信支付单个支付
     * order_id  订单id
     * */
    public function aliPay($order_id,$fee )
    {

        $model = new OrderM();
        $order = $model->get($order_id);

        if($order['status'] > 1){
            responseReturn(2004,[],'订单状态不正确');
        }

        $params = new \Yurun\PaySDK\AlipayApp\Params\PublicParams();

        $params->appID = "2021001168609148";
        //$params->sign_type = 'RSA2'; // 默认就是RSA2
        $params->appPrivateKey = 'MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCymMCVaSVQqkpMTF
+Nmqx0XEHiui9h
+xD3O8uolXOcfZyPdi1KtEdfcO3FI6EHO2Kmqd9XSggr9D8/mWkCAI18xn8Lr15o49njM7+Kdz
T29lnMJISKma3QfstmIvp+nsy51WYeaTyhWQXlvZyNU41qDgFHSJGZCDHP4t3Bm+8gJpfIl
+b4CI0mbYehx3/JV8UEePKM3NBvOMjmX6ydoxHVrijwfGXiSKZFyIpyzoFXO0wFltgN4jVfVzZ
gowBEjsBELjlhtaW056ck8gUn0jc3/VqoMTGsdcXRQ06u6vzLGESqrws0AIEt
+Nx3aU4BWzTBkUL+WRZXxoA2MZKtS
+1jAgMBAAECggEATe7mKsylIdwNa9nv4GTcWDJh9cP1JTZfouMO7dO5jVIq3VdeUDj25CjtOJd
hjzxUwhFiij6d7kA40VHqRptjIk2j5r9x3SeATuqn7I40KIg7ix9sTubcuBx8OWeOE27MO1Npq
l
+Vu3qTXjstc2ZAUUUnPannDvZKdkKzLecTo903ZVRVJ67sty57fAVdH5C4dXLElf6TtCSFjsh8
dLXxYkQz5Z1YaWIu3qiEfoiU
+0EGcijFOoE9tFX9/8m4eJiTW/CtvJSlSgoZT5BwIH5P4pFl9cFJODuxO
+wJabnKDikaGrMv9SQdzxfm7C2ROBesNTtnYd6an
+rWEVxCUDTvgQKBgQDxaz7wsKYnYWuuC3mhNoVTAjAxyprbniak6VESRqANH
+pd63RX3Ak/pwynpYrfNlUAGgwwHGaUoV95vqiJcKk1UEalq89tG5ZSWJUXzbX+ivvgStv
+WBq8J
+3DNMnvYAPwkQIzkuExCbSfmdpWkGvVrTecFpDEOUrxW5cAMDHBoQKBgQC9Yip7CDPmIrh1Sb3
qj3m76ZWhMDo
+H9yKZuIjRZstmXIG6HJULl0eP0dcUgIFmdrE/WX1qxCZjHe5kr7BEfC3Ah6YzT3psVThxbSH8
Gepp
+15p/Fc2ggh0QhMPpuMkX1Y4dveVxdflNhsc6x1cq58qmbSxm2+SVSHYu9UYLbYgwKBgQCZ4R8
MMbymi00kccIERQk0QMfRZO/SHntJUEJRoNyxoO81EDhnLCRlAyhoz3a2Eh6Z4wBzxhaIlFeT9
Tfd6wafqdxuCxY62IO3VykpNADWD2a+r1iMRUI9PkIp08MHJi88rmE12GBbbnFH7bwiwwlI
+JDil+uMd2xSbWvRPebpIQKBgGckiLhbHlDvhgCy+dE
+9PDn5ctVBdOB7M4f/HdzWHF8ScMDZAj++04W7pmUPG+qfKCe1aH32eGWxDn4dxWV3MD/UYSs
+1REdVNFJu6Gex7GS6rfUa/dO2KXguprirIDJv56fBHa4ur2mOxwD3Qj0m4pLDkNQwXI0FWwB2
KwDcVbAoGBANEJsR39aYrEmsBeCT7zvTXNFadF6hAkwzKDIDZL2HC7ghDa3pQuyQCWqeifxT5t
cCsVr5KdPZ6ILqN/anlvkY0Wzkjg7COV7B5XM89M3jcLqwIef6ETvI3A3HS2o1n5pxEF6+dSm8
CgCnM1AomMcncNhX5/cvAFeHohF7W7+UUp';
        // $params->appPrivateKeyFile = ''; // 证书文件，如果设置则这个优先使用
        // $params->apiDomain = 'https://openapi.alipaydev.com/gateway.do'; // 设为沙箱环境，如正式环境请把这行注释

        // SDK实例化，传入公共配置

        $pay = new \Yurun\PaySDK\AlipayApp\SDK($params);

        // 支付接口
        $request = new \Yurun\PaySDK\AlipayApp\App\Params\Pay\Request;

        $request->notify_url = "http://{$_SERVER['HTTP_HOST']}/api/ali_pay/notify"; // 支付后通知地址（作为支付成功回调，这个可靠）

        $request->businessParams->out_trade_no = $order['order_pay_no']; // 商户订单号
        $request->businessParams->total_amount = $fee; // 价格
        $request->businessParams->total_amount = 0.01; // 测试价格
        $request->businessParams->subject = '1'; // 商品标题

        // 处理
        $pay->prepareExecute($request, $url, $data);

        $result['data'] = http_build_query($data);
        $result['money'] = $request->businessParams->total_amount;
        responseReturn(2000,$result);
    }
    public function notify(){
        $params = new \Yurun\PaySDK\AlipayApp\Params\PublicParams;
        $params->appPublicKey = 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAspjAlWklUKpKTExfjZqsdFxB4rovYf
sQ9zvLqJVznH2cj3YtSrRHX3DtxSOhBztipqnfV0oIK/Q/P5lpAgCNfMZ/C69eaOPZ4zO/inc0
9vZZzCSEipmt0H7LZiL6fp7MudVmHmk8oVkF5b2cjVONag4BR0iRmQgxz+LdwZvvICaXyJfm
+AiNJm2Hocd/yVfFBHjyjNzQbzjI5l
+snaMR1a4o8Hxl4kimRciKcs6BVztMBZbYDeI1X1c2YKMARI7ARC45YbWltOenJPIFJ9I3N/1a
qDExrHXF0UNOrur8yxhEqq8LNACBLfjcd2lOAVs0wZFC/lkWV8aANjGSrUvtYwIDAQAB';
        $params->appPrivateKey = 'MIIEpAIBAAKCAQEAgX/rOZJNJu6cdrUhnQ6ls7+6PdbHF9NWIGlmGh0knZhPWG/Z0lqwFo
+NTRldhrcJPqdzhms2REFN5/cJKTgUr0hYLi9308g1UkXgLurzZi0ZaHyWjX1SYHE9JEkZHzSA
EzjPGKGvit9UbamjTaGZqN2ruKwUG3okUTEqHt0dx7Ly0dYKIt6f1ZFnP4KGT3IaclLOU5LyGS
TU8Io2hjytzylB3mr+oJ3chCtmUunLty6E4tWaYRGRXHKwSXAEZxhLi
+hAzih0ajvW9qSoKchtn2CIwZIkNUyoplc62TluOfTm/kfrhI7IjhzQj8mZMQX9w2vczQtUujL
8tlMy7fZtIQIDAQABAoIBACyhIzXyH7i9HxsiDXWNKLor50mMjYy
+fr4o1NFHHelaJm46Df2a13jO/EmH5l2ZEwyOtResN0WKpAi/cF7OPwKxkgJIxaktJIM4JazFu
CCMhmcmGNSmTg
+CtymcL5Y7h7AYMfcxMchQc05f2jHU8Znq21WHqF5X19BLe1Krram2mq4oXYnZ65GBufJgROAL
xtwI3hWJ7/a9eG1Y/3Rodio4qRTNtxMIQnx2kx5oY8hDrw9V2//kwHUVWyBgrP4NDt1pYprFyd
VkNwEaFRH6yh2M4xlZMMswYXu3VNse2VOcbwNFDs84HpGtKqLqjV54pID6Mmtl90/jrXSvl1nK
GgECgYEAvitVT3pnTAXgmoC1hlasaLvnO5FVNB
+4bUaw8fNjzeJDUJWBrn/E2LvzWmZyKs1j9YGHHst//jil9zfNT9DwVmEQ3uC3cLZ2p4vQKw
+rNHyB9C0ZQt7MExCnIpKvrr1cfNQRanwI9wh
+3UcXtKtxrgB2XGNyjuezj5QaXcioSNECgYEArlQW6gLO0DO8jGjn5MnFrxXKmZmkEz9AB1WBE
6NfriL/4jdPr+ss314dzPvR2ULABtVt0ZfIHLglrGCX962j
+Ap9bp7MbmoBTHbDpMtoxw/5klsSO9m98QHgmY0cF+m0G
+pJKN7qLRV/40dd2xR2GwPrjoowtuKU2xiwbvBJ81ECgYEArtthYecGvBxbXTUjtBZWCSddgqQ
rV/YiujfZ018cUd7OTnZp+214LmEDbgfsyfZ5BvDGsUYktjiYQiyJF
+7iTkqKHKU7huP/Tid8jVum7GffhglBxP7fXlhdlaiS6XUsaYsFSIgsJhklrYkE/xb1PC0op
+K5HzVlIYvogntSYUECgYBy18a4ptzj4BFoVnveBuaKL0rm4YZrf5GIw1VjQI95wmjb
+CAw/jbzd6ceMQ7Pl9+1IMlV
+C3GbbGz23aBngyVDSQQyeBXJNJyMxMz7yS5bta1CfX7I7izms8BmSpWvoj
+kttbZ27SAIXdjlhQSSx9I5n8ryDkemQh6iPhEb9F4QKBgQCRBe/Wwzmv5OgDPS0N
+pTDeVEpzWQaxJlEOYZ7y4YHrFu0zgmn2UQss2FGIEFtCrezQEp7xqs9ztxaHtTiHv/zYuUs9h
4S
+0/QPg/eHGWC6aenp5JnQKF/yMzdOzbXa0At8IovGeNxukcStOT0KYEFCXMjvmOJFW7eF8fe1G
1sjw==';
        // SDK实例化，传入公共配置
        $pay = new \Yurun\PaySDK\AlipayApp\SDK($params);

        $content = var_export($_POST, true) . PHP_EOL . 'verify:' . var_export($pay->verifyCallback($_POST), true);

       

        $content = $_POST;
		$model = new PictureM;
        $order = $model::field('id,user_id,status,total_price,pay_status,original_price,premium_rate')->where(['order_no'=>$content['out_trade_no']])->select();
        //未上架  审核
		 file_put_contents('aligood_notify_result.txt', $order);
		 //如果不是传的order_no 就是order_pay_no
		 if(empty($order)){
             $order = $model->field('id,user_id,status,total_price,pay_status,original_price,premium_rate')->where(['order_pay_no'=>$content['out_trade_no']])->select();
         }
		 foreach($order as $k=>$v){
             if($v['status'] == 1 && $v['pay_status'] == 0){
                 $data = [
                     'pay_status' =>1,
                     'status' =>2,
                     'pay_type' =>2,

                 ];
                 $v->save($data);

             }
         }

        echo 'success';

    }




}