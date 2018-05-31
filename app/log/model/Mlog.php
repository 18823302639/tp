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
      $arr = Db::table('fname')
                ->field('id')
                ->where('fuser',$se_name)
                ->find();
      return $arr;
    }

    //时间判断
    public function mf_time(){
      $user = new Mlog();
      $u = $user->fid();
      $data = input('post.');
      $arr = Db::table('f_journal')->where('fid',$u['id'])->order('ftime desc')->find();
      $time = date("Y-m-d H:i:s",time());
      $timeb = mb_substr($time,0,10);
      $ftimeb = mb_substr($arr['ftime'],0,10);
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
        $data['fid'] = $u['id'];
        $data['ftime'] = date("Y-m-d H-i-s",time());
        $res = Db::table('f_journal')->fetchSql(false)->insert($data);
        return $res;
    }


}



?>
