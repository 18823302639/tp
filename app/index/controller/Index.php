<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Session;
use think\Model;
use think\File;

class Index extends Controller
{
    public function index()
    {

      return view();
    }

    public function bg(){
      $data = input('.post');
      //if($data['sub']){
        $arr = Db::table("username")->select();
        shuffle($arr);
        $this->assign("arr",$arr);
      //}
      return view();
    }

    public function upload(){
      // 获取表单上传文件
      print_r($_FILES['image']);
      //echo $_POST['image'];
      $files = request()->file();
      foreach($files as $file){
          // 移动到框架应用根目录/public/uploads/ 目录下
          $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
          if($info){
              // 成功上传后 获取上传信息
              // 输出 jpg
              echo $info->getExtension();
              // 输出 42a79759f284b767dfcb2a0197904287.jpg
              echo $info->getFilename();
              $this->success("上传成功",('index/index'));
          }else{
              // 上传失败获取错误信息
              echo $file->getError();
          }
      }
    }

    public function savestudentImport(){
        import('phpexcel.PHPExcel', EXTEND_PATH);//方法二
        //vendor("PHPExcel.PHPExcel"); //方法一
        $objPHPExcel = new \PHPExcel();

        //获取表单上传文件
        $file = request()->file('excel');
        $info = $file->validate(['size'=>1567800,'ext'=>'xlsx,xls,csv'])->move(ROOT_PATH . 'public' . DS . 'excel');
        if($info){
            $exclePath = $info->getSaveName();  //获取文件名
            $file_name = ROOT_PATH . 'public' . DS . 'excel' . DS . $exclePath;   //上传文件的地址
            $objReader =\PHPExcel_IOFactory::createReader('Excel2007');
            $obj_PHPExcel =$objReader->load($file_name, $encode = 'utf-8');  //加载文件内容,编码utf-8
            echo "<pre>";
            $excel_array=$obj_PHPExcel->getsheet(0)->toArray();   //转换为数组格式

            array_shift($excel_array);  //删除第一个数组(标题);
            //print_r($excel_array);exit;
            $data = [];
            $i=0;
            foreach($excel_array as $k=>$v) {

                $data[$k]['usname'] = $v[0];
                /*
                $data[$k]['uspost'] = $v[1];
                $data[$k]['ustle'] = $v[2];
                $data[$k]['usmail'] = $v[3];*/
                $i++;
            }
           $success=Db::name('username')->insertAll($data); //批量插入数据
           //$i=
           $error=$i-$success;
            echo "总{$i}条，成功{$success}条，失败{$error}条。";
           // Db::name('t_station')->insertAll($city); //批量插入数据
        }else{
            // 上传失败获取错误信息
            echo $file->getError();
        }

    }

    public function daochu(){
        $data = Db::table('username')->select();
        shuffle($data);
        //print_r($arr);
        //$data = "查询出数组";
        /*Vendor('phpexcel.PHPExcel');//调用类库,路径是基于vendor文件夹的*/
        Vendor('phpexcel.PHPExcel.Worksheet.Drawing');
        Vendor('phpexcel.PHPExcel.Writer.Excel2007');
        import('phpexcel.PHPExcel', EXTEND_PATH);//方法二
        $objExcel = new \PHPExcel();
        //set document Property
        $objWriter = \PHPExcel_IOFactory::createWriter($objExcel, 'Excel2007');

        $objActSheet = $objExcel->getActiveSheet();
        $key = ord("A");
        $letter =explode(',',"A,B,C,D,E");
        $arrHeader =  array('序号','名称','职位','电话','邮箱');;
        //填充表头信息
        $lenth =  count($arrHeader);
        for($i = 0;$i < $lenth;$i++) {
            $objActSheet->setCellValue("$letter[$i]1","$arrHeader[$i]");
        };
        //填充表格信息
        foreach($data as $k=>$v){
            $k +=2;
            $objActSheet->setCellValue('A'.$k,$v['id']);
            $objActSheet->setCellValue('B'.$k, $v['usname']);
            // // 图片生成
            // $objDrawing[$k] = new \PHPExcel_Worksheet_Drawing();
            // $objDrawing[$k]->setPath('public/static/admin/images/profile_small.jpg');
            // // 设置宽度高度
            // $objDrawing[$k]->setHeight(40);//照片高度
            // $objDrawing[$k]->setWidth(40); //照片宽度
            // /*设置图片要插入的单元格*/
            // $objDrawing[$k]->setCoordinates('C'.$k);
            // // 图片偏移距离
            // $objDrawing[$k]->setOffsetX(30);
            // $objDrawing[$k]->setOffsetY(12);
            // $objDrawing[$k]->setWorksheet($objPHPExcel->getActiveSheet());
            // 表格内容
            /*
            $objActSheet->setCellValue('C'.$k, $v['uspost']);
            $objActSheet->setCellValue('D'.$k, $v['ustle']);
            $objActSheet->setCellValue('E'.$k, $v['usmail']);
            */



            // 表格高度
            $objActSheet->getRowDimension($k)->setRowHeight(20);
        }

        $width = array(20,20,15,10,10,30,10,15);
        //设置表格的宽度
        $objActSheet->getColumnDimension('A')->setWidth($width[0]);
        $objActSheet->getColumnDimension('B')->setWidth($width[3]);
        $objActSheet->getColumnDimension('C')->setWidth($width[5]);
        $objActSheet->getColumnDimension('D')->setWidth($width[3]);
        $objActSheet->getColumnDimension('E')->setWidth($width[3]);
        $objActSheet->getColumnDimension('F')->setWidth($width[3]);
        $objActSheet->getColumnDimension('G')->setWidth($width[3]);
        $objActSheet->getColumnDimension('H')->setWidth($width[5]);


        $outfile = "excel".date("Y-m-d").".xls";
        ob_end_clean();
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header('Content-Disposition:inline;filename="'.$outfile.'"');
        header("Content-Transfer-Encoding: binary");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Pragma: no-cache");
        $objWriter->save('php://output');
    }



}
