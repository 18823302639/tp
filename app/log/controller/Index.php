<?php
namespace app\log\controller;

use app\log\model\Mlog;
use think\Controller;
use think\Db;
use think\Session;
use think\Model;

class Index extends Controller
{

    //构造函数
    public function __construct(){

      parent::__construct();

    }

    //前置操作
    protected $beforeActionList = [

      //  'f_time'  =>  ['only'=>'inlog']

    ];

    //首页
    public function index()
    {
      $data = input('post.');
      if( session('?name') ){
        $res = Db::table('user_content')
                  ->alias("us_co")
                  ->join("users us","us_co.us_id = us.uid")
                  ->fetchSql(false)
                  ->where('p_id',0)
                  ->order('us_time desc')
                  ->select();
        $this->assign('res',$res);
        return view();
      }else{
        $this->error("请先登录","index/login");
      }
      return view();
    }


    //日志详情
    public function contn($id){
      $res = Db::table('user_content')->fetchSql(false)->where('id',$id)->select();
      $user = new Mlog();
      $arr = $user->conten($id);
      $this->assign("res",$res);
      $this->assign('arr',$arr);
      return $this->fetch();
    }

    //回复日志判断用户，不能自己回复自己
    public function q_hf(){

      if( request()->isPost()){

        $data = input('post.');

        $res = Db::table('user_content')->fetchSql(false)->insert($data);
        if($res){
          return true;
        }else{
          return false;
        }
      }

    }

    //回复日志
    public function hf(){

      $user = new Mlog();
      $arr = $user->fid();

      if( request()->isPost()){

        $data = input('post.');
        //print_r($data);exit;
        $data['us_time'] = date("Y-m-d H-i-s",time());

        $res = Db::table('user_content')->fetchSql(false)->insert($data);

        if($res){
          return true;
        }else{
          return false;
        }
      }

    }

    //判断时间
    public function f_time(){

      if(request()->isPost()){

        $user = new Mlog();

        $obj = $user->mf_time();

        if($obj == 1 ){

          $this->error("一天只能提交一次","index/index");

        }

      }

    }

    ///写日志
    public function inlog(){
      if( request()->isPost() ){
        $user = new Mlog();
        $res = $user->exe();
        if($res){
          $this->success("提交成功","index/index");
        }else{
          $this->error("提交失败");
        }
      }
      return view();
    }

    //登录
    public function login(){
      if( request()->isPost() ){
        $data = input('post.');
        $res = Db::table('users')
                  ->where('user_name',$data['user_name'])
                  ->where('user_pwd',$data['user_pwd'])
                  ->select();
        if($res){
          session("name",$data['user_name']);
          $this->success("登录成功","index/index");
        }else{
          $this->error("用户名或者密码不对，请重新登陆","index/login");
        }
      }
      return view();
    }

    //注册
    public function log(){

      if( request()->isPost() ){
        $data = input('post.');
        $res = Db::name('users')->insert($data);
        if($res){

          $this->success("登录成功","index/index");
        }else{
          $this->error("登录失败","index/login");
        }
      }
      return view();
    }

    //注销账号
    public function unses(){
      session("name","think");
      $this->success("注销成功","index/login");
    }



}
