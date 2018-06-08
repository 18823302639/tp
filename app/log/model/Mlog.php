<?php
namespace app\log\model;

use think\Controller;
use think\Db;
use think\Session;
use think\Model;

class Mlog extends Model
{

    //查找用户id
    public function fid(){
      $se_name = session('name');
      $arr = Db::table('users')
                ->field('uid')
                ->where('user_name',$se_name)
                ->find();
      return $arr;
    }

    //时间判断
    public function mf_time(){
      $user = new Mlog();
      $u = $user->fid();
      $data = input('post.');
      $arr = Db::table('user_content')->where('us_id',$u['uid'])->order('us_time desc')->find();
      $time = date("Y-m-d H:i:s",time());
      $timeb = mb_substr($time,0,10);
      $ftimeb = mb_substr($arr['us_time'],0,10);
      if($ftimeb == $timeb){
        return 1;
      }else{
        return 2;
      }
    }

    //写日志
    public function exe(){
        $user = new Mlog();
        $u = $user->fid();
        $data = input("post.");
        $data['us_id'] = $u['uid'];
        $data['us_time'] = date("Y-m-d H-i-s",time());
        $res = Db::table('user_content')->fetchSql(false)->insert($data);
        return $res;
    }

    //查看日志详情
    public function conten($id){

      $res = Db::table('user_content')
                ->alias("us_co")
                ->join("users u","u.uid = us_co.us_id")
                ->field("u.*,us_co.*")
                ->fetchSql(false)
                ->where("us_co.id",$id)
                ->select();

      return $this->sele($res,$id);

    }

    //无限级分类
    public function sele($data,$id){

      static $arr = array();

      foreach($data as $k=>$v){

          if( $id == $v['id'] ){

              $arr[] = $v;
              $res = Db::table('user_content')
                        ->alias("us_co")
                        ->join("users u","u.uid = us_co.us_id")
                        ->field("u.*,us_co.*")
                        ->fetchSql(false)
                        ->where("us_co.p_id",$id)
                        ->select();

              foreach($res as $key=>$val){

                $arr[] = $val;

              }


          }

      }
      //echo "<pre>";
      //print_r($arr);

      return $arr;

    }




}



?>
