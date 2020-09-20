<?php
include 'config.php';
include '../Model/model.php';
session_start();
if (isset($_POST['submit'])){
    $user=$_POST['username'];
    $pass=$_POST['pass'];
    if (trim($user)!="" and trim($pass!="")){
        $user=stripcslashes($user);
        $pass=stripcslashes($pass);
        $user=strip_tags($_POST['username']);
        $pass=strip_tags($_POST['pass']);
        $n=new model();
        $r=$n->login($user,$pass);

        if ($set=$r->fetch_assoc()>0){
            $_SESSION['username']=$user;

//            $error="<div class='alert alert-success text-center' role='alert'>Login is successfull</div>";
         header("Location:../View/index.php");
        }
    else{
        $error="<div class='alert alert-danger text-center' role='alert'>Sai user hoặc password</div>";
    }
    }

}