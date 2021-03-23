<?php
/**
 * 文章表模型
*/

namespace app\cms\model;

use app\admin\model\Model;


class AuthorM extends Model
{

    protected $name = 'cmsAuthor';
    protected $searchField = ['author_name'];
    public function getStatusTextAttr($value, $data)
    {
        return self::BOOLEAN_TEXT[$data['status']];
    }

    

    
}
