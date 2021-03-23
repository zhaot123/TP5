<?php
/**
*
* example目录下为简单的支付样例，仅能用于搭建快速体验微信支付使用
* 样例的作用仅限于指导如何使用sdk，在安全上面仅做了简单处理， 复制使用样例代码时请慎重
* 请勿直接直接使用样例对外提供服务
* 
**/

require_once dirname(dirname(__FILE__))."/lib/WxPay.Api.php";
require_once dirname(dirname(__FILE__)).'/lib/WxPay.Notify.php';
//require_once dirname(dirname(__FILE__)).'/lib/WxPay.Data.php';
require_once "WxPay.Config.php";
require_once 'log.php';
//初始化日志
$logHandler= new CLogFileHandler(dirname(dirname(__FILE__))."/logs/".date('Y-m-d').'.log');
//$logHandler= new CLogFileHandler("../logs/".date('Y-m-d').'.log');
$log = Log::Init($logHandler, 15);
//Log::INFO(1);
class PayNotifyCallBack extends WxPayNotify
{
	//查询订单
	public function Queryorder($transaction_id)
	{
		$input = new WxPayOrderQuery();
		$input->SetTransaction_id($transaction_id);

		$config = new WxPayConfig();
		$result = WxPayApi::orderQuery($config, $input);
//		Log::DEBUG("query:" . json_encode($result));
		if(array_key_exists("return_code", $result)
			&& array_key_exists("result_code", $result)
			&& $result["return_code"] == "SUCCESS"
			&& $result["result_code"] == "SUCCESS")
		{
			return true;
		}
		return false;
	}

	/**
	*
	* 回包前的回调方法
	* 业务可以继承该方法，打印日志方便定位
	* @param string $xmlData 返回的xml参数
	*
	**/
	public function LogAfterProcess($xmlData)
	{
		Log::DEBUG("call back， return xml:" . $xmlData);
		return;
	}
	
	//重写回调处理函数
	/**
	 * @param WxPayNotifyResults $data 回调解释出的参数
	 * @param WxPayConfigInterface $config
	 * @param string $msg 如果回调处理失败，可以将错误信息输出到该方法
	 * @return true回调出来完成不需要继续回调，false回调处理未完成需要继续回调
	 */
	public function NotifyProcess($objData, $config, &$msg){
//        Log::INFO(2);
		$data = $objData->GetValues();
		$notify = new WxPayNotify();
//        $notifyReply = new WxPayNotifyReply();
        try {
            //创建实例对象，连接数据库
            $sth = array(PDO::ATTR_PERSISTENT=>true,PDO::ATTR_ERRMODE=>2,PDO::MYSQL_ATTR_INIT_COMMAND=>'SET NAMES utf8');
            $pdo = new PDO('mysql:dbhost=127.0.0.1;dbname=jia_qyxly_top','jia_qyxly_top','EiKEhBRDmfrhZL7f',$sth);
//            Log::INFO('连接成功');
        } catch (PDOException $e) {
            Log::INFO($e->getMessage());
        }
        $out_trade_no = $data['out_trade_no'];
        $error_msg_sql = "UPDATE `dp_apptl_order_payment` SET error_msg=:error_msg WHERE `orderno`=:out_trade_no";//更新订单支付失败错误原因
		//TODO 1、进行参数校验
		if(!array_key_exists("return_code", $data) ||(array_key_exists("return_code", $data) && $data['return_code'] != "SUCCESS")) {
			//TODO失败,不是支付成功的通知
			//如果有需要可以做失败时候的一些清理处理，并且做一些监控
			$msg = "异常异常";
            $error_msg = '微信支付失败异常';
            $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
            $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
            $pdo = null;// 关闭连接
//            Log::INFO($error_msg);
            $notify->SetReturn_code("FAIL");
            $notify->SetReturn_msg($msg);
            $notify->ReplyNotify(false);
		}
		if(!array_key_exists("transaction_id", $data)){
			$msg = "输入参数不正确";
            $error_msg = '微信支付失败返回值缺少订单号参数';
            $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
            $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
            $pdo = null;// 关闭连接
//            Log::INFO($error_msg);
            $notify->SetReturn_code("FAIL");
            $notify->SetReturn_msg($msg);
            $notify->ReplyNotify(false);
		}

		//TODO 2、进行签名验证
		try {
			$checkResult = $objData->CheckSign($config);
			if($checkResult == false){
				//签名错误
				Log::INFO("签名错误...");
                $error_msg = '微信支付失败返回值验证签名错误';
                $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
                $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
                $pdo = null;// 关闭连接
                $notify->SetReturn_code("FAIL");
                $notify->SetReturn_msg($error_msg);
                $notify->ReplyNotify(false);
			}
		} catch(Exception $e) {
//			Log::INFO(json_encode($e));
            $error_msg = json_encode($e);$pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
            $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
            $pdo = null;// 关闭连接
		}

		//TODO 3、处理业务逻辑
//		Log::DEBUG("call back:" . json_encode($data));
		$notfiyOutput = array();
//        Log::INFO(3);
        $select_sql = "SELECT *  FROM `dp_apptl_order_payment` WHERE `orderno` =$out_trade_no";//查询订单
        //创建预处理对象
        $stmt = $pdo->query($select_sql);
        $stmt->setFetchMode(PDO::FETCH_ASSOC);//设置结果集的读取方式，这里用的是关联的方式进行读取
        $order=$stmt->fetch();//获取记录
//        Log::INFO(5);
		if ($order){
            if (intval($order['order_status']) == 1 && intval($order['status']) == 1){
                $this->SetReturn_code("SUCCESS");
                $this->SetReturn_msg("OK");
                $notify->ReplyNotify(false);
            }
//            Log::INFO(6);
		    if (intval($order['order_status']) != 0 && intval($order['status']) != 0){
                $error_msg = '订单状态不是待支付'.$order['order_status'];
                $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
                $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
                $pdo = null;// 关闭连接
//                Log::INFO($error_msg);
                $notify->SetReturn_code("FAIL");
                $notify->SetReturn_msg($error_msg);
                $notify->ReplyNotify(false);
            }
            else{
//		        if ($data['total_fee']/100 < $order['total_amount']){
//                    $error_msg = '实际支付金额小于订单金额';
//                    $total_fee_sql = "UPDATE `dp_apptl_order_payment` SET error_msg=:error_msg,total_fee=:total_fee,pay_time=:time_end,trade_no=:transaction_id WHERE `orderno`=:out_trade_no";//更新订单
//                    $pretreatment = $pdo->prepare($total_fee_sql);//sql字段预处理
//                    $total_fee = $data['total_fee'];//   /100   三方支付实际付款数
//                    $time_end = $data['time_end'];//付款时间
//                    $transaction_id = $data['transaction_id'];//三方订单号
//                    $pretreatment->execute(['error_msg'=>$error_msg,'total_fee'=>$total_fee,'out_trade_no'=>$out_trade_no,'time_end'=>$time_end,'transaction_id'=>$transaction_id]);//传入参数执行预处理
//                    $pdo = null;// 关闭连接
//                    Log::INFO(8);
//		            $notify->SetReturn_code("FAIL");
//                    $notify->SetReturn_msg($error_msg);
//                    $notify->ReplyNotify(false);
//                }
//                else {
//                    Log::INFO(9);
                    $pdo->beginTransaction();//开启事务
                    try {
                        $time_end = $data['time_end'];//付款时间
                        $transaction_id = $data['transaction_id'];//三方订单号
                        $total_fee = $data['total_fee'];//   /100   三方支付实际付款数

                        $order_sql = "UPDATE `dp_apptl_order_payment` SET status=:status,order_status=:order_status,pay_time=:time_end,trade_no=:transaction_id,total_fee=:total_fee WHERE `orderno`=:out_trade_no";//更新订单
                        $pretreatment = $pdo->prepare($order_sql);//sql字段预处理
                        $pretreatment->execute(['status'=>1,'order_status'=>1,'time_end'=>$time_end,'transaction_id'=>$transaction_id,'total_fee'=>$total_fee,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理

//                更新用户
                        $member_id = $order['uid'];
                        $select_user_sql = "SELECT pid  FROM `dp_apptl_user_base` WHERE `id` =$member_id";//查询用户
                        //创建预处理对象
                        $stmt_user = $pdo->query($select_user_sql);
                        $stmt_user->setFetchMode(PDO::FETCH_ASSOC);//设置结果集的读取方式，这里用的是关联的方式进行读取
                        $user = $stmt_user->fetch();//获取记录
                        if (intval($user['pid']) > 0) {
                            $pid = $user['pid'];
                            $select_royalty_ratio_sql = "SELECT royalty_ratio  FROM `dp_apptl_royalty_ratio` WHERE `id` =1";//查询用户
                            //创建预处理对象
                            $stmt_royalty_ratio = $pdo->query($select_royalty_ratio_sql);
                            $stmt_royalty_ratio->setFetchMode(PDO::FETCH_ASSOC);//设置结果集的读取方式，这里用的是关联的方式进行读取
                            $royalty_ratio = $stmt_royalty_ratio->fetch();//获取记录
                            if ($royalty_ratio) {
                                $ratio = $royalty_ratio['royalty_ratio'] / 100;
                            } else {
                                $ratio = 1;
                            }
                //                var_dump($ratio);exit();
                            //插入余额变更记录
                            $insert_userbill_sql = "INSERT INTO dp_apptl_user_bill(userid,orderid,money,type) VALUES (:uid,:orderid,:money,:type)";
                            $pretreatment = $pdo->prepare($insert_userbill_sql);//sql字段预处理
                            $pretreatment->execute(['orderid' => $order['id'], 'uid' => $pid, 'money' => $total_fee * $ratio, 'type' => 6]);//传入参数执行预处理
                            //更新用户余额
                            $member_sql = "UPDATE `dp_apptl_user_base` SET balance=balance+:total_fee WHERE `id`=:uid";
                            $pretreatment = $pdo->prepare($member_sql);//sql字段预处理
                            $pretreatment->execute(['total_fee' => $total_fee * $ratio, 'uid' => $pid]);//传入参数执行预处理
                        }
                        $pdo->commit();

                    } catch (\Exception $e) {
                        $pdo->rollback();
//                        Log::INFO($e->getMessage());
                        $error_msg = '事务执行失败，'.$e->getMessage();
                        $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
                        $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
                        $pdo = null;// 关闭连接
                        $notify->SetReturn_code("FAIL");
                        $notify->SetReturn_msg($error_msg);
                        $notify->ReplyNotify(false);
                    }
                    $notify->SetReturn_code("SUCCESS");
                    $notify->SetReturn_msg("OK");
                    $notify->ReplyNotify(false);
                }
//            }
        }
        else{
//            Log::INFO(10);
            $error_msg = '数据库未查询到订单';
            $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
            $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
            $pdo = null;// 关闭连接
//            Log::INFO($error_msg);
            $notify->SetReturn_code("FAIL");
            $notify->SetReturn_msg($error_msg);
            $notify->ReplyNotify(false);
        }
		
		//查询订单，判断订单真实性
		if(!$this->Queryorder($data["transaction_id"])){
			$msg = "订单查询失败";
            $error_msg = '微信订单查询失败';
            $pretreatment = $pdo->prepare($error_msg_sql);//sql字段预处理
            $pretreatment->execute(['error_msg'=>$error_msg,'out_trade_no'=>$out_trade_no]);//传入参数执行预处理
            $pdo = null;// 关闭连接
//            Log::INFO($error_msg);
            $notify->SetReturn_code("FAIL");
            $notify->SetReturn_msg($error_msg);
            $notify->ReplyNotify(false);
		}
        $this->SetReturn_code("SUCCESS");
        $this->SetReturn_msg("OK");
        $notify->ReplyNotify(false);
	}
}

$config = new WxPayConfig();
//Log::DEBUG("begin notify");
$notify = new PayNotifyCallBack();
$notify->Handle($config, false);
