<?php
class model{
    public function getList(){
        $db=new goc();
        $str="select * from dienthoai";
        $r=$db->getList($str);
        return $r;
    }
    public function getByID($id){
        $db=new goc();
        $str="select * from dienthoai where idDT like '%$id%'";
        $r=$db->getInstance($str);
        return $r;
    }
    public function login($user,$pass){
        $db=new goc();
        $str="select * from user where idUser='$user' and Password='$pass'";
        $r=$db->getList($str);
        return $r;
    }
}
