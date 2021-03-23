<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------
// 应用公共文件
use think\facade\Config;
use think\facade\Request;
use app\common\model\Attachment;
use app\common\controller\BaseController;

if(!function_exists('random_string')) {
    /**
     * 获取随机字符串
     * @param int $randLength       长度
     * @param int $includeNumber    1 包含数字
     * @param int $includeLLetters  1 包含小写字母
     * @param int $includeULetters  1 包含大写字母
     * @param string $additional    额外添加的字符，不支持中文
     * @return string
     */
    function random_string($randLength=6,$includeNumber=0,$includeLLetters=0,$includeULetters=0,$additional='')
    {
        $chars = '';
        if ($includeLLetters == 1){
            $chars .= 'abcdefghijklmnopqrstuvwxyz';
        }
        if ($includeNumber == 1){
            $chars .= '123456789';
        }
        if ($includeULetters == 1){
            $chars .= 'ABCDEFGHJKLMNPQEST';
        }
        if (!empty($additional)){
            $chars .= $additional;
        }
        $len = strlen($chars);
        $randStr = '';
        for ($i=0;$i<$randLength;$i++){
            $randStr .= $chars[mt_rand(0,$len-1)];
        }
        return $randStr;
    }
}
if(!function_exists('encrypt')) {
    /**
     * 系统加密方法
     * @param string $data 要加密的字符串
     * @param string $key 加密密钥
     * @param int $expire 过期时间 单位 秒
     * @return string
     */
    function encrypt($data, $key = '123456', $expire = 0)
    {
//    $key  = md5(empty($key) ? C('DATA_AUTH_KEY') : $key);
        $key = md5($key);
        $data = base64_encode($data);
        $x = 0;
        $len = strlen($data);
        $l = strlen($key);
        $char = '';
        for ($i = 0; $i < $len; $i++) {
            if ($x == $l) $x = 0;
            $char .= substr($key, $x, 1);
            $x++;
        }
        $str = sprintf('%010d', $expire ? $expire + time() : 0);
        for ($i = 0; $i < $len; $i++) {
            $str .= chr(ord(substr($data, $i, 1)) + (ord(substr($char, $i, 1))) % 256);
        }
        return str_replace(array('+', '/', '='), array('-', '_', ''), base64_encode($str));
    }
}
if(!function_exists('decrypt')) {
    /**
     * 系统解密方法
     * @param  string $data 要解密的字符串
     * @param  string $key 加密密钥
     * @return string
     */
    function decrypt($data, $key = '123456')
    {
//    $key    = md5(empty($key) ? C('DATA_AUTH_KEY') : $key);
        $key = md5($key);
        $data = str_replace(array('-', '_'), array('+', '/'), $data);
        $mod4 = strlen($data) % 4;
        if ($mod4) {
            $data .= substr('====', $mod4);
        }
        $data = base64_decode($data);
        $expire = substr($data, 0, 10);
        $data = substr($data, 10);

        if ($expire > 0 && $expire < time()) {
            return '';
        }
        $x = 0;
        $len = strlen($data);
        $l = strlen($key);
        $char = $str = '';

        for ($i = 0; $i < $len; $i++) {
            if ($x == $l) $x = 0;
            $char .= substr($key, $x, 1);
            $x++;
        }

        for ($i = 0; $i < $len; $i++) {
            if (ord(substr($data, $i, 1)) < ord(substr($char, $i, 1))) {
                $str .= chr((ord(substr($data, $i, 1)) + 256) - ord(substr($char, $i, 1)));
            } else {
                $str .= chr(ord(substr($data, $i, 1)) - ord(substr($char, $i, 1)));
            }
        }
        return base64_decode($str);
    }
}
if(!function_exists('password_hash_default')) {
    /*
     * password_hash加密
     * string $string 加密的字符串
     * */
    function password_hash_default($string = '123456')
    {
        return password_hash($string, PASSWORD_DEFAULT);
    }
}
if(!function_exists('password_verify_default')) {
    /*
     * password_hash解密
     * string $string 解密的字符串
     * string $hash_string 存储的加密字符串
     * */
    function password_verify_default($string, $hash_string)
    {
        return password_verify($string, $hash_string);
    }
}
if(!function_exists('rsa_private_key')) {
    /*
     * 私钥
     * */
    function rsa_private_key()
    {
        $privateKey = 'MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCd43+YW4vq1W+m0yMtnw+Zfu1jTHN5mYOm8Pyy5CIgxPDKOHYj94dpvbjh918ThIXH1TzIj0V3cw7mc/oKsr0CMyEowxEewkplFtlSt+MnyN3nDIOa5yZqiUlciNe6v6r2gfUoMT3Oa3DW/adZ5OQaYfjdKnXmTZ6rmOnIitkZyQPQ44iZ+JdXttZ4W7yn3ozNGc+GO/BB0dvEoJD/pBdnwdcoSMA3Eo/K2yO1b2I7Z3TqMDjIjGhqRN739TSVJymbcoOSfACGr4+uyBkyJ21cH3uLxjJXOEfWmkYX7wUzM7OhI0oJCGHzpqcnG4Yo0+t7+gkwn+2+SdWevOtN0auZAgMBAAECggEAIcOn4q4ZItQX92YJjNUKIfopy+VqgGOa6tV4RM1Smw1irOwcH57sn2lKI1CiTWs2rMBmKkGxSlUZp6C/pRAKKXFDsxLcE2bbP/j96pmWg0iKY8GiVzr9VSUcwiQldjNM3UB3a+vz2rPRQril1CyFtzqiXLGa2vBYcTvXKuK+gKvMpLL1lJo/F0ale9i/FCP0Ii9GjIDtggTECCjNhVvNK/EO10yct6e7yYiGsgB4+n5JHv98oexHXnMDncOnA29ycsSkXfwHeKOml2WVaYW747EeqFcmO98bSk9GCu7tdlrywmjxdJz9veVL00Ht/JhG2Ti/z7VcTXWCcXQAbwQ58QKBgQDfZhhnzKtC7yUDB0FpHm2RhKn/OseArU9/1ff1mFY5zT3oJ8LFiqGiszqUbeAzxtJ5ibIVKwdVlXs4LR+KltwM4ewvV6dOHrmTmG4Y4XG+NdH+LWbw0UzSDh/rvGLz3nkSl3UYlgs4PNeO/kxm9q18mcFdlQ5Z4S6r+dJvF0QD5QKBgQC07gZS10dOt9l4W5lxF/QEk/EIgPKZkzBl44BDUjzG8KLTW90zIR30B09OxapqqUZjx/DpfCYxogTjLypnnNEdYNv1Trcm9+oEJE2/hfiakvxvu9NA9Nyythwz6/8QaZmHWVzf73uYPp32qt5VRboD9nxh4I6G5eVC1Xo96C31pQKBgQCoiBwHSqc04rbYVwPoqpTcP+oDazOQhq6/8QqUE+2Qw55dYomUf2Y7GN0rlsyaIvcry042m/R3g0Km+Zue8PpnGZUVjhngXFuB1m/Qg1tMtMuL5nKPYEaE/TTloYRBF+fct7gV6TPjpDq2XHAFCTmOE2yGDen6sl+ES/6N4k5kZQKBgHFRz4YdLZ1BCyUWAfHSddRUMJgJ42iKxrpaFiCUJlrXprPIiq+WY2NPHL4SkZ0CboLaXKpwRp+5gWQlS2Lf1h2XZ8ypw47Voa18a3G0YDO4MgFtW3AIrR4Fb36ZpgRKj401TDU5kmiVd2xiMqSn6kzHGbpX4gzdeo00lb6mZ/q9AoGAYyV2EelY+CvRss9j1Tr5eGkOjLLdhwtoYVwlLoWA0E/UkY+/2SWPM3IA+B5We9fPNjN7xjC+7mAJCXo6/1TjNUnD2UpOobLoB6mOuoj+FvEfgcAi5QG58fK3roKoAgxxObcGqzHFKodppQlhAXjiUUjL6r/nuw0UsMUyUJOI3ag=';
        $wordwrap_privateKey = "-----BEGIN PRIVATE KEY-----\n" .
            wordwrap($privateKey, 64, "\n", true) .
            "\n-----END PRIVATE KEY-----";
        return $wordwrap_privateKey;
    }
}
if(!function_exists('rsa_public_key')) {
    /*
     * 公钥
     * */
    function rsa_public_key()
    {
        $publicKey = 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAneN/mFuL6tVvptMjLZ8PmX7tY0xzeZmDpvD8suQiIMTwyjh2I/eHab244fdfE4SFx9U8yI9Fd3MO5nP6CrK9AjMhKMMRHsJKZRbZUrfjJ8jd5wyDmucmaolJXIjXur+q9oH1KDE9zmtw1v2nWeTkGmH43Sp15k2eq5jpyIrZGckD0OOImfiXV7bWeFu8p96MzRnPhjvwQdHbxKCQ/6QXZ8HXKEjANxKPytsjtW9iO2d06jA4yIxoakTe9/U0lScpm3KDknwAhq+PrsgZMidtXB97i8YyVzhH1ppGF+8FMzOzoSNKCQhh86anJxuGKNPre/oJMJ/tvknVnrzrTdGrmQIDAQAB';
        $wordwrap_publicKey = "-----BEGIN PUBLIC KEY-----\n" .
            wordwrap($publicKey, 64, "\n", true) .
            "\n-----END PUBLIC KEY-----";
        return $wordwrap_publicKey;
    }
}
if(!function_exists('rsa_private_decrypt')) {
    /*
     * openssl私钥解密
     * string $rsa_string 要解密的字符串
     * string $privateKey 私钥
     * string $decryptData 解密后的字符串
     * */
    function rsa_private_decrypt($rsa_string)
    {
        if (openssl_private_decrypt(base64_decode($rsa_string), $decryptData, rsa_private_key())) {
            return $decryptData;
        } else {
            return false;
        }
    }
}
if(!function_exists('rsa_public_encrypt')) {
    /*
     * openssl公钥加密
     * string $string 要解密的字符串
     * string $privateKey 私钥
     * string $decryptData 解密后的字符串
     * */
    function rsa_public_encrypt($string)
    {
        if (openssl_public_encrypt($string, $encryptData, rsa_public_key())) {
            /*加密后 可以base64_encode后方便在网址中传输 或者打印  否则打印为乱码*/
            return base64_encode($encryptData);
        } else {
            return false;
        }
    }
}
if(!function_exists('domain_url')) {
    function domain_url($url, $type = 0)
    {
        switch ($type) {
            case 1:
                $complete_url = Request::domain() . '/public' . $url;
                break;
            default:
                $complete_url = Request::domain() . '/' . $url;//DIRECTORY_SEPARATOR
        }
        return $complete_url;
    }
}
if(!function_exists('get_attachment_domain_url')) {
    /*
     * 获取附件完整路径
     * param    int  $attachment_id 附件id
     * */
    function get_attachment_domain_url($attachment_id, $type = 0){
        $url = (new Attachment)->getValueByWhere(['id'=>$attachment_id], 'url');
        switch ($type) {
            case 1:
                $complete_url = Request::domain() .DIRECTORY_SEPARATOR.'public' . $url;
                break;
            default:
                $complete_url = Request::domain() .DIRECTORY_SEPARATOR. $url;//DIRECTORY_SEPARATOR
        }
        return $complete_url;
    }
}
if (!function_exists('get_middle_str')) {
    /**
     * 获取两个字符串中间的字符
     * @param $str
     * @param $leftStr
     * @param $rightStr
     * @return bool|string
     */
    function get_middle_str($str, $leftStr, $rightStr)
    {
        $left  = strpos($str, $leftStr);
        $right = strpos($str, $rightStr, $left);
        if ($right < $left || $left < 0) {
            return '';
        }
        return substr($str, $left + strlen($leftStr), $right - $left - strlen($leftStr));
    }
}
if (!function_exists('format_size')) {
    /**
     * 格式化文件大小单位
     * @param $size
     * @param string $delimiter
     * @return string
     */
    function format_size($size, $delimiter = '')
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
        for ($i = 0; $size >= 1024 && $i < 5; $i++) {
            $size /= 1024;
        }
        return round($size, 2) . $delimiter . $units[$i];
    }
}
if (!function_exists('setting')) {
    /**
     * 设置相关助手函数
     * @param string $name
     * @param null $value
     * @return array|bool|mixed|null
     */
    function setting($name = '', $value = null)
    {
        if ($value === null && is_string($name)) {
            //获取一级配置
            if ('.' === substr($name, -1)) {
                $result = Config::pull(substr($name, 0, -1));
                if (count($result) == 0) {
                    //如果文件不存在，查找数据库
                    $result = get_database_setting(substr($name, 0, -1));
                }

                return $result;
            }
            //判断配置是否存在或读取配置
            if (0 === strpos($name, '?')) {
                $result = Config::has(substr($name, 1));
                if (!$result) {
                    //如果配置不存在，查找数据库
                    if ($name && false === strpos($name, '.')) {
                        return [];
                    }

                    if ('.' === substr($name, -1)) {

                        return get_database_setting(substr($name, 0, -1));
                    }

                    $name    = explode('.', $name);
                    $name[0] = strtolower($name[0]);

                    $result = get_database_setting($name[0]);
                    if ($result) {
                        $config = $result;
                        // 按.拆分成多维数组进行判断
                        foreach ($name as $val) {
                            if (isset($config[$val])) {
                                $config = $config[$val];
                            } else {
                                return null;
                            }
                        }

                        return $config;

                    }
                    return $result;
                }

                return $result;
            }

            $result = Config::get($name);
            if (!$result) {
                $result = get_database_setting($name);
            }
            return $result;
        }
        return Config::set($name, $value);
    }

}
if (!function_exists('get_database_setting')) {
    function get_database_setting($name)
    {
        $result = [];
        $group  = \app\admin\model\SettingM::where('code', $name)->find();
        if ($group) {
            $result = [];
            foreach ($group->setting as $key => $setting) {
                $key_setting = [];
                foreach ($setting->content as $content) {
                    $key_setting[$content['field']] = $content['content'];
                }
                $result[$setting->code] = $key_setting;
            }
        }

        return $result;
    }
}
if (!function_exists('responseReturn')){
    /*
     * 接口返回
     * */
    function responseReturn($code=0,$data=[],$msg='',$header=[],$http=200)
    {
        return BaseController::responseReturn($code,$data,$msg,$header,$http);
    }
}
if (!function_exists('addfinance')){

    /** 用户添加日志方法
     * @param $user_id 用户id
     * @param $type 种类  1 花费 2提现 3佣金获得
     * @param $content 内容
     * @param $money_type  1加二减
     * @param $money 金额
     * @param $currency 0用户积分 1人民币
     * @param $admin_id  后台用户id
     */
    function addfinance($user_id,$type,$content,$money_type,$money,$currency,$last_money = 0,$admin_id = 0,$order_id = 0,$by_id = 0)
    {
        $data['user_id'] = $user_id;
        $data['type'] = $type;
        $data['content'] = $content;
        $data['money_type'] = $money_type;
        $data['create_time'] = time();
        $data['money'] = $money;
        $data['currency'] = $currency;
        $data['last_money'] = $last_money;
        $data['by_id'] = $by_id;
        $data['order_id'] = $order_id;
        $data['admin_id'] = $admin_id;
        $result = \app\user\model\UserFinanceM::create($data);
        if($result){
            return  1;
        }else{
            return 2;
        }

    }
}

/**
 * curl 方法
 * $url url
 */
if(!function_exists('vget')){

    function vget($url){
        $info=curl_init();
        curl_setopt($info,CURLOPT_RETURNTRANSFER,true);
        curl_setopt($info,CURLOPT_HEADER,0);
        curl_setopt($info,CURLOPT_NOBODY,0);
        curl_setopt($info,CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($info,CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($info,CURLOPT_URL,$url);
        $output= curl_exec($info);
        curl_close($info);
        return $output;
    }

}
if(!function_exists('onlyosn')){
    /**
     * 生成随机订单号
     * @return string $osn
     *
     */
    function onlyosn()
    {
        @date_default_timezone_set("PRC");
        $order_id_main = date('YmdHis') . rand(10000000, 99999999);
        //订单号码主体长度
        $order_id_len = strlen($order_id_main);
        $order_id_sum = 0;
        for ($i = 0; $i < $order_id_len; $i++) {
            $order_id_sum += (int)(substr($order_id_main, $i, 1));
        }
        $osn = $order_id_main . str_pad((100 - $order_id_sum % 100) % 100, 2, '0', STR_PAD_LEFT); //生成唯一订单号
        return $osn;
    }
}

if(!function_exists('message')) {

    /**
     *添加信息
     * $title 标题
     *$content  内容
     * $user_id  前台用户id
     * $admin  后台用户id
     * $url  跳转路径
     */
    function message($title = '',$content = '',$user_id,$admin = '',$url=''){

        $data['title'] = $title;
        $data['content'] = $content;
        $data['user_id'] = $user_id;
        $data['admin_id'] = $admin;
        $data['url'] = $url;
        $data['create_time'] = time();
        $result = \app\message\model\MessageM::create($data);
        if($result){
            return 1;
        }else{
            return 2;
        }

    }


}