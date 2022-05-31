<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.css" />
<html>
<head>
<script language="javascript">
	function del()
	{
		alert('You have successfully deleted...');
	}
</script>
</head>
<body background="img/ccc.jpg">
<?php
include"adminheader.php";
include"connect.php";
  $res= mysqli_query($con,"select * from venue")or die(mysqli_error());
?>
<br/><br/><br/>
<table class="table table-bordered table-bordered" style="margin-left:8px;min-height:450px;width:99%">
 <tr bgcolor="#FF9966">
   <th><center>Operations</center></th>
   <th><center>Id</center></th>
   <th><center>Name</center></th>
   <th><center>Image</center></th>
   <th><center>Address</center></th>
   <th><center>Description</center></th>
   <th><center>Venue Reference</center></th>
   <th><center>User Venue Reference</center></th>
   <th><center>price</center></th>
 </tr>  
  <?php while($row=mysqli_fetch_array($res)){?>
     <tr style="color:#FFF">
     <td style="width:18%">
     	<a href="addvenue.php" style="color:#FFF;"><button type="button" class="btn btn-success">Add</button></a>
        <a href="deletevenue.php?v_id=<?php echo $row[0];?>" style="color:#FFF;"><button type="button" class="btn btn-danger" onClick="del()">Delete</button></a>
        <a href="updatevenue.php?v_id=<?php echo $row[0];?>" style="color:#FFF;"><button type="button" class="btn btn-primary">Update</button></a></td>
     <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[0];?></td>
     <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[1];?></td>
    <td style="width:10%"><img src='<?php echo $row[2];?>' class="img img-responsive img-circle " width="100" height="100" /></td>
    <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[3];?></td>
    <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[4];?></td>
    <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[5];?></td>
    <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[6];?></td>
    <td style="text-shadow:#000 0px 0px 1px"><?php echo $row[7];?></td>
     </tr>
  <?php }?>
</table>
<?php include"adminfooter.php";?>
</body>
</html>