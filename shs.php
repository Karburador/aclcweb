<!DOCTYPE html>
<html lang="en">
<?php

/*header("Expires: Tue, 01 Jan 2000 00:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");*/

session_start();
function generate_token()
{

    $token = random_bytes(32);
    $_SESSION['csrf_token'] = $token;

    return $token;
}
?>

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


    <script>
        $(function() {
            $('.dates #bday').datepicker({
                'format': 'mm-dd-yyyy',
                'autoclose': true
            });
        });
    </script>
</head>

<body>
    <form action="shsprocess_sp.php" method="post">
        <input type="hidden" name="csrf_token" value="<?php echo generate_token(); ?>">
        <div class="container register">
            <div class="row">
                <div class="col-md-3 register-left">
                    <img src="assets/img/Logo1.png" />
                    <h5>Welcome!</h5>
                    <h5>Consent for Collection and Use of Personal Data</h5><br>
                    <h5>The information collected on this form will be held by ACLC College of Manila in Electronic Format and will be processed in accordance with RA10173 or Data Privacy Act of 2012.</h5><br>
                    <h5>By continuing through this process, you understood and give consent to the collection of your personal information for the purpose of Enrollment for School Year 2021-2022</h5>
                </div>
                <div class="col-md-9 register-right">
                    <!------ TAB TOP ---------->
                    <div class="tab-content" id="myTabContent">
                        <h3 class="register-heading">SHS REGISTRATION</h3>
                        <div class="row register-form">
                            <div class="col-md-6">
                                <h6 for="Name">NAME:</h6>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="First Name" name="firstname" required />
                                    <input type="text" class="form-control" placeholder="Middle Name" name="middlename" />
                                    <input type="text" class="form-control" placeholder="Last Name" name="lastname" required />
                                </div>
                                <br>
                                <h6 for="Gender">GENDER:</h6>
                                <div class="form-group">
                                    <select class="form-control" name="gender" id="gender" required>
                                        <option value="" selected disabled>--PLEASE SELECT--</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>
                                <br>
                                <h6 for="Birthday">BIRTHDATE:</h6>
                                <div class="form-group">
                                    <div class="dates">
                                        <input type="text" autocomplete="off" id="bday" class="form-control" name="bday" placeholder="Birthday" required>
                                    </div>
                                </div>
                                <br>
                                <h6 for="Address">HOME ADDRESS:</h6>
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Address" name="address" required></textarea>
                                </div>
                                <br>
                                <h6 for="Guardian">PARENT/GUARDIAN INFO:</h6>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Name of Parent/Guardian" name="nguardian" required>
                                    <input class="form-control" type="text" placeholder="Contact # of Guardian" name="gcontact" required>
                                </div>
                                <br>
                                <h6 for="Facebook">FACEBOOK ACCOUNT:</h6>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Facebook Account" name="fbaccount" required>
                                </div>

                            </div>
                            <!------ COLUMN TWO ---------->
                            <div class="col-md-6">

                                <h6>LRN:</h6>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Enter LRN#" name="lrn" required>
                                </div>
                                <br>
                                <h6>EMAIL:</h6>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Enter Email Address" name="email" required>
                                </div>
                                <br>
                                <h6>MOBILE #:</h6>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Enter Mobile #" name="mobile" required>
                                </div>
                                <br>
                                <div class="form-group">
                                    <h6>SCHOOL LAST ATTENDED:</h6>
                                    <input class="form-control" type="text" placeholder="Name of School" name="lastschool" required>
                                    <input class="form-control" type="text" placeholder="Address of School" name="schooladdress" required>
                                    <input class="form-control" type="text" placeholder="Year Graduated" name="yrgrad" required>
                                </div>
                                <br>
                                <div class="form-group">
                                    <h6>SELECT STRAND:</h6>
                                    <select class="form-control" name="strand" id="strand" required>
                                        <option value="" selected disabled>--PLEASE SELECT--</option>
                                        <option value="abm">ABM</option>
                                        <option value="gas">GAS</option>
                                        <option value="humss">HUMSS</option>
                                        <option value="icta">TVL: ICT-Animation</option>
                                        <option value="ictc">TVL: ICT-Contact Center</option>
                                        <option value="ictp">TVL: ICT-Programming</option>
                                    </select>
                                </div>
                                <br>
                                <div class="form-group">
                                    <h6>STUDENT TYPE:</h6>
                                    <select class="form-control" name="stype" id="stype" required>
                                        <option value="" selected disabled>--PLEASE SELECT--</option>
                                        <option value="FULL VOUCHER">FULL VOUCHER</option>
                                        <option value="ESC">ESC</option>
                                        <option value="PAYING">PAYING</option>
                                    </select>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-success btn-lg">Register</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>

</html>