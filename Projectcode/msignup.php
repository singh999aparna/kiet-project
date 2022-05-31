<?php include"mheader.php"; ?>
<br/><br/><br/><br/>
<div class="container container-fluid" >
	<div class="panel panel-default panel-info">
     	<div class="panel-heading text-center text-nowrap" style="color:#000;background-color:#060;text-shadow:#CCC 2px 2px 2px;font-family:'MS Serif', 'New York', serif">
        <h1>Enter User Information</h1>
        </div>
        <div class="panel-body" >
	        <div class="form-control-static container-fluid">
    	    	<form action="Signupdb.php" method="post" enctype="multipart/form-data">
                	<div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
		                <label>User Name:</label>
        		        <input type="text" name="user" required class="form-control"
                		 placeholder="Enter User Name" />
                	</div>
                	<br/>
					<div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
		                <label>Name:</label>
        		        <input type="text" name="name" required class="form-control"
                		 placeholder="Enter Full Name" />
                	</div>
                	<br/>

                    <div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
		                <label>E-mail:</label>
        		        <input type="email" name="email" required class="form-control"
                		 placeholder="Enter e-mail id" />
                	</div>
                	<br/>
                    <div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
                    <label>Password:</label>
                    <input type="password" name="pass" required class="form-control" placeholder="Enter Password"/>
                 </div>
                <br/>
					<div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
                    <label>Confirm Password:</label>
                    <input type="cpassword" name="cpass" required class="form-control" placeholder="Enter Re - Password"/>
                 </div>
                <br/>

  				<div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
                	<label> Select City: </label>   
					<select name="city" class="control" >
						<option>SELECT CITY</option>
								<option>Meerut</option>
								<option>Delhi</option>
								<option>Mumbai</option>
								<option>Noida</option>
								<option>Goa</option>
              
					</select>
                 </div>
                 <br/>
                 <div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
		                <label>Mob. No.:</label>
        		        <input type="number" name="mob" required class="form-control"
                		 placeholder="Enter Mobile No." />
                	</div>
                    <br/>
                   
					<?php if(isset($_GET['err'])){?>
                    <div class="form-horizontal">
                      <div class="navbar alert-danger">
                          <?php echo $_GET['err'];?>
                      </div>
                    </div>
                    <?php }?>
                <button type="submit" class="form-control btn btn-xs btn-success"><span class="glyphicon glyphicon-user"></span> Sign Up</button>
                </form>
</body>
</html>