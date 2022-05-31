
<?php
  include("connect.php");
  include"adminheader.php";
 
  

  $res= mysqli_query($con,"select * from price")or die(mysqli_error($con));

   

?>
<body background="img/ccc.jpg">
<br/><br/><br/>
<div class="container" style="min-height:472px">
<table class="table table-bordered table-bordered" style="margin-left:8px;width:99%">
 <tr bgcolor="#FF9966">
   <th><center>Card Type</center></th>
   <th><center>Card Holder Name</center></th>
   <th><center>Card Number</center></th>
   <th><center>Card CVV</center></th>
   <th><center>Card Expiry Date</center></th>
   <th><center>Total Customer Amount</center></th>
 </tr>
  
  <?php while($row=mysqli_fetch_array($res)){?>
  
     <tr style="color:#FFF">
     
   	 <td><?php echo $row[0];?></td>    
     <td><?php echo $row[1];?></td>
     <td><?php echo $row[2];?></td>
     <td><?php echo $row[3];?></td>
     <td><?php echo $row[4];?></td>
     <td><?php echo $row[5];?></td>
	
     </tr>
  
  
  
  <?php }?>
</table>

</div>
<?php include"adminfooter.php"; ?>
</body>