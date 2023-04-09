<?php
session_start();
error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
 header('location:logout.php');
  } else{


?>
<!DOCTYPE html>
<html lang="tr">
	<head>
		<title>Admin  | Ana Sayfa</title>
		
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
								<div class="col-sm-10">
									<h1 class="mainTitle">Danışman | Doç. Dr. Atilla Ergüzen</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>Admin</span>
									</li>
									<li class="active">
										<span>Ana Sayfa</span>
									</li>
								</ol>
							</div>
						</section>
						
							<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-smile-o fa-stack-1x fa-inverse"></i> </span>
											<h2 class="StepTitle">Kullanıcıları Yönet</h2>
											
											<p class="links cl-effect-1">
												<a href="manage-users.php">
												<?php $result = mysqli_query($con,"SELECT * FROM users ");
$num_rows = mysqli_num_rows($result);
{
?>
											Total Users :<?php echo htmlentities($num_rows);  } ?>		
												</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-users fa-stack-1x fa-inverse"></i> </span>
											<h2 class="StepTitle">Doktorları Yönet</h2>
										
											<p class="cl-effect-1">
												<a href="manage-doctors.php">
												<?php $result1 = mysqli_query($con,"SELECT * FROM doctors ");
$num_rows1 = mysqli_num_rows($result1);
{
?>
											Toplam Doktor :<?php echo htmlentities($num_rows1);  } ?>		
												</a>
												
											</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-terminal fa-stack-1x fa-inverse"></i> </span>
											<h2 class="StepTitle"> Randevular</h2>
											
											<p class="links cl-effect-1">
												<a href="book-appointment.php">
													<a href="appointment-history.php">
												<?php $sql= mysqli_query($con,"SELECT * FROM appointment");
$num_rows2 = mysqli_num_rows($sql);
{
?>
											Toplam Randevu :<?php echo htmlentities($num_rows2);  } ?>	
												</a>
												</a>
											</p>
										</div>
									</div>
								</div>

<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-smile-o fa-stack-1x fa-inverse"></i> </span>
											<h2 class="StepTitle">Hastaları Yönet</h2>
											
											<p class="links cl-effect-1">
												<a href="manage-patient.php">
<?php $result = mysqli_query($con,"SELECT * FROM tblpatient ");
$num_rows = mysqli_num_rows($result);
{
?>
Toplam Hasta :<?php echo htmlentities($num_rows);  
} ?>		
</a>
											</p>
										</div>
									</div>
								</div>





			<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> <i class="ti-files fa-1x text-primary"></i> <i class="fa fa-terminal fa-stack-1x fa-inverse"></i> </span>
											<h2 class="StepTitle"> Yeni Sorgular</h2>
											
											<p class="links cl-effect-1">
												<a href="book-appointment.php">
													<a href="unread-queries.php">
												<?php 
$sql= mysqli_query($con,"SELECT * FROM tblcontactus where  IsRead is null");
$num_rows22 = mysqli_num_rows($sql);
?>
											Toplam Yeni Sorgu :<?php echo htmlentities($num_rows22);   ?>	
												</a>
												</a>
											</p>
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
