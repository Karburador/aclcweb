<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png" />
	<title>ACLC Registration</title>
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-datepicker.js"></script>
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datepicker.css">
	<link rel="stylesheet" type="text/css" href="assets/css/styleshs.css">


	<script type="text/javascript">
		function Redirect() {
			window.location.href = "/";
		}
	</script>

</head>
<?php

session_start();
?>
<form>
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="assets/img/Logo1.png" />

				<h5>"Be #RealWorld Ready</h5>
				<h5>When you study at ACLC!"</h5>
			</div>
			<div class="col-md-9 register-right">

				<!------ TAB TOP ---------->
				<div class="tab-content" id="myTabContent">
					<br><br><br><br>
					<?php



					/**
					 * Make sure the variables are initialized so users will not simply refresh the page and server displays that
					 * variables are not initialized.
					 */
					if (isset(
						$_REQUEST['firstname'],
						//$_REQUEST['middlename'], --optional
						$_REQUEST['lastname'],
						$_REQUEST['gender'],
						$_REQUEST['bday'],
						$_REQUEST['address'],
						$_REQUEST['nguardian'],
						$_REQUEST['gcontact'],
						$_REQUEST['fbaccount'],
						$_REQUEST['lrn'],
						$_REQUEST['email'],
						$_REQUEST['mobile'],
						$_REQUEST['lastschool'],
						$_REQUEST['schooladdress'],
						$_REQUEST['yrgrad'],
						$_REQUEST['strand'],
						$_REQUEST['stype'],
						$_REQUEST['csrf_token']
					)) {
						$fname = $_REQUEST['firstname'];
						if (isset($_REQUEST['middlename'])) {
							$mname = $_REQUEST['middlename']; //double check this part what if the student has no middle name
						} else {
							$mname = "";
						}
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
						$csrf = $_REQUEST['csrf_token'];

						//check the CSRF token. Should be the same as the form, if not kill the process
						if (hash_equals($csrf, $_SESSION['csrf_token'])) {
							die("Token validation failed");
						}
						$conn = mysqli_connect("localhost", "root", "cuteako03", "studentinfo");
						// Check connection 
						if ($conn === false) {
							die("ERROR: Could not connect. "
								. mysqli_connect_error());
						}

						//Call stored procedure. The SP can check for duplicated values and returns message whether error or successful
						$sql2 = "CALL pSHS(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";

						$stmt = $conn->prepare($sql2);
						$stmt->bind_param(
							'sssssssssssssssss',
							$fname,
							$mname,
							$lname,
							$gender,
							$bdate,
							$address,
							$nguardian,
							$gcontact,
							$fbaccount,
							$lrn,
							$email,
							$mobile,
							$lastschool,
							$schooladdress,
							$yrgrad,
							$strand,
							$stype
						);

						//Execute the statement and display the result of the stored procedure
						$stmt->execute();
						$result = $stmt->get_result();
						while ($i = $result->fetch_object()) {
							if ($i->status == "Success") {
								echo "<div class=\"alert alert-success\" role=\"alert\">";
								echo "<h4>" . $i->status . "</h4>";
								echo $i->msg;
								echo "</div>";
							} else {
								echo "<div class=\"alert alert-danger\" role=\"alert\">";
								echo "<h4>" . $i->status . "</h4>";
								echo $i->msg;
								echo "</div>";
							}
							//improve, if the status is ERROR, make the text color RED
							// if the status is SUCCESS, make the text color GREEN
						}

						$stmt->close();
						$conn->close();
					} else {
					?>
						<div class="alert alert-danger" role="alert">
							Invalid operation!
						</div>
					<?php
					}

					?>
					<div>
						<a class="btn btn-success btn-lg" href="#" onclick="Redirect()" style="width:100%;margin-top:20px;">Home</a>
					</div>
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