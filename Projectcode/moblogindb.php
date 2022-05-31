<?php include"connect.php";

$mobno=$_POST['mob'];
$password=$_POST['pass'];


 $res=mysqli_query($con,"select * from signupinfo where mobno='$mobno' and password='$password'");
	  
	 if(mysqli_affected_rows($con)==1)
	{
		header("Location:headeruser.php");
	}
	else
	{
		header("Location:moblogin.php?err=Mobile No. and password is Incorrect..");
		
	}
	  
?>