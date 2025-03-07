<?php
/**
 * UEditor设置
 * @author yupoxiong<i@yufuping.com>
 */

return [

    'imageActionName'     => 'uploadimage',
    'imageFieldName'      => 'upfile',
    'imageMaxSize'        => 2048000,
    'imageAllowFiles'     => [
        '.png',
        '.jpg',
        '.jpeg',
        '.gif',
        '.bmp'
    ],
    'imageCompressEnable' => true,
    'imageCompressBorder' => 1600,
    'imageInsertAlign'    => 'none',
    'imageUrlPrefix'      => 'http://'.$_SERVER['HTTP_HOST'],
    'imagePathFormat'     => '/ueditor/php/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}',
    'scrawlActionName'    => 'uploadscrawl',
    'scrawlFieldName'     => 'upfile',
    'scrawlPathFormat'    => '/ueditor/php/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}',
    'scrawlMaxSize'       => 2048000,
    'scrawlUrlPrefix'     => '',

    'scrawlInsertAlign'       => 'none',
    'scrawlAllowFiles'        => ['.png', '.jpg', '.jpeg', '.gif', '.bmp',],
    'snapscreenActionName'    => 'uploadimage',
    'snapscreenPathFormat'    => '/ueditor/php/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}',
    'snapscreenUrlPrefix'     => 'http://'.$_SERVER['HTTP_HOST'],
    'snapscreenInsertAlign'   => 'none',
    'catcherLocalDomain'      => ['127.0.0.1', 'localhost', 'img.baidu.com',],
    'catcherActionName'       => 'catchimage',
    'catcherFieldName'        => 'source',
    'catcherPathFormat'       => '/ueditor/php/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}',
    'catcherUrlPrefix'        => 'http://'.$_SERVER['HTTP_HOST'],
    'catcherMaxSize'          => 2048000,
    'catcherAllowFiles'       => [
        '.png', '.jpg', '.jpeg', '.gif', '.bmp',
    ],
    'videoActionName'         => 'uploadvideo',
    'videoFieldName'          => 'upfile',
    'videoPathFormat'         => '/ueditor/php/upload/video/{yyyy}{mm}{dd}/{time}{rand:6}',
    'videoUrlPrefix'          => 'http://'.$_SERVER['HTTP_HOST'],
    'videoMaxSize'            => 102400000,
    'videoAllowFiles'         => [
        '.flv', '.swf', '.mkv', '.avi', '.rm', '.rmvb', '.mpeg', '.mpg',
        '.ogg', '.ogv', '.mov', '.wmv', '.mp4', '.webm', '.mp3', '.wav', '.mid'
    ],
    'fileActionName'          => 'uploadfile',
    'fileFieldName'           => 'upfile',
    'filePathFormat'          => '/ueditor/php/upload/file/{yyyy}{mm}{dd}/{time}{rand:6}',
    'fileUrlPrefix'           => 'http://'.$_SERVER['HTTP_HOST'],
    'fileMaxSize'             => 51200000,
    'fileAllowFiles'          => [
        '.png', '.jpg', '.jpeg', '.gif', '.bmp',
        '.flv', '.swf', '.mkv', '.avi', '.rm', '.rmvb', '.mpeg', '.mpg',
        '.ogg', '.ogv', '.mov', '.wmv', '.mp4', '.webm', '.mp3', '.wav', '.mid',
        '.rar', '.zip', '.tar', '.gz', '.7z', '.bz2', '.cab', '.iso',
        '.doc', '.docx', '.xls', '.xlsx', '.ppt', '.pptx', '.pdf', '.txt', '.md', '.xml'
    ],
    'imageManagerActionName'  => 'listimage',
    'imageManagerListPath'    => '/ueditor/php/upload/image/',
    'imageManagerListSize'    => 20,
    'imageManagerUrlPrefix'   => 'http://'.$_SERVER['HTTP_HOST'],
    'imageManagerInsertAlign' => 'none',
    'imageManagerAllowFiles'  => [
        '.png', '.jpg', '.jpeg', '.gif', '.bmp',
    ],
    'fileManagerActionName'   => 'listfile',
    'fileManagerListPath'     => '/ueditor/php/upload/file/',
    'fileManagerUrlPrefix'    => 'http://'.$_SERVER['HTTP_HOST'],
    'fileManagerListSize'     => 20,
    'fileManagerAllowFiles'   => [
        '.png', '.jpg', '.jpeg', '.gif', '.bmp',
        '.flv', '.swf', '.mkv', '.avi', '.rm', '.rmvb', '.mpeg', '.mpg',
        '.ogg', '.ogv', '.mov', '.wmv', '.mp4', '.webm', '.mp3', '.wav', '.mid',
        '.rar', '.zip', '.tar', '.gz', '.7z', '.bz2', '.cab', '.iso',
        '.doc', '.docx', '.xls', '.xlsx', '.ppt', '.pptx', '.pdf', '.txt', '.md', '.xml'
    ]
];
