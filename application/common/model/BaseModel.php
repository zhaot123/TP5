<?php
/**
 * Created by PhpStorm.
 * User: WangChao
 * Date: 2019/6/15 0015
 * Time: 9:14
 */
namespace app\common\model;
use think\Model;
//use think\model\concern\SoftDelete;
abstract class BaseModel extends Model{
    /*model设置*/
    //返回值自动成为Y-m-d,h:i:s;
    protected $autoWriteTimestamp = true;
    protected $type = ['pay_time' => 'timestamp:Y-m-d H:i','create_time' => 'timestamp:Y-m-d H:i'];
    protected $hidden = ['delete_time'];
    protected $readonly = ['id'];
    public $softDelete = true;//是否为软删除
    protected $defaultSoftDelete = 0;//软删除字段默认值
    public $noDeletionId = [];//不可删除ID
    protected $searchField = [];//可搜索字段
    protected $whereField = [];//可作为条件的字段
    protected $timeField = [];//可做为时间范围查询的字段
    const BOOLEAN_TEXT = [0 => '否', 1 => '是'];//是否字段，使用场景：用户的是否冻结，文章是否为热门等等。
    /**
     * create 新增数据
     * @param string $model_name 模型名  $model_name='class_name';
     * @param array $data 新增的数组
    */
    public function createData($model_name,$data){
        $model = model($model_name);
        if (!is_object($model)){return 5000;}
        if (empty($data)){return 4241;}
        $model::create($data);//错误异常已被拦截输出
        return 2010;
    }
    /**
     * save 新增更新数据
     * @param array $data
     * @param array $where 更新条件，无更新条件时$data中存在主键自动识别为更新
     * @param int $successCode 成功状态码
     * @param int $failCode 失败状态码
     * param array $data 返回客户端的数据
     */
    public function saveData($data,$where=[],$successCode,$failCode){
        if (!empty($where)){
            $save = $this->allowField(true)->isUpdate(true)->save($data,$where);
            if ($save == 0 || $save == false) {
                return $failCode;
            }else{
                return $successCode;
            }
        }
        else{
            if (isset($data['id'])){
                if (is_numeric($data['id']) && $data['id'] > 0) {
                    $save = $this->allowField(true)->isUpdate(true)->save($data, ['id' => $data['id']]);
                } else {
                    $save = $this->allowField(true)->isUpdate(false)->save($data);
                }
            }
            else {
                $save = $this->allowField(true)->isUpdate(false)->save($data);
            }
            if ($save == 0 || $save == false) {
                return $failCode;
            }else{
                return $successCode;
            }
        }
    }
    /**
     * saveAll 批量新增更新数据
     * @param string $model_name 模型名  $model_name='class_name';
     * @param array $data 新增的数组，存在主键的时候会认为是更新操作
     * @param bool|true|false $replace  是否自动识别更新和写入
     */
    public function saveAllData($model_name,$data,$replace=true){
        $model = model($model_name);
        if (!is_object($model)){return 5000;}
        if (empty($data)){return 4241;}
        $model->saveAll($data,$replace);//错误异常已被拦截输出
        return 2001;
    }
    /* 根据主键id删除数据，硬删除，返回删除的条数，若一条没有删除则返回值为零
     * @param $model_name 模型名  $model_name='class_name';
     * @param $data
     * $batch是否批量
     * $SoftDelete是否软删除 需要在各自的model中写
     * */
    public function deleteDataById($model_name,$data,$batch=false,$SoftDelete=false){
        $model = model($model_name);
        if (!is_object($model)){return 5000;}
        if (isset($data['id'])){
            if ($batch == true){
                $ida = explode(',',$data['id']);
                if ($ida == false){return 4241;}
                foreach ($ida as $value){
                    if (!is_numeric($value) || $value <= 0){return 4241;}
                }
            }
            else{
                if (!is_numeric($data['id']) || $data['id'] <= 0){return 4241;}
            }
            if ($SoftDelete == true) {
                $delete = $model::destroy($data['id']);
//                $delete = $model->delete($data['id']);
            }
            else{
                $delete = $model::destroy($data['id'],true);
//                $delete = $model->delete($data['id'],true);
            }
            if ($delete == true) {
                return 2040;
            }else{
                return 2041;
            }
        }else{
            return 4241;
        }
    }
    /*
     * 通过查询条件获取单个字段数据
     * @param array $where 查询条件
     * @param bool|true $field 获取字段
     * @return $value;
     * */
    public function getValueByWhere($where=[],$field,$order=false){
        $value = $this->where($where)->order($order)->value($field);
        return $value;
    }
    /*
    * 通过查询条件获取字段多个数据
    * @param array $where 查询条件
    * @param bool|true $field 获取字段
    * @return $value;
    * */
    public function getColumnByWhere($where=[],$field,$order=false){
        $value = $this->where($where)->order($order)->column($field);
        return $value;
    }
    /*
     * 通过查询条件获取数据个数
     * @param array $where 查询条件
     * @return $count;
     * */
    public function getCountByWhere($where=[]){
        $count = $this->where($where)->count();
        return $count;
    }
    /**
     * 通过查询条件获取单条数据
     * @param array $where 查询条件
     * @param bool|true $field 获取字段
     * @param string $order 排序条件
     * @param array $append 增加字段这需要在模型里增加获取器
     * @param bool|false $with 模型关联string多个逗号隔开
     * @param array $hidden 隐藏字段
     * @param bool|false $cache 是否开启查询缓存
     * @return array
     */
    public function getArrayByWhere($where=[],$field=true,$order=false,$cache=false,$with=false,$append=[],$hidden=[]){
        $object = $this->where($where)->field($field)->order($order)->cache($cache,60)->findOrEmpty();
        if(!empty($object) && (!empty($append) || !empty($hidden) || $with!=false)){
            if(!empty($append)){$object->append($append);}
            if(!empty($hidden)){$object->hidden($hidden);}
            if($with != false){
                if (strpos(',',$with) !=false){
                    $with_array = explode(',', $with);
                    foreach ($with_array as $item){
                        $object->$item;
                    }
                }
                else{
                    $object->$with;
                }
            }
        }
        if (empty($object)){
            $object = array();
        }
        return $object;
    }
    /**
     * 通过查询条件获取多条数据(数组)
     * @param array $where    $where[] = ['uid','eq',$data['uid']];$map[] = ['pay_time','neq',0];
     * @param bool|true $field
     * @param bool|true $field 获取字段
     * @param string $order 排序条件
     * @param array $append 增加字段这需要在模型里增加获取器
     * @param bool|false $with 模型关联string多个逗号隔开
     * @param array $hidden 隐藏字段
     * @param bool|false $cache 是否开启查询缓存
     * @return array
     */
    public function getListByWhere($where=[],$field=true,$order=false,$cache=false,$with=false,$append=[],$hidden=[]){
        $object_list = $this->where($where)->field($field)->order($order)->cache($cache,60)->select();
        if(!empty($object_list) && (!empty($append) || !empty($hidden) || $with!=false)){
            foreach($object_list as $key=>$value){
                if(!empty($append)){$value->append($append);}
                if(!empty($hidden)){$value->hidden($hidden);}
                if($with != false){
                    if (strpos(',',$with) !=false){
                        $with_array = explode(',', $with);
                        foreach ($with_array as $item){
                            $value->$item;
                        }
                    }
                    else{
                        $value->$with;
                    }
                }
            }
        }
        return $object_list;
    }
    /**
     * 通过查询条件获取多条数据带分页
     * @param array $where  $where[] = ['uid','eq',$data['uid']];$map[] = ['pay_time','neq',0];
     * @param bool|true $field
     * @param bool|true $field 获取字段
     * @param string $order 排序条件
     * @param array $append 增加字段这需要在模型里增加获取器
     * @param bool|false $with 模型关联string多个逗号隔开
     * @param array $hidden 隐藏字段
     * @param int $limit 每页数量
     * @param int $page 页码数
     * @param bool|false $cache 是否开启查询缓存
     * @return array
     */
    public function getListPaginateByWhere($where=[],$field=true,$order=false,$cache=false,$with=false,$append=[],$hidden=[],$limit=10,$page=1){
        $object_list = $this->where($where)->field($field)->order($order)->cache($cache,60)->paginate($limit, false, ['page' => $page]);
        if(!empty($object_list) && (!empty($append) || !empty($hidden) || $with!=false)){
            foreach($object_list as $key=>$value){
                if(!empty($append)){$value->append($append);}
                if(!empty($hidden)){$value->hidden($hidden);}
                if($with != false){
                    if (strpos(',',$with) !=false){
                        $with_array = explode(',', $with);
                        foreach ($with_array as $item){
                            $value->$item;
                        }
                    }
                    else{
                        $value->$with;
                    }
                }
            }
        }
        return $object_list;
    }
    /**
     * 判断字段是否存在
     * @param $column
     * @param string $table
     * @return bool

    protected function hasColumn($column,$table=""){
        $table = isset($table)?$table:$this->table;
        if (empty($table)||$column){
            $this->error="hasColumn方法参数缺失";
            return false;
        }
        $sql = "SELECT * FROM information_schema.columns WHERE table_schema=CurrentDatabase AND table_name = '{$table}' AND column_name = '{$column}'";
        return $this->query($sql) ? true : false;
    }
    /**
     * 带有乐观锁的修改
     * @param $save_data　　　修改的数据
     * @param string $edit_pk  修改的ＩＤ字段名称
     * @param string $version_field　　乐观锁版本号字段名称(数据库中)
     * @return array

    public function editDateWithLock($save_data,$edit_pk="",$version_field=""){
        if (empty($version_field)){
            $version_field = isset($this->versionField) ? $this->versionField : "edit_version";
        }
        if (empty($edit_pk)){
            $edit_pk = isset($this->editPk) ? $this->editPk : $this->getPk();
        }
        //判断PK字段是否存在
        if (!isset($save_data[$edit_pk])||!isset($save_data[$version_field])){
            return self::showReturnCode(4241);
        }else{
            //设置升级检索条件 PK和版本号
            $map[$edit_pk] = $save_data[$edit_pk];
            $map[$version_field] = $save_data[$version_field];
            //剔除PK
            unset($save_data[$edit_pk]);
        }
        try{
            //检测版本字段
            if($this->hasColumn($version_field)){
//                throw new \Exception("乐观锁版本字段[$version_field]不存在");
                return self::showReturnCode(5000,'乐观锁版本字段[$version_field]不存在');
            }
            $original_data = $this->where($map)->find();
            if (empty($original_data)){
//                throw new \Exception("此条信息已经变动了,请重新操作!");
                return self::showReturnCode(4230,'此条信息已经变动了,请重新操作');
            }
            foreach ($save_data as $item=>$value){
                if (isset($original_data[$item])){
                    //修改的数值不变时候 剔除
                    if ($original_data[$item]==$value){
                        unset( $save_data[$item]);
                    }elseif($item!=$version_field){
                        unset( $original_data[$item]);
                    }
                }else{
                    //修改的字段不存在 剔除
                    unset( $save_data[$item]);
                }
            }
            if(empty($save_data)){
//                throw new \Exception("修改的数值无变化");
                return self::showReturnCode(2040,'修改的数值无变化');
            }
            //版本号升级
            $save_data[$version_field]=(int)$original_data[$version_field]+1;
            if (1!=$this->allowField(true)->save($save_data,$map)){
//                throw new \Exception("修改信息出错:".$this->getError());
                return self::showReturnCode(1011,"修改信息出错:".$this->getError());
            }
            //记录修改日志
            $this->saveEditLog($original_data,$save_data);
            return self::showReturnCode(1010);
        }catch (\Exception $e){
            $msg=$e->getMessage();
            return self::showReturnCode(1011,$msg);
        }
    }
     * */
    /**
     * 保存修改信息
     * @param $original_data
     * @param $save_data
     * @return bool
    protected function saveEditLog($original_data,$save_data){
        if (empty($original_data)&&empty($save_data)){
            $this->error="保存的修改信息不存在";
            return false;
        }
        $log_data=[
            "uuid"=>Session::get('uuid', 'Global'),
            "model_data"=>$this->name,
            "original_data"=>$original_data,
            "save_data"=>$save_data,
            "update_time"=>time(),
        ];
        try{
            Db::table("update_log")->insert($log_data);
            return true;
        }catch (\Exception $e){
            $log_data["error"]="保存修改信息出错";
            Log::write(json_encode($log_data),"error");
            return false;
        }
    }
     **/




}
