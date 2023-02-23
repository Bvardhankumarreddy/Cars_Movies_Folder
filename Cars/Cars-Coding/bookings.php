<?php
include('./components/header.php');
include('./src/car.php');
include('./src/booking.php');

if(!isset($_SESSION['car_user'])){
    header('location:login.php');
}

$car = new car($connect);
$response = $car->getsinglecardetails($_GET['cid']);

$cardetail = mysqli_fetch_assoc($response);
$booking = new booking($connect);





if ($_SERVER["REQUEST_METHOD"] === "POST") {

    
    $cid = $_GET['cid'];
    $uid = $_SESSION['userid'];
    $start_date = $_POST['start_date'];
    $end_date = $_POST['end_date'];
    //echo $start_date;

    $enddt = date_create($end_date);
    $startdt = date_create($start_date);
    $days = date_diff($enddt, $startdt)->days === 0 ? 1 : date_diff($enddt, $startdt)->days;

    $amount = $days * $cardetail['rent_price'];
    $disc_price = ($carddetail['dcnt_per'] / 100) * $amount;
    $amount = $amount - $disc_price;

    // $response = $booking->created($cid, $uid, $start_date, $end_date, $amount);

    $response = $booking->created($cid, $uid, $start_date, $end_date, $amount);


    if ($response) {
        
        if($updated=$booking->avliable($cid)){

            
        echo "$cid";

        
        
        ?>
        <script> alert('Your booking is successful'); 
        window.location="http://localhost:8888/phpbasics/index.php";
        </script>
<?php
        }


    }
    
}
?>



<section class="main-container">

        <div class="main-container-child">
            <div class="booking-section">
                <div class="booking-section-img">
                    <img src="<?=$cardetail['image']?>" alt="car">
                </div>
                <div class="booking-details">
                    <h1><?=$cardetail['brand']?> <?=$carDetails['name']?></h1>

                    <h2>Rs <?=$cardetail['rent_price']?></h2>

                    <h4><?=$cardetail['number']?></h4>

                    <p><?=$cardetail['Is_Avaliable']?"Available":"Unavailable" ?></p>
                </div>
            </div>
            <div class="booking-section">
                <form method="post">
                <h1>Fill Booking Details</h1>

                <div>
                <p>Start Date</p>
                <input type="date" id="start_date"min="<?=date('Y-m-d')?>" name="start_date"/>
                </div>

                <div>
                <p>End Date</p>
                <input type="date" id="end_date"min="<?=date('Y-m-d')?>" onchange ="calculateprice(<?=$cardetail['rent_price']?>,<?=$cardetail['dcnt_per']?>)" name="end_date"/>
                </div>

                <h2>

                To Be Paid : 5000 (10% discount)

                </h2>

                <button  type="save" class="btn btn-primary">Confirm Booking</button>
                </form>
            </div>
        </div>

    </section>
    



<?php
include('./components/footer.php');
?>