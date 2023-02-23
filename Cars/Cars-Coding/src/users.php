<?php

// include('./src/connection.php');


class users {


    public $conne = null;

   function __construct($connect){

        $this->conne = $connect;
   }

   public function create ($name, $user_name, $email, $pass, $contact){

    $query = "insert into users(name, username, email, password,contact) values ('$name','$user_name','$email','$pass',$contact)";

    if ($result=mysqli_query($this->conne->getconnection(), $query)){

        
        return $result;
            
            
    }
    else{

       
        // echo "problem";
        print_r($query);
            
    }
   }

    public function login($username, $pass)
    {

        $query = "select * from users where username='$username' and password = '$pass'";
        $result = mysqli_query($this->conne->getconnection(), $query);

        if (mysqli_num_rows($result) === 1) {

            $row = mysqli_fetch_assoc($result);
            return array("success" => true, "userid" => $row['ID']);
        } else {

            return array("success" => false);
        }
    }
   
}



?>