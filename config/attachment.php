<?php
/**
 * 附件配置
 * @author yupoxiong<i@yufuping.com>
 */

return [
    'thumb_path'=>'/static/attachment/thumbnail/',
    'path'     => app()->getRootPath() . 'public/uploads/attachment/',  //上传目录配置（相对于根目录）
    'url'      => '/uploads/attachment/',  //url（相对于web目录）
    'validate' => [
        //默认不超过50mb
        'size' => 52428800,
        //常用后缀
//        'ext'  => 'bmp,ico,psd,jpg,jpeg,png,gif,doc,docx,xls,xlsx,pdf,zip,rar,7z,tz,mp3,mp4,mov,swf,flv,avi,mpg,ogg,wav,flac,ape',
//        'ext'  => 'bmp,psd,jpg,jpeg,png,gif,doc,docx,xls,xlsx,pdf,mp3,mp4,mov,avi,wav',
        //常用mime类型
        'type' =>'image/bmp,application/octet-stream,image/jpg,image/jpeg,image/png,image/gif,application/msword,application/excel,application/pdf,audio/mpeg3,video/mpeg,video/mp4,
        video/quicktime,video/avi,audio/wav'
    ],
];
