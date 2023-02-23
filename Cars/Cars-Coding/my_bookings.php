<?php

include('./components/header.php');
include('./src/booking.php');
?>

<?php


$book = new booking($connect);
$bookings = $book->booked();



$cdid = null;
$uid = null;
$start_date = null;
$end_date = null;
$amount = null;


echo '<div class="table table-responsive  table-active " >
<table class="table center" >
    <h2 style="text-align:center">Car Bookings</h2>
    <tr class="table-secondary center" >
        <th >ID</th>
        <th >CDID</th>
        <th >UID</th>
        <th >Start_Date</th>
        <th >End_Date</th>
        <th >Amount</th>

    </tr>';

while ($all_booked=mysqli_fetch_assoc($bookings)){

    $id = $all_booked['id'];
    $cdid = $all_booked['cdid'];
    $uid = $all_booked['uid'];
    $start_date = $all_booked['start_date'];
    $end_date = $all_booked['end_date'];
    $amount = $all_booked['amount'];

    echo '<tr class="table-primary"  >

    <td  >'.$id.'</td>
    <td >'.$cdid.'</td>
    <td >'.$uid.'</td>
    <td >'.$start_date.'</td>
    <td >'.$end_date.'</td>
    <td >'.$amount.'</td> ';

}







?>



</div>




<?php

include('./components/footer.php')
?>