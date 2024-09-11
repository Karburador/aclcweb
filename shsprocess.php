<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="assets/icon.png" />
    <title>Registration</title>
    <link href="css\bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="js\bootstrap.min.js"></script>
    <script src="js\jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" type="text/css" href="styleshs.css">
    

<script type="text/javascript">

(function () {
 var timeLeft = 10,
 cinterval;

 var timeDec = function (){
 timeLeft--;
 document.getElementById('countdown').innerHTML = timeLeft;
 if(timeLeft === 0){
 clearInterval(cinterval);
   }
};

cinterval = setInterval(timeDec, 1000);
})();

setTimeout(function () {    
    window.location.href = 'index.php'; 
},10000); // 10 seconds



</script>

</head>

<form>
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="assets/Logo.png"/>
                        <h3>Welcome</h3>
                        <h4>"Be #RealWorld Ready</h4>
                        <h4>When you study at ACLC!"</h4>
                        </div>
                    <div class="col-md-9 register-right">
                        <!------ TAB TOP ---------->
                        <div class="tab-content" id="myTabContent">
						<br><br><br><br>
                        					<?php 
													$conn = mysqli_connect("localhost", "root", "dev123sql$%^", "studentinfo"); 
														// Check connection 
														if($conn === false){ 
															die("ERROR: Could not connect. "
																. mysqli_connect_error()); 
														} 
														// Taking all 16 values from the form data(input) 
														$fname = $_REQUEST['firstname']; 
														$mname = $_REQUEST['middlename']; 
														$lname = $_REQUEST['lastname']; 
														$gender = $_REQUEST['gender']; 
														$bdate  = $_REQUEST['bday']; 
														$address = $_REQUEST['address']; 
														$nguardian = $_REQUEST['nguardian']; 
														$gcontact = $_REQUEST['gcontact']; 
														$fbaccount = $_REQUEST['fbaccount']; 
														$lrn = $_REQUEST['lrn'];
														$email = $_REQUEST['email']; 
														$mobile = $_REQUEST['mobile']; 
														$lastschool = $_REQUEST['lastschool']; 
														$schooladdress = $_REQUEST['schooladdress'];
														$yrgrad = $_REQUEST['yrgrad'];
														$strand = $_REQUEST['strand'];
														$stype = $_REQUEST['stype']; 

														// Performing insert query execution 
														// table name is shs
														$sql = "INSERT INTO `shs`(`fname`, `mname`, `lname`, `gender`, `bdate`,
														`address`, `nguardian`, `gcontact`, `fbaccount`, `lrn`, `email`,
														`mobile`, `lastschool`, `schooladdress`, `yrgrad`, `strand`, `stype`)
														VALUES ('$fname', '$mname','$lname','$gender','$bdate',
															'$address','$nguardian','$gcontact','$fbaccount', '$lrn','$email',
															'$mobile','$lastschool','$schooladdress', '$yrgrad','$strand','$stype')";

														$stmt = $conn->prepare($sql);
														$stmt->bind_param
														
														if(mysqli_query($conn, $sql)){ 
															echo "<div align='center'>Thank you! Your submission has been received!</div>";
															echo "<div> <br> <br></div>";
															echo "<div align='center'>OUR ADMISSION OFFICER WILL CONTACT YOU AS SOON AS POSSIBLE!</div>";
															echo "<div align='center'>IF YOU HAVE ANY QUESTIONS YOU MAY CONTACT US</div>";
															echo "<div align='center'>VIA FB PAGE ACLCCManilaOfficial /</div>";
															echo "<div align='center'>YOU CAN CALL 8735-0385</div>";
															echo "<div> <br> <br></div>";
																												
														} else{ 
															echo "ERROR: Hush! Sorry $sql. "
																. mysqli_error($conn); 
														} 
														
														// Close connection 
														mysqli_close($conn); 

													
											?>			

                                </div>
                                    <!------ COLUMN TWO ---------->
                                <div class="col-md-6">
	                        </div>
                        </div>
                    </div>
                </div>
            </div>
			
</form>
</body>
</html>