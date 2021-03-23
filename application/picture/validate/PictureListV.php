<?php
/**
 * 文章表验证器
 */

namespace app\picture\validate;

use app\admin\validate\Validate;

class PictureListV extends Validate
{
    protected $rule = [
        'pic_number|图画编号' => 'require',
        'pic_name|图画名称' => 'require',
        'attachment|图画图片' => 'require',
        'author|作者' => 'require',
        'cate_id|分类id' => 'require',
        'make_time|创建时间' => 'require',
        'pic_size|图画尺寸' => 'require',
        'pic_spec|图画规格' => 'require',
        'pic_product|图画纸质' => 'require',
        'user_id|用户id' => 'require',
        'content|图画描述' => 'require',

    ];

    protected $message = [
        'cate_id.require' => '分类id不能为空',

    ];

    protected $scene = [
        'add'  => ['pic_number','pic_name','author','cate_id','make_time','pic_size','pic_spec','pic_product','content','user_id'],
        'edit'  => ['pic_number','pic_name','author','cate_id','make_time','pic_size','pic_spec','pic_product','content','user_id'],


    ];

    

}
