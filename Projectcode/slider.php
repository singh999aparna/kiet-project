<?php include"Home.php" ?>


<style>
.container
{
	width:100%;
}
</style>
</head>

<body>
	<div id="slider" class="carousel slide">
    	<br/><br/>
    	<ol class="carousel-indicators">
      		<li class="active" data-target="#slider" data-slide-to="0"></li>
      		<li data-target="#slider" data-slide-to="1"></li>
      		<li data-target="#slider" data-slide-to="2"></li>
	  		<li data-target="#slider" data-slide-to="3"></li> 
      		<li data-target="#slider" data-slide-to="4"></li> 
      		<li data-target="#slider" data-slide-to="5"></li>
		</ol>  
    	<div class="carousel-inner">
        	<div class="item active">
            	<img src="img/1789.jpg" style="width:100%; height:425px"/>        
            </div>
            <div class="item">
            	<img src="img/engage.jpg" style="width:100%; height:425px"/>
            </div>
            <div class="item">
            	<img src="img/443976.jpg" style="width:100%; height:425px"/>
            </div>
            <div class="item">
            	<img src="img/Musical-night-stage-show.jpg" style="width:100%; height:425px"/>
            </div>
            <div class="item">
            	<img src="img/slide4.jpg" style="width:100%; height:425px"/>
            </div>
             <div class="item">
            	<img src="img/tumblr_static_party-music-hd-wallpaper-1920x1200-38501-1030x643.jpg" style="width:100%; height:425px"/>
            </div>
        </div>
        <a class="carousel-control left" href="#slider" data-slide="prev" >
            <span class="icon-prev"></span>
        </a>
   		<a class="carousel-control right" href="#slider" data-slide="next" >
            <span class="icon-next"></span>
   		</a>
	</div>
	<?php include"footer.php";?>	    
	<script>
		$("#slider").carousel({interval:3000});
		
	</script>
</body>
</html>
