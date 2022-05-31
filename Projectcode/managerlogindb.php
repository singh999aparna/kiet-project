<?php include"connect.php";

$em_username=$_POST['user'];
$em_password=$_POST['pass'];


 $res=mysqli_query($con,"select * from event_manager where em_username='$em_username' and em_password='$em_password'");
 
      
    
	 if(mysqli_affected_rows($con)==1)
	{
		session_start();
		
		
		
		$_SESSION['my']=$em_username;
		header("Location:manager.php");
	}
	else
	{
		header("Location:managerlogin.php?err=Username and password is Incorrect..");
		
	}
	  
?>