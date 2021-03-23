<?php
/**
 * 文章表模型
*/

namespace app\cms\model;

use app\admin\model\Model;
use think\model\concern\SoftDelete;

class ArticleM extends Model
{
    use SoftDelete;
    protected $name = 'cms_article';
    protected $searchField = ['title'];



    //1启用0禁用获取器
    public function getStatusTextAttr($value, $data)
    {
        return self::BOOLEAN_TEXT[$data['status']];
    }




}
