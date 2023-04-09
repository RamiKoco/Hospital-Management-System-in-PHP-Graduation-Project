<?php
session_start();
error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
 header('location:logout.php');
  } else{

if(isset($_POST['submit']))
{	
	$docid=$_SESSION['id'];
	$patname=$_POST['patname'];
$patcontact=$_POST['patcontact'];
$patemail=$_POST['patemail'];
$gender=$_POST['gender'];
$pataddress=$_POST['pataddress'];
$patage=$_POST['patage'];
$medhis=$_POST['medhis'];
$sql=mysqli_query($con,"insert into tblpatient(Docid,PatientName,PatientContno,PatientEmail,PatientGender,PatientAdd,PatientAge,PatientMedhis) values('$docid','$patname','$patcontact','$patemail','$gender','$pataddress','$patage','$medhis')");
if($sql)
{
echo "<script>alert('Patient info added Successfully');</script>";
header('location:add-patient.php');

}
}
?>
<!DOCTYPE html>
<html lang="tr">
	<head>
		<title>Doktor | Hasta Ekle</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />

	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#patemail").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
<div class="app-content">
<?php include('include/header.php');?>
						
<div class="main-content" >
<div class="wrap-content container" id="container">
						
<section id="page-title">
<div class="row">
<div class="col-sm-8">
<h1 class="mainTitle">Hasta | Hasta Ekle</h1>
</div>
<ol class="breadcrumb">
<li>
<span>Hasta</span>
</li>
<li class="active">
<span>Hasta Ekle</span>
</li>
</ol>
</div>
</section>
<div class="container-fluid container-fullw bg-white">
<div class="row">
<div class="col-md-12">
<div class="row margin-top-30">
<div class="col-lg-8 col-md-12">
<div class="panel panel-white">
<div class="panel-heading">
<h5 class="panel-title">Hasta Ekle</h5>
</div>
<div class="panel-body">
<form role="form" name="" method="post">

<div class="form-group">
<label for="doctorname">
Ad Soyad
</label>
<input type="text" name="patname" class="form-control"  placeholder="Ad Soyad" required="true">
</div>
<div class="form-group">
<label for="fess">
Telefon
</label>
<input type="text" name="patcontact" class="form-control"  placeholder="Telefon" required="true" maxlength="10" pattern="[0-9]+">
</div>
<div class="form-group">
<label for="fess">
E-Posta
</label>
<input type="email" id="patemail" name="patemail" class="form-control"  placeholder="E-Posta" required="true" onBlur="userAvailability()">
<span id="user-availability-status1" style="font-size:12px;"></span>
</div>
<div class="form-group">
<label class="block">
Cinsiyet
</label>
<div class="clip-radio radio-primary">
<input type="radio" id="rg-female" name="gender" value="Kadın" >
<label for="rg-female">
Kadın
</label>
<input type="radio" id="rg-male" name="gender" value="Erkek">
<label for="rg-male">
Erkek
</label>
</div>
</div>
<div class="form-group">
<label for="address">
Adres
</label>
<textarea name="pataddress" class="form-control"  placeholder="Adres" required="true"></textarea>
</div>
<div class="form-group">
<label for="fess">
Hasta Yaşı
</label>
<input type="text" name="patage" class="form-control"  placeholder="Hasta Yaşı" required="true">
</div>
<div class="form-group">
<label for="fess">
 Medikal Geçmiş
</label>
<textarea type="text" name="medhis" class="form-control"  placeholder="Hastanın Medikal Geçmişi (Varsa)" required="true"></textarea>
</div>	

<button type="submit" name="submit" id="submit" class="btn btn-o btn-primary">
Ekle
</button>
</form>
</div>
</div>
</div>
</div>
</div>
<div class="col-lg-12 col-md-12">
<div class="panel panel-white">
</div>
</div>
</div>
</div>
</div>
</div>				
</div>
</div>
</div>
			
<?php include('include/footer.php');?>
			
		
		
<?php include('include/setting.php');?>
			
			
		</div>
		
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
	
		<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="vendor/autosize/autosize.min.js"></script>
		<script src="vendor/selectFx/classie.js"></script>
		<script src="vendor/selectFx/selectFx.js"></script>
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
	
		<script src="assets/js/main.js"></script>
	
		<script src="assets/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
	
	</body>
</html>
<?php } ?>
