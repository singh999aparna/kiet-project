<?php include"connect.php";?>
<?php session_start(); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Event Planner</title>
<link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet"/>
<style>
.btn btn-success navbar-right
{
	text-shadow:#000 5px 5px 5px;	
}
.container
{
	width:100%;
}
</style>

</head>

<body>


<div class="navbar navbar-default navbar-inverse navbar-fixed-top" style="margin-bottom:50px;background:#000; ">
 <div class="container">
  <div class="navbar-header">
	  <h1 style="color:#F96; text-shadow:#060 3px 2px 1px; font-family:'MS Serif', 'New York', serif">Welcome:  <?php echo $_SESSION['my'];?> </h1>
  </div><br/>
	<div class="nav navbar-nav nav-pills navbar-right">
    <button type="submit" class="btn btn-success navbar-right" style="margin-right:10px; padding:10px; background:#000;box-shadow:#CCC 6px -3px 5px; color:#F96;text-shadow:#F96 1px 1px 2px; border:#000; margin-top:10px; ">
        <span class="glyphicon glyphicon-log-in"></span><a href="logout.php" style="color:#F96; text-decoration:none;"> Log out</a></button>
        <button type="submit" class="btn btn-success navbar-right" style="margin-right:10px; padding:10px; background:#000;box-shadow:#CCC 6px -3px 5px; color:#F96;text-shadow:#F96 1px 1px 2px; border:#000; margin-top:10px; ">
        <span class="glyphicon glyphicon-book"></span><a href="booking.php" style="color:#F96; text-decoration:none;"> Booking</a></button>
		<button type="submit" class="btn btn-success navbar-right" style="margin-right:10px; padding:10px; background:#000;box-shadow:#CCC 6px -3px 5px; color:#F96;text-shadow:#F96 1px 1px 2px; border:#000; margin-top:10px; ">
        <span class="glyphicon glyphicon-dashboard"></span><a href="ucatering.php" style="color:#F96; text-decoration:none;"> Catering</a></button>
	<button type="submit" class="btn btn-success navbar-right" style="margin-right:10px; padding:10px; background:#000;box-shadow:#CCC 6px -3px 5px; color:#F96;text-shadow:#F96 1px 1px 2px; border:#000; margin-top:10px; ">
        <span class="glyphicon glyphicon-gift"></span><a href="ucont.php" style="color:#F96; text-decoration:none;"> Events</a></button>
        <button type="submit" class="btn btn-success navbar-right" style="margin-right:10px; padding:10px; background:#000;box-shadow:#CCC 6px -3px 5px; color:#F96;text-shadow:#F96 1px 1px 2px; border:#000; margin-top:10px; ">
        <span class="glyphicon glyphicon-home"></span><a href="Homeuser.php" style="color:#F96; text-decoration:none;"> Home</a></button>
    </div>
    </div>
     <h6 align="right" style="color:#F96; text-shadow:#F96 1px 1px 1px"><span class="glyphicon glyphicon-time"></span> Last logged in: <?php $res= mysqli_query($con,"select * from signupinfo where username='$_SESSION[my]'")or die(mysqli_error());
	while($row=mysqli_fetch_array($res)) {?>
    <?php $strs = $row[10];
   $input = preg_replace("/[^0-9a-z]+/", "", $strs);
    echo $strs;
    echo( "sprx");
	echo $input;
	?>
    
    <?php }?>
    </h6>

     </div><br/><br/>
 
 
    

 
<script src="bootstrap-3.3.6-dist/js/jquery.min.js"></script>
<script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
</body>
</html>