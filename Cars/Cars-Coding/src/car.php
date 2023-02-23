<?php

// include('connection.php');
  class car {


    private $connection = null;

    public function __construct($connection){

        $this->connection = $connection;

    }

    public function index (){

        $query = 'select * from cars_shop';
        
        if ($result=mysqli_query($this->connection->getconnection(),$query)){

            return $result;
        }
    }

    public function get ($id){

        $query = "select * from cars_shop cs, cars_detail cd where cs.id=cd.cid and cs.id=$id";

        if ($response=mysqli_query($this->connection->getconnection(),$query)){

            return $response;
        }
    }

    public function getsinglecardetails($id){

        $query = "select * from cars_detail cd, cars_shop cs where cd.cid =cs.id and cd.id=$id";
        

        if ($result=mysqli_query($this->connection->getconnection(),$query)){
            

            return $result;
        }
        
    
    }
  }

  


?>