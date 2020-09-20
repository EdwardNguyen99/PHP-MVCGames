<?php 
session_start();
require_once "class/dt.php";
$dt=new dt;
$action =$_GET['action'];//de biet phai lam gi them/xoa/sua/cap nhat
$idDT=$_GET['idDT']; //de biet san pham nao them hay bot
$dt->CapNhatGioHang($action, $idDT);
if ($action=="add") header("location:main.php?p=giohang" );
if ($action=="remove") header("location:main.php?=giohang");
if ($action=="update") header("location:main.php?p=giohang");
?>