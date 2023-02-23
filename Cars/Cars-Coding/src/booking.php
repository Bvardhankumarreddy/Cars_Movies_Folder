<?php

// include('./src/connection.php');

// ini_set('display_errors', 1);

class booking{

private $connection = null;
  
public function __construct($conn){

        $this->connection = $conn;
}

public function created($cid,$uid,$start_date,$end_date,$amount){

    $query = "Insert into my_bookings(cdid, uid, start_date, end_date, amount) values 
    ($cid,$uid,'$start_date','$end_date',$amount)";

    if($result=mysqli_query($this->connection->getconnection(),$query)){

            return $result;
    }
}

public function booked(){

        $query = "select * from my_bookings";

        if($result=mysqli_query($this->connection->getconnection(),$query)){
    
            return $result;
        }
}

public function avliable($cid){

        $query = "update cars_detail set is_avliable=0 where id=$cid ";

        if($result=mysqli_query($this->connection->getconnection(),$query)){

                echo "Updated";
                return $result;
        }


}

}

?>