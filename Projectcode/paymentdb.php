<?php include"connect.php";

$p_card=$_POST['type'];
$p_name=$_POST['name'];
$p_number=$_POST['card'];
$p_cvv=$_POST['cvv'];
$p_date=$_POST['edate'];
$p_amout=$_POST['amount'];


  mysqli_query($con,"insert into price values('$p_card','$p_name','$p_number','$p_cvv','$p_date','$p_amout')")or die(mysqli_error($con));
	  
	  if(mysqli_affected_rows($con)>0)
	  {
		 header("Location:homeuser.php?success");
	  }
	  else
	  {
		  header("Location:card.php?error");
	  }
	  
?>