<?php

session_start();

unset($_session['car_user']);

session_destroy();
header('location:index.php')



?>