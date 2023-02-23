<?php
include('./src/users.php');
include('./components/header.php');


$message = null;

if ($_SERVER['REQUEST_METHOD'] === "POST") {
    
    $user_name = $_POST['username'];
    $pass = $_POST['password'];
    


    $user = new users($connect);
    $response= $user->login($user_name, $pass);

    if ($response["success"]===true) {

      $_SESSION['userid'] = $response["userid"];
        $_SESSION['car_user'] = $user_name;
        header('location:index.php');

    }

    else {

        $message= "Wrong Username or Password";

    }
}


?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Document</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;900&display=swap');






* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.body {
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  background-color: #EEF0F7;
  display: grid;
  place-items: center;
  min-height: 100vh;
  overflow: hidden;
}

.container {
  background-color: white;
  width: 600px;
  height: 450px;
  position: relative;
  display: grid;
  grid-template-columns: 1fr 1fr;
  place-items: center;
  line-height: 1.5;
}






 
img {
    width: 250px;
    height: 400px;
    object-fit: cover;
    object-position: center;
}

.container-text {
    padding: 10px 40px 10px 10px;
}



    input,
  button {
      width: 100%;
      border: none;
      padding: 14px;
      border-radius: 3px;
  }

  input {
      border: 2px solid #DADDEC;
      margin: 5px 0 10px;
      font-size: 1rem;
      color: #656880;
  }

  button {
      background-image: linear-gradient(to right, #89CAFF, #6589FF);
      display: block;
      color: White;
      font-size: 1rem;
      cursor: pointer;
      box-shadow: 0 5px 20px #89caff94;
      transition: box-shadow .3s ease-in-out;
  }

  button:hover {
      box-shadow: none;
  }



</style>
</head>
<body>
    <div class="container">
     <img
      src="./images/photo-1597687210367-a4915552d886.jpeg"
      alt="image">
      
      <div class="container-text">
       <div  style="text-align:center; font-size:30px;">Admin Login</div>
        
        <div class="inputs">
            <form action="" method="post">
            
            <input type="text" name="username" placeholder="Enter UserName"><br>
            
           <input type="password" name="password" placeholder="Enter Password">
            <button type="submit">LOGIN</button><br>



            <?php

            if ($message !== null){

            ?>

            <div class="alert alert-success">
              <?php

              echo $message;
              $message = "";

            ?>


            </div>
            <?php

            }
            ?>
            
         </form>
        </div>
        
      </div>
    </div>
  

    
    
</body>
</html>

<?php 
include('./components/footer.php');
?>