<?php include"Home.php";?>

<br /><br /><br />
<h4><a href="slider.php" style="color:#00C; text-shadow:#666 0px 1px 0px;"> Home </a> <img src="img/back-ar.gif"/><span style="color:#F00; text-shadow:#666 0px 1px 0px;"> Log In</span></h4>

<div class="container-fluid"  style="width:40%; min-height:400px;">
	
     	
        <h1 style="color:#006; font-family:'MS Serif', 'New York', serif; font-size:36px; text-shadow:#000 2px 1px 1px"><center><u>Event Manager Log In</u></center></h1>
        <br/>
        
	    
    	    	<form action="managerlogindb.php" method="post" enctype="multipart/form-data">
                	<div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
		                <label>User Name:</label>
        		        <input type="text" name="user" required class="form-control"
                		 placeholder="Enter Event-Manager User Name" />
                	</div>
                	<br/>
          		  	
                	<div class="form-horizontal"><span class="glyphicon glyphicon-credit-card"></span>
                    <label>Password:</label>
                    <input type="password" name="pass" required class="form-control" placeholder="Enter Password"/>
                 </div>
                <br/>
                <div class="form-horizontal">
                    <input type="checkbox" name="keep"  required="required"/>
                    <label>keep me logged in	</label>
				</div>
                <br/>
                  	                   
					<?php if(isset($_GET['err'])){?>
                    <div class="form-horizontal">
                      <div class="navbar alert-danger">
                          <?php echo $_GET['err'];
						  
						  ?>
                      </div>
                    </div>
                    <?php }?>
                <button type="submit" class="form-control btn btn-xs btn-success"><span class="glyphicon glyphicon-user"></span> Log in</button>
                <br/>
                <h5 style="color:#000"><center>--------------Or--------------</center></h5>
                
                <a href="managersignup.php"><center>Create account</center></a>
                </form>
                </div>
      <?php include"footer.php"; ?>
</body>
</html>					
