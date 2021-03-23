<?php
/**
 * 微信商铺信息设置
 * @author yupoxiong<i@yufuping.com>
 */

return [
    'wxpay' => [
        'appid'    => 'wx3483c0d35fcd4ba2',
        'mchid'   => '1563539451',
        'key' => 'lBs4xQv1am9khJ6eMwyszcSFNA3hsFC4',
        'appsecret' => '000580a1659a30ad0a00abb3474b2ea8',
        'sslcert_path' => str_replace('\\','/',realpath(dirname(__FILE__).'/../')).'/wx_cert/apiclient_cert.pem',
        'sslkey_path' =>  str_replace('\\','/',realpath(dirname(__FILE__).'/../')).'/wx_cert/apiclient_key.pem',
        'curl_proxy_host' => '',
        'curl_proxy_port' => '',
        'report_levenl' => '',
    ],
];
