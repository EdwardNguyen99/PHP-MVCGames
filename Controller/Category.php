<?php 
    require "./class/goc.php";
    class Category extends goc {
        // function SanPhamMoi($sosp = 10){				
        //     $sql="SELECT idsanpham, tensp, hinhanh,giadexuat,noidung FROM sanpham  WHERE tinhtrang = 1 
        //     ORDER BY loaisp DESC LIMIT 0,$sosp";	
        //     $kq = $this->db->query($sql);	
        //     if(!$kq) die( $this-> db->error);
        //     return $kq;		
        //  }
        function SanPhamMoi($sosp = 10){				
            $sql="SELECT idDT, TenDT, urlHinh,Gia FROM dienthoai  WHERE AnHien = 1 
            ORDER BY NgayCapNhat DESC LIMIT 0,$sosp";	
            $kq = $this->db->query($sql);	
            if(!$kq) die( $this-> db->error);
            return $kq;		
         }
         
         
    }
?>