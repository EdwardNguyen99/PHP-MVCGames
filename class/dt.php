<?php 
    require_once "class/goc.php";
    class dt extends goc{
        function ListLoaiSP(){
            $sql="SELECT idLoai, TenLoai, hinh FROM loaisp  WHERE AnHien = 1
            ORDER BY ThuTu DESC LIMIT 0,12";	
            $kq = $this->db->query($sql);	
            if(!$kq) die( $this-> db->error);
            return $kq;		
         }
         

}//dt
?>