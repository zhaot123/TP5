<?php
/**
 * Created by PhpStorm.
 * User: wangchao
 * Date: 2019/7/12 0012
 * Time: 17:55
 */
require_once 'log.php';
require_once 'AopClient.php';
//初始化日志
$logHandler= new CLogFileHandler(dirname(dirname(__FILE__))."/logs/".date('Y-m-d').'.log');
$log = Log::Init($logHandler, 15);
$data = $_POST;
if (empty($data)){
//    Log::INFO('无返回');
    echo "fail";exit();
}
//支付宝公钥，账户中心->密钥管理->开放平台密钥，找到添加了支付功能的应用，根据你的加密类型，查看支付宝公钥
$aop = new AopClient;
//验证签名
$result = $aop->rsaCheckV1($data,null,'RSA2');
//Log::INFO('$result:'.$result);
if($result==1){
//    Log::INFO(2);
    try {
        //创建实例对象，连接数据库
        $pdo = new PDO('mysql:dbhost=127.0.0.1;dbname=zs','zs','GMnBWDWGrrEyCKYs');
//            Log::INFO('连接成功');
    } catch (PDOException $e) {
        Log::INFO($e->getMessage());
//        var_dump($e->getMessage());exit();
    }
    $out_trade_no = $data['out_trade_no'];
    $error_msg_sql = "UPDATE `lb_lvbo_order` SET error_msg=:error_msg WHERE `orderno`=:out_trade_no";//更新订单支付失败错误原因
    //1、签名验证通过后需做以下操作，所有操作全部判定成功后才视为支付成功。

    //1-1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号；

    //1-2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额）；

    //1-3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email）；

    //1-4、验证app_id是否为该商户本身。
    if ($data['app_id'] != $aop->appId){
//        Log::INFO(3);
        echo "fail";exit();
    }
    //TODO 3、处理业务逻辑
//    Log::DEBUG("call back:" . json_encode($data));
    $select_sql = "SELECT *  FROM `lb_lvbo_order` WHERE `orderno` =$out_trade_no";//查询订单
    //创建预处理对象
//    var_dump($pdo);exit();
    $stmt = $pdo->query($select_sql);
    $stmt->setFetchMode(PDO::FETCH_ASSOC);//设置结果集的读取方式，这里用的是关联的方式进行读取
    $order=$stmt->fetch();//获取记录
//    Log::INFO(json_encode($order));
    if (!$order){
//        Log::INFO(5);
        $error_msg = '数据库未查询到订单';
        $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
        $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
        $pdo = null;// 关闭连接
//            Log::INFO($error_msg);
        echo "fail";exit();
    }
    //2、判断返回状态,并根据返回状态做相应处理，
    //2-1、状态TRADE_SUCCESS的通知触发条件是商户签约的产品支持退款功能的前提下，买家付款成功；
    //2-2、状态TRADE_FINISHED的通知触发条件是商户签约的产品不支持退款功能的前提下，买家付款成功；或者，商户签约的产品支持退款功能的前提下，交易已经成功并且已经超过可退款期限。
//    Log::INFO(6);
    if($data['trade_status'] == 'TRADE_FINISHED') {

        //处理更新订单状态等相关逻辑

        if($row){

            echo "success";

        }else{

            echo "fail";

        }
    }elseif ($data['trade_status']  == 'TRADE_SUCCESS'){
//        Log::INFO(7);
//        Log::INFO('status:'.json_encode($order));
        //处理更新订单状态等相关逻辑
        if (intval($order['status']) == 0 || (intval($order['status']) > 1 &&  intval($order['status']) < 7 && intval($order['trade_no']) > 0)){
//            Log::INFO(8);
            $error_msg = '订单状态不是待支付'.$order['status'];
            $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
            $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
            $pdo = null;// 关闭连接
//                Log::INFO($error_msg);
            echo "fail";exit();
        }
        else{
//            Log::INFO(9);
//            if ($data['total_amount'] < $order['sprice']){
//                $error_msg = '实际支付金额小于订单金额';
//                $total_fee_sql = "UPDATE `lb_lvbo_order` SET error_msg=:error_msg,pay_price=:total_fee,pay_time=:time_end,trade_no=:transaction_id,pay_type=:pay_type WHERE `orderno`=:out_trade_no";//更新订单
//                $pretreatment = $pdo->prepare($total_fee_sql);//sql字段预处理
//                $total_fee = $data['total_amount'];//   /100   三方支付实际付款数
//                $time_end = $data['notify_time'];//付款时间
//                $transaction_id = $data['trade_no'];//三方订单号
//                $pretreatment->execute(['error_msg'=>$error_msg,'total_fee'=>$total_fee,'out_trade_no'=>$out_trade_no,'time_end'=>$time_end,'transaction_id'=>$transaction_id,'pay_type'=>2,]);//传入参数执行预处理
//                $pdo = null;// 关闭连接
//                Log::INFO(10);
//                echo "fail";exit();
//            }
//            else {
//                Log::INFO(11);
                $pdo->beginTransaction();//开启事务
                try {
                    $time_end = $data['notify_time'];//付款时间
                    $transaction_id = $data['trade_no'];//三方订单号
                    $total_fee = $data['total_amount'];//   /100   三方支付实际付款数

                    $order_sql = "UPDATE `lb_lvbo_order` SET status=:status,pay_time=:time_end,trade_no=:transaction_id,pay_type=:pay_type,pay_price=:total_fee WHERE `orderno`=:out_trade_no";//更新订单
                    $pretreatment = $pdo->prepare($order_sql);//sql字段预处理
                    $pretreatment->execute(['status'=>2,'time_end'=>$time_end,'transaction_id'=>$transaction_id,'pay_type'=>2,'total_fee'=>$total_fee,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
                    //更新用户
                    $member_id = $order['member_id'];
                    $member_sql = "UPDATE `lb_lvbo_member` SET account=account+:total_fee,ordernum=ordernum+1 WHERE `member_id`=:member_id";//更新用户
                    $pretreatment = $pdo->prepare($member_sql);//sql字段预处理
                    $pretreatment->execute(['total_fee'=>$total_fee,'member_id'=>$member_id]);//传入参数执行预处理
                    $pdo->commit();
                } catch (\Exception $e) {
                    $pdo->rollback();
    //                        Log::INFO($e->getMessage());
                    $error_msg = '事务执行失败，'.$e->getMessage();
                    $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
                    $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
                    $pdo = null;// 关闭连接
                    echo "fail";exit();
                }
//                Log::INFO(12);
                echo "success";
//            }
        }

//        if($row){
//
//            echo "success";
//
//        }else{
//
//            echo "fail";
//
//
//        }
    }



    //程序执行完后必须打印输出“success”（不包含引号）。如果商户反馈给支付宝的字符不是success这7个字符，支付宝服务器会不断重发通知，直到超过24小时22分钟。一般情况下，25小时以内完成8次通知（通知的间隔频率一般是：4m,10m,10m,1h,2h,6h,15h）；

}else{
    //验签失败
    Log::INFO('验签失败');
    echo 'fail';exit();
}
