<?php include"connect.php";

$em_username=$_POST['user'];
$em_name=$_POST['name'];
$em_password=$_POST['pass'];
$em_email=$_POST['email'];
$em_mob=$_POST['mob'];
$em_address=$_POST['add'];



  mysqli_query($con,"insert into event_manager(em_username,em_name,em_password,em_email,em_mob,em_address)  values('$em_username','$em_name','$em_password','$em_email','$em_mob','$em_address')")or die(mysqli_error($con));
  
  
	  
	  if(mysqli_affected_rows($con)>0)
	  {
		 header("Location:managerlogin.php?success");
	  }
	  else
	  {
		  header("Location:managersignup.php?error");
	  }
	  
?>