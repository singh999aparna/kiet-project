<?php include"connect.php";

$v_name=$_POST['name'];

$tmpname=$_FILES['image']['tmp_name'];
$filename=$_FILES['image']['name'];
$filetype=$_FILES['image']['type'];
$filesize=$_FILES['image']['size'];

move_uploaded_file($tmpname,"images/".$filename);
  
$v_image="images/".$filename;
  
$v_address=$_POST['add'];
$v_descri=$_POST['des'];
$v_ref=$_POST['ref'];
$v_uref=$_POST['uref'];
$v_price=$_POST['pri'];
  mysqli_query($con,"insert into venue(v_name,v_image,v_address,v_descri,v_ref,v_uref,v_price) values('$v_name','$v_image','$v_address','$v_descri','$v_ref','$v_uref','$v_price')")or die(mysqli_error($con));
	  
	  if(mysqli_affected_rows($con)>0)
	  {
		 header("Location:venueabc.php?success");
	  }
	  else
	  {
		  header("Location:addvenue.php?error");
	  }
	  
?>