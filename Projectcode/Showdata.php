
<?php
  include("connect.php");
  include"Home.php";
 
  

  $res= mysqli_query($con,"select * from signupinfo")or die(mysqli_error($con));

   

?>

<br/><br/><table class="table table-bordered table-bordered table-hover">
 <tr>
 
   <th>Id</th><th>Username</th><th>Firstname</th><th>Lastname</th><th>E-mail</th><th>Password</th><th>Confirm Password</th><th>DOB</th><th>City</th><th>Mobile No.</th>
 </tr>
  
  <?php while($row=mysqli_fetch_array($res)){?>
  
     <tr>
     
   	 <td><?php echo $row[0];?></td>    
     <td><?php echo $row[1];?></td>
     <td><?php echo $row[2];?></td>
     <td><?php echo $row[3];?></td>
     <td><?php echo $row[4];?></td>
     <td><?php echo $row[5];?></td>
     <td><?php echo $row[6];?></td>
     <td><?php echo $row[7];?></td>
     <td><?php echo $row[8];?></td>
     <td><?php echo $row[9];?></td>
	
     </tr>
  
  
  
  <?php }?>
</table>
