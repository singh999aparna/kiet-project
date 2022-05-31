<?php include"managerheader.php";
include"connect.php";
	$res=mysqli_query($con,"select * from booking ");
?>

<html>
<head>
</head>
<body background="img/ccc.jpg">
<br/><br/><br/>
<table class="table table-bordered table-bordered " style="margin-left:8px;width:99%">
 <tr bgcolor="#FF9966">
   
   <th><center>Id</center></th>
   <th><center>Name</center></th>
   <th><center>Email-id</center></th>
   <th><center>Mobile No.</center></th>
   <th><center>Number of Guest</center></th>
   <th><center>Event Date</center></th>
   <th><center>Event</center></th>
   <th><center>Status</center></th>
 </tr>  
  <?php while($row=mysqli_fetch_array($res)){?>
  <tr style="color:#FFF">
     <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[0];?></td>
     <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[1];?></td>
     <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[2];?></td>
    <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[3];?></td>
    <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[4];?></td>
    <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[5];?></td>
    <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[6];?></td>
    <td style="text-shadow:#000 0px 0px 1px"><a href="#" style="text-decoration:none; color:#FFF"><input type="checkbox">Approval Pending</input></a></td>
     </tr>
  <?php }?>
</table>

</body>
</html>