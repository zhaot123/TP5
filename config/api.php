<?php
/**
 * Api模块配置
 * @author yupoxiong<i@yufuping.com>
 */

return [
    //api跨域设置
    'cross_domain' => [
        //是否允许跨域
        'allow'  => true,
        //header设置
        'header' => [
            'Access-Control-Allow-Origin'    => '*',
            'Access-Control-Allow-Methods'   => '*',
            'Access-Control-Allow-Headers' => 'authorization,Origin,content-Type,Accept,token',//Authorization,TOKEN,DNT,X-Mx-ReqToken,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type, Accept-Language, Accept-Encoding
        ],

    ],
];
