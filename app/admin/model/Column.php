<?php
namespace app\admin\model;
use think\Model;
use think\Db;

class Column extends Model
{

  public function index(){
    $res = Db::table('column')->select();
    $this->colu($res);
  }

  public function colu($data,$cid=0,$level=0){
    static $arr = array();
    foreach($data as $k=>$v){
      if($v['id'] == $cid){
        $v['level'] = $level;
        $arr[] = $v;
        $this->colu($data,$v['id'],$level+1);
      }
    }
    return $arr;
  }



}





?>
