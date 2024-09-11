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
    <script>
        $(function() {
            $('.dates #bday').datepicker({
                'format': 'mm-dd-yyyy',
                'autoclose': true
            });
        });
    </script>
</head>
<?php
session_start();
function generate_token()
{
    if (!isset($_SESSION["csrf_token"])) {
        $token = bin2hex(random_bytes(32));
        $_SESSION['csrf_token'] = $token;
    } else {
        $token = $_SESSION['csrf_token'];
    }
    return $token;
}
?>

<body>
    <form action="collprocess_sp.php" method="post">
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
                        <h3 class="register-heading">COLLEGE REGISTRATION</h3>
                        <div class="row register-form">
                            <div class="col-md-6">
                                <h6 for="Name">NAME:</h6>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="First Name" name="fname" required />
                                    <input type="text" class="form-control" placeholder="Middle Name" name="mname" />
                                    <input type="text" class="form-control" placeholder="Last Name" name="lname" required />
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
                                        <input type="text" autocomplete="off" id="bday" class="form-control" name="bdate" placeholder="Birthday" required>
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
                                    <h6>SELECT COURSE:</h6>
                                    <select class="form-control" name="course" id="course" required>
                                        <option value="" selected disabled>--PLEASE SELECT--</option>
                                        <option value="BSIS">BS Information Systems</option>
                                        <option value="BSENTREP">BS Entrepreneurship</option>
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