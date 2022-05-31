<?php include"Home.php"; ?>
<html>
<head>
<script language="javascript">
	function sign()
	{
		alert('You have successfully registered...');
	}
</script>
</head>

<body>
<br /><br /><br />
<h4><a href="slider.php" style="color:#00C; text-shadow:#666 0px 1px 0px;"> Home </a> <img src="img/back-ar.gif"/><span style="color:#F00; text-shadow:#666 0px 1px 0px;"> Sign Up Form</span></h4>
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
                		 placeholder="Enter User Name"/>
                	</div>
                	<br/>
          		  	<div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
		                <label>First Name:</label>
        		        <input type="text" name="first" required class="form-control"
                		 placeholder="Enter First Name" />
                	</div>
                	<br/>
                    <div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
		                <label>Last Name:</label>
        		        <input type="text" name="last" required class="form-control"
                		 placeholder="Enter Last Name" />
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
            	        <input type="password" name="cpass" required class="form-control" placeholder="Enter Confirm Password"/>
                 </div>
                 <br/>
                 <div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
                 	<label>DOB:</label>
                 	<input type="date" name="dob" required class="form-control"/>
                 </div>
                 <br/>
				<div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
                	<label> Select Gender: </label>
                    <input type="radio" name="gender"  id="male" value="Male"/>
                    <label>Male</label>
					<input type="radio" name="gender" id="female" value="Female"/>
                    <label>Female</label>
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
                		 placeholder="Enter Mobile No."/>
                	</div>
                    <br/>
                   
					<?php if(isset($_GET['err'])){?>
                    <div class="form-horizontal">
                      <div class="navbar alert-danger">
                          <?php echo $_GET['err'];?>
                      </div>
                    </div>
                    <?php }?>
                <button type="submit" class="form-control btn btn-xs btn-success" onclick="sign()"><span class="glyphicon glyphicon-user"></span> Sign Up</button>
                </form>
                </div>
                </div>
                </div>
                </div>
<?php include"footer.php"; ?>
</body>
</html>