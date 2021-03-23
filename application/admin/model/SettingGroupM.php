<?php
/**
 * 设置分组模型
 */

namespace app\admin\model;
use think\model\concern\SoftDelete;

class SettingGroupM extends Model{
    use SoftDelete;
    public $softDelete = true;
    protected $name = 'setting_group';
    public $noDeletionId  =[1,2,3,4,5,];
    protected $searchField = ['name', 'description', 'code',];//可搜索字段

    //关联设置
    public function setting(){
        return $this->hasMany(SettingM::class);
    }
    public function getAutoCreateMenuTextAttr($value,$data){
        return self::BOOLEAN_TEXT[$data['auto_create_menu']];
    }
    public function getAutoCreateFileTextAttr($value,$data){
        return self::BOOLEAN_TEXT[$data['auto_create_file']];
    }
}
