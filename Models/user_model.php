<?php
    include_once("../Models/user.php");
    include_once("./config.php");

    class user_Model{
        public function __construct()
        {
            
        }
        public function checkLogin($username,$passwd){
            $db_entity = new Database();
            $conn = $db_entity->createConnection();
            $user_obj = '';
            $sql_query = "Select * from users where Hoten='".$username."' and Password='".$passwd."'";
            $result = mysqli_query($conn,$sql_query); 
            if(mysqli_num_rows($result)>0){
                while($row=mysqli_fetch_assoc($result)){
                    $user_info = new user($row['userID'],$row['Hoten'],$row['Password'],$row['created_date'],$row['available'],$row['roleID']);
                    $user_obj=$user_info;
                }
            }
            mysqli_close($conn);
            return $user_obj;
        }

    }


?>