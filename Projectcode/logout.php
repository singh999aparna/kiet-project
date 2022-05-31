<?php
  
  session_start();
  include"connect.php";  
  
  	mysqli_query($con,"update signupinfo set time=sysdate() where username='$_SESSION[my]'")or die(mysqli_error($con));
  
  session_destroy();
  header("Location:logoutpage.php");


?>