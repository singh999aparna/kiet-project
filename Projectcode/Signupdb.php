<?php include"connect.php";

$username=$_POST['user'];
$firstname=$_POST['first'];
$lastname=$_POST['last'];
$email=$_POST['email'];
$pass=$_POST['pass'];
$cpass=$_POST['cpass'];
$dob=$_POST['dob'];
$city=$_POST['city'];
$mobno=$_POST['mob'];


  mysqli_query($con,"insert into signupinfo(username,firstname,lastname,email,password,cpassword,dob,city,mobno)  values('$username','$firstname','$lastname','$email','$pass','$cpass','$dob','$city','$mobno')")or die(mysqli_error($con));
  
  
	  
	  if(mysqli_affected_rows($con)>0)
	  {
		 header("Location:Signup.php?success");
	  }
	  else
	  {
		  header("Location:Signup.php?error");
	  }
	  
?>