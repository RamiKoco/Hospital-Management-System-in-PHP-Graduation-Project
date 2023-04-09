<?php
session_start();
include('include/config.php');
$_SESSION['dlogin']=="";
date_default_timezone_set('Asia/Turkey');
$ldate=date( 'd-m-Y h:i:s A', time () );
$did=$_SESSION['id'];
mysqli_query($con,"UPDATE doctorslog  SET logout = '$ldate' WHERE uid = '$did' ORDER BY id DESC LIMIT 1");
session_unset();

$_SESSION['errmsg']="Oturumu başarıyla kapattınız";
?>
<script language="javascript">
document.location="../../index.php";
</script>
