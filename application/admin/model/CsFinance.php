<?php
/**
 * 财务日志表模型
*/

namespace app\admin\model;

use think\model\concern\SoftDelete;

class CsFinance extends Model
{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'cs_finance';
    protected $autoWriteTimestamp = true;

    //可搜索字段
    protected $searchField = [];

    //可作为条件的字段
    protected $whereField = [];

    //可做为时间
    protected $timeField = [];

    //1已完成0初始化获取器
public function getStatusTextAttr($value, $data)
{
    return self::BOOLEAN_TEXT[$data['status']];
}

    

    
}
