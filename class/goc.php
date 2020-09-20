<?php
require_once "config.php";
class goc {
	protected $db;
	function __construct(){
	   $this->db = new mysqli (DB_HOST, DB_USER, DB_PASS, DB_NAME);
	   $this->db->set_charset("utf8"); 
	} 
	//các method
	    function Blog($sotin){
        $sql="SELECT idTin, TieuDe, urlHinh,TomTat FROM tin  WHERE AnHien = 1 
        ORDER BY RAND() LIMIT 0,$sotin";	
        $kq = $this->db->query($sql);	
        if(!$kq) die( $this-> db->error);
        return $kq;		
     } 
     function SanPhamMoi($sosp = 10){				
        $sql="SELECT idDT, TenDT, urlHinh,Gia FROM games  WHERE AnHien = 1 
        ORDER BY NgayCapNhat DESC LIMIT 0,$sosp";	
        $kq = $this->db->query($sql);	
        if(!$kq) die( $this-> db->error);
        return $kq;		
     }
     function SanPhamBanChay($sosp = 10){				
        $sql="SELECT idDT, TenDT, urlHinh FROM games WHERE AnHien=1 
        ORDER BY SoLanMua DESC LIMIT 0,$sosp";	
        $kq = $this->db->query($sql);
        if(!$kq) die( $this-> db->error);
        return $kq;
     }
     function SanPhamHot($sosp = 10){
        $sql="SELECT idDT,TenDT,urlHinh FROM games 
        WHERE AnHien=1 AND Hot=1 ORDER BY NgayCapNhat DESC LIMIT 0,$sosp";
        $kq = $this->db->query($sql);
        if(!$kq) die( $this-> db->error);
        return $kq;
     }
     function CapNhatGioHang($action, $idDT){	
        if ( !isset($_SESSION['daySoLuong']) ) $_SESSION['daySoLuong']=array();
        if ( !isset($_SESSION['dayDonGia']) )  $_SESSION['dayDonGia']=array();
        if ( !isset($_SESSION['dayTenDT']) )   $_SESSION['dayTenDT']=array();
     
        if ($action=="add") {
           settype($idDT,"int"); if ($idDT<=0) return;
           $sql="SELECT TenDT,Gia,SoLuongTonKho FROM games WHERE idDT=$idDT";
           $kq = $this->db->query($sql);	
           if(!$kq) die( $this-> db->error);	
           $row = $kq->fetch_assoc();		
     
           $_SESSION['dayTenDT'][$idDT] = $row['TenDT'];
           $_SESSION['dayDonGia'][$idDT] = $row['Gia'];
           $_SESSION['daySoLuong'][$idDT]+=1;
      
           if ($_SESSION['daySoLuong'][$idDT]>$row['SoLuongTonKho']) $_SESSION['daySoLuong'][$idDT] = $row['SoLuongTonKho'];
         }//add
     
        if ($action=="remove") {
           settype($idDT,"int"); if ($idDT<=0) return;
           unset($_SESSION['dayTenDT'][$idDT]);
           unset($_SESSION['dayDonGia'][$idDT]);
           unset($_SESSION['daySoLuong'][$idDT]);
        } //remove
     }// function capnhatgiohang
     function chiTietSP($idDT){
      $sql="SELECT * FROM games WHERE AnHien = 1 AND idDT=$idDT";
      $kq = $this->db->query($sql);
      if(!$kq) die( $this-> db->error);
      return $kq;
      }
      function layHinhSP($idDT, $sohinh){
         $sql="SELECT urlHinh FROM hinh  WHERE AnHien = 1 AND
               idDT=$idDT LIMIT 0, $sohinh";
         $kq = $this->db->query($sql);
         if(!$kq) die( $this-> db->error);
         return $kq;
      }
     

     
} //class goc
?>
