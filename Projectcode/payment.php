
<html>
<head>
<script language="javascript">
	function pay()
	{
		alert('You have successfully paid and booked an event...');
	}
</script>
</head>
<body>
<?php
  include("connect.php");
  include("headeruser2.php");
  if(isset($_GET['b_id']))
  {        $b_id=$_GET['b_id'];
  			$total=$_GET['sum'];	 
  $res= mysqli_query($con,"select * from booking where b_id=$b_id")or die(mysqli_error($con));
   ?>
   <body background="img/ccc.jpg">
<div class="container" style="min-height:470px">
<br/><br/><br/><br/>
			<h4 style="color:#FFF">
            	<a href="package.php" style="color:#FFF; text-decoration:none">back </a> <img src="img/back-ar.gif"/>
            </h4>

<h2 style="color:#FF0; text-shadow:#F00 2px 5px 3px "><center><u>Payment Section</u></center></h2><br />
<table class="table table-bordered table-bordered" style="margin-left:2px">
 <tr style="color:#F96; text-shadow:#090 2px 2px 2px;background:#000">
   <th>Booking Id</th><th>Name</th><th>Event Name</th><th>Event Date</th><th>Total Cost</th>
 </tr>
  <?php while($row=mysqli_fetch_array($res)){?>
     <tr style="color:#FFF">

   	 <td><b><?php echo $row[0];?></b></td>    
     <td><b><?php echo $row[1];?></b></td>
     <td><b><?php echo $row[6];?><b></td>
     <td><b><?php echo $row[5];?><b></td>
     <td><b><?php echo $total; ?></b></td>
     </tr>
  <?php }?>
  <?php } ?>
</table>
<br/>
<div class="form-horizontal" style="color:#FFF; ">
		                <center><label><u>Payment Modes:</u></label></center>
                        <br/>
                    
					
                    <div class="form-horizontal">
                    <label style="color:#FFF;margin-left:20%">Select Card type:</label>
                    <select name="type" class="control" style="color:#000">
						<option>Select Card</option>
								<option>Credit Catd</option>
								<option>Debit Card</option>
								<option>Net Banking</option>
                   </select>  &nbsp;(* All cards accepted here.)
                   </div>
                    <a href="card.php?total=<?php echo $total;?>"><button type="button" name="pay" class="form-control btn btn-xs btn-success" style="width:25%; margin-left:63%"><span class="glyphicon glyphicon-forward"></span> Next</button></a>
                    
                    </div>
                	<br/><br /><br /><br />

<?php include"userfooter.php"; ?>
</body>
</html>