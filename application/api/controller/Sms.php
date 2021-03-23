<?php
namespace app\api\controller;
/*创世华信短信*/
class Sms
{

    public	$user 		= 'xc10133';	//短信账户		默认liyi
    public	$password 	= 'nm0133';	//账户密码
    public	$type 		= '华信';	//发送短信分类	默认华信
    public	$time 		= 0;		//发送短信间隔 	默认120秒
    public	$length 	= 6;		//验证码位数	默认6位
    public	$signature 	= '';	//签名		默认千翼


    public	$appid 	= '';	//
    public	$timestamp 	= '';	//
    public	$sign 	= '';	////
    public	$templateId 	= 'M31964D5FE';	//
    public	$APPCODE 	= '4572abed422549e0baaa95a8370edfc1';	//
    private	$ip;					//当前用户ip

    /**
     * 构造函数
     * @param string $type			发送短信分类
     * @param string $user			短信账户
     * @param string $password		账户密码
     * @param string $signature		签名
     * @param string $time			发送短信间隔 默认120秒
     * @param string $length		验证码位数	默认4位
     */
    function __construct($type=null,$user=null,$password=null,$signature=null,$time=null,$length=null){
        //修改默认值
        $this ->type		= $type?$type:$this ->type;
        $this ->user		= $user?$user:$this ->user;
        $this ->password 	= $password?$password:$this ->password;
        $this ->signature 	= $signature?$signature:$this ->signature;
        $this ->time 		= $time?$time:$this ->time;
        $this ->length 		= $length?$length:$this ->length;
        $this ->ip 			= $_SERVER["REMOTE_ADDR"];
    }
    /**
     * 发送验证码
     */
    public function sendMsg($phone,$code) {

        $sendurl = "https://smssend.shumaidata.com/sms/send?receive=".$phone."&tag=".$code."&templateId=".$this->templateId;
        $curl = curl_init();
        $host = "https://smssend.shumaidata.com";
        $headers = array();
        array_push($headers, "Authorization:APPCODE " . $this->APPCODE);
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($curl, CURLOPT_URL, $sendurl);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_FAILONERROR, false);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_HEADER, true);
        if (1 == strpos("$".$host, "https://"))
        {
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        }
        $result =  curl_exec($curl);

        $result = '{'.explode('{',$result)[1].'{}}';
        $result = json_decode($result,true);
        $data = array(
            'code'=>$result['code'],	//短信回馈接口码 0  失败  1成功
            'msg'=>$result['msg']			//短信回馈文字描述
        );
        return $data;

    }

    public function checkPerson($bankCard,$idCard,$mobile,$name){


        $host = "https://bankcard4c.shumaidata.com";
        $path = "/bankcard4c";
        $method = "GET";

        $headers = array();
        array_push($headers, "Authorization:APPCODE " . $this->APPCODE);
        $querys = "bankcard=".$bankCard."&idcard=".$idCard."&mobile=".$mobile."&name=".$name;

        $url = $host . $path . "?" . $querys;

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_FAILONERROR, false);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        //设定返回信息中是否包含响应信息头，启用时会将头文件的信息作为数据流输出，true 表示输出信息头, false表示不输出信息头
        //如果需要将字符串转成json，请将 CURLOPT_HEADER 设置成 false
        curl_setopt($curl, CURLOPT_HEADER, true);
        if (1 == strpos("$" . $host, "https://")) {
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        }

        $result =  curl_exec($curl);

        $result = '{'.explode('{',$result)[1].'{}}';

        $result = json_decode($result,true);

        $data  = [
            'code'=>$result['code'],
            'msg'=>$result['msg'],
        ];

        return json_encode($data);

    }
}
