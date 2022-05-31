<?php 
include"connect.php"; 
include"headeruser2.php";
if(isset($_GET['b_id']))
  {        $id=$_GET['b_id'];	 
  			$res= mysqli_query($con,"select * from booking where b_email=$id")or die(mysqli_error($con));
			if($row=mysqli_fetch_array($res))
	  		{
				$b_id=$row[0];
				$b_cname=$row[1];
				$b_email=$row[2];
				$b_mobno=$row[3];
				$b_guest=$row[4];
				$b_date=$row[5];
				$b_event=$row[6];
	  		}
?>
<html>
<head>
<script>
	function msg()
		{
			alert('You have successfully booked an event now procued the payment if your event reject (1%) so, your full payment returned..');
		}
</script>
</head>
<body background="img/ccc.jpg">
	<div class="container container-fluid"><br/><br/><br />
			<h4 style="color:#FFF">
            	<a href="book2.php" style="color:#FFF; text-decoration:none">back </a> <img src="img/back-ar.gif"/>
            </h4>
		</div>
        <h3 style="color:#CF3; text-shadow:#F00 1px 5px 4px"><center><u>Your Package</u></center></h3>
        <div class="container-fluid" style="color:#FFF">
                	<h4 style="margin-left:2%">
                    <label>Your Booking Id:</label> <span style="color:#F00; font-size:29px; text-shadow:#FFF 1px 0px 1px"><?php echo $b_id?></span>
                    <label style="margin-left:12%">Customer Name:</label> <span style="color:#F00; font-size:29px; text-shadow:#FFF 1px 0px 1px"><?php echo $b_cname?></span>
                    <label style="margin-left:14%">Email-id: </label> <span style="color:#F00; font-size:29px; text-shadow:#FFF 1px 0px 1px"><?php echo $b_email?></span></h4>
                    <h4 style="margin-left:0%">
                    <label style="margin-left:15%">Your Event: </label> <span style="color:#F00; font-size:29px; text-shadow:#FFF 1px 0px 1px"><?php echo $b_event?></span>
                    <label style="margin-left:15%">Your Event Date: </label> <span style="color:#F00; font-size:29px; text-shadow:#FFF 1px 0px 1px"><?php echo $b_date?></span>
                    </h4>
                	<h4 style="margin-left:2%">
                    <label style="margin-left:15%">Your Number of Guest: </label> <span style="color:#F00; font-size:29px; text-shadow:#FFF 1px 0px 1px"><?php echo $b_guest?></span>
                    <label style="margin-left:15%">Your Mobile Number: </label> <span style="color:#F00; font-size:29px; text-shadow:#FFF 1px 0px 1px"><?php echo $b_mobno?></span>
                    </h4>
                    </h4>
        </div>
		<br/>
<?php } ?>
<?php 
$username=$_SESSION['my'];
			$resu=mysqli_query($con,"select * from addtocart where username='$username'")or die(mysqli_error($con));
			?>
            <div class="row">
            <div class="col-sm-4" style="margin-left:0%">
            <table class="table table-bordered table-bordered table-hover" style="margin-left:8px">
 <tr bgcolor="#FF9966">
   <th colspan="2" style="color:#000"><center>Your Selected Food Menu, Decoration Designs & Venue</center></th>
   
 </tr>  
  <?php while($row=mysqli_fetch_array($resu)){?>
     <tr style="color:#FF0; background:#000">
     <td style="text-shadow:#F00 0px 0px 1px; width:20%"><?php echo $row[1];?></td>
     <td style="text-shadow:#F00 0px 0px 1px; width:20%"><?php echo $row[2];?></td>
     </tr>
     <?php $sum=225+240+120+50+4500+250000;?>
  <?php }?>
</table>
                </div><!--Column 1 close-->    
    			<div class="col-sm-3" style="margin-top:4%">
          			<div class="panel panel-default panel1">
             			<div class="panel-heading" style="background-color:#000; box-shadow:#000 2px 3px 3px; height:60px">
                			<h3 style="color:#F96;text-shadow:#F93 1px 1px 1px">
                            <center>Your Total Payment</center></h3>
			             </div>
			             <div class="panel-body" style="text-shadow:none;background-color: #000;box-shadow:#000 2px 3px 3px; height:100px">
                         <h2 style="color:#FF0; text-shadow:#F00 2px 2px 2px"><center>Rs. <?php echo $sum;?>/-</center></h2>
             			</div>     
          			</div>
      			</div><!--Column 1 close-->
                <div class="col-sm-3" style="margin-top:4%; margin-left:5%">
          			<div class="panel panel-default panel1">
             			
			             <div class="panel-body" style="text-shadow:none;background-color: #000;box-shadow:#000 2px 3px 3px; height:100px">
                         <h5 style="color:#FF0; text-shadow:#F00 2px 2px 2px"><input type="checkbox">I agree to your all terms and conditions. </input></h5>
                         <a href="payment.php?b_id=<?php echo $b_id; ?>&&sum=<?php echo $sum; ?>"><button type="submit" name="pri" onclick="msg()" class="form-control btn btn-xs btn-success" style="width:85%;"><span class="glyphicon glyphicon-forward"></span> Proceed To Payment</button></a>
             			</div>     
          			</div>
      			</div><!--Column 1 close-->
			</div><!--Row close-->
            <?php include"userfooter.php";?>
</body>
</html>