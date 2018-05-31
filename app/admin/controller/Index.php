<?php
namespace app\admin\controller;
use app\admin\model\Column;
use think\Controller;
use think\Db;
use think\Session;
use think\Model;

class Index extends Controller
{
    public function index()
    {
      $data = input('.post');
      if( !isset($data['sub']) ){

      }else{
        $this->error("请先登录","index/login");
      }
      return view();
    }

    //管理员查看
    public function admin_role(){
      $res = Db::table('adname')->select();
      $this->assign("res",$res);
      return view();
    }

    //管理员添加
    public function admin_role_add(){
      $data = input("post.");
      if( request()->isPost() ){
        $res = Db::name('adname')->insert($data);
        if($res){
          $this->success("添加管理员成功");
        }else{
          $this->error("添加管理员失败");
        }
      }else{
        return view();
      }

    }

    //登录
    public function login(){

      return view();
    }

    //首页
    public function welcome(){
      return view();
    }

    //咨询
    public function article_lista(){
      $muser = new Column();
      $arr = $muser->index();
      $this->assign('arr',$arr);
      return $this->fetch();
    }

    //添加咨询
    public function article_adda(){

      if(request()->isPost() ){
        $data = input('post.');
        $res = Db::table('column')->insert($data);
        if($res){
          $this->success("添加成功","index/article_adda");
        }else{
          $this->error("添加失败");
        }
      }
      $res = Db::table('column')->select();
      $this->assign("res",$res);
      return view();

    }



}
