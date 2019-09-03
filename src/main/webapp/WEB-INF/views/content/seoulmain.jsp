<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	.photoframe{
		height: 670px;
	}
</style>

<div class="container">
	<div>
		<h1 class="mainTitle">
			<img src="/spring/resources/images/emperor.png" style="height:60px; padding-bottom=5px;">
			Hi, welcome to 
			<img src="/spring/resources/images/seoullogo.jpg" style="height:35px; margin-bottom:10px;">
		</h1>
	</div>
	
	

	<!-- 동적 대문 이미지 main -->
	<!-- 이미지 규격 : height:670px, width:1000px -->
<!-- 	
	<div class="photoframe">
		<img src="/spring/resources/images/1.jpg" class="mainphoto" name="mainphoto">
	</div> 
-->


	<!-- -----------------------------------------------------------------------------------------------  -->

	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	  </ol>

 	 <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	   
	    <div class="item active">
	      <img src="/spring/resources/images/1.jpg">
	      <div class="carousel-caption">
	      </div>
	    </div>
	    
	    <div class="item">
	      <img src="/spring/resources/images/2.jpg">
	      <div class="carousel-caption">
	      </div>
	    </div>
	    
	    <div class="item">
	      <img src="/spring/resources/images/3.jpg">
	      <div class="carousel-caption">
	      </div>
	    </div>
	    
	  </div>

	  <!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>



</div>

<!-- -----------------------------------------------------------------------------------------------  -->

<!-- 
<script>
	var index = 1;
	var timer = 0;

	if(timer==0){
		timer = setInterval(change, 3000);
	} else {
		clearInterval(timer);
		timer=0;
	}
	
	function change(){
		if(index>7) index=1;
		
			$(".mainphoto").attr("src", "/spring/resources/images/"+ index +".jpg");
			setTimeout(function() {
				$(".mainphoto").fadeOut(1000);
			},2000);
			index++;								
			$(".mainphoto").fadeIn(1000);
			
	}
	
	change();
</script>
 -->
