function changeimage(image, number,color,cdids){


    document.getElementById('big-img').src=image;
    document.getElementById('number').innerText = number;

    let url = document.getElementById('booking').href;
    let data = url.replace(url.split("?")[1], `cid=${cdids}`);
    document.getElementById('booking').href = data;
    

}


 function calculateprice(price, discount){

    let start_date = document.getElementById('start_date').value;
    let end_date = document.getElementById('end_date').value;

    if (start_date!=""){

        let days=(Math.floor(Date.parse(end_date)-Date.parse(start_date))/86400000);

        if (days==0){
           days = 1;


        }
        let finalamount = price*days;
        let discamount = (discount/100)*finalamount;
        finalamount = finalamount-discamount;
        console.log(finalamount);

    }

    else{

        alert("Please select the start date");
        
    }
}
