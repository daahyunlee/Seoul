<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- WEB-INF > views > inc > header.jsp -->    
<script>

	$(document).ready(function(){
		
		//0. 메인img click-[HOME 이동]
		$("#seoul").click(function() {
			location.href="/spring/main.seoul";			
		});
		
		
		//1.지도펼치기-[마우스호버]
		$("#openmap").hover(function(){
			$("#openmap").text('Open Map')
		}, function(){
			$("#openmap").text('지도펼치기')
		});	
		
		//1. 지도펼치기-[클릭]
		$("#openmap").click(function(){
			location.href="/spring/openmap.seoul";	
		});
		
		
		
		//2. 먹을거리-[마우스호버]
		$("#food").hover(function(){
			$("#food").text('Food')
		}, function(){
			$("#food").text('먹을거리')
		});
		
		//2. 먹을거리-[클릭]
		$("#food").click(function(){
			location.href="/spring/eatingplace.seoul"
		});
		
		
		
		//3. 볼거리-[마우스호버]
		$("#see").hover(function(){
			$("#see").text('See')
		}, function(){
			$("#see").text('볼거리')
		});
		
		//3. 볼거리-[클릭]
		$("#see").click(function() {
			location.href="/spring/see.seoul"
		});
		
		
		
		//4. 즐길거리-[마우스오버]
		$("#enjoy").hover(function(){
			$("#enjoy").text('enjoy')
		}, function(){
			$("#enjoy").text('즐길거리')
		});

		//4. 즐길거리-[클릭]
		$("#enjoy").click(function(){
			location.href="/spring/enjoy.seoul"
		});
		
		
		
		//5. 추천코스-[마우스호버]
		$("#course").hover(function(){
			$("#course").text('Course')
		}, function(){
			$("#course").text('추천코스')
		});
		
		//5. 추천코스-[클릭]
		$("#course").click(function() {
			location.href="/spring/course.seoul"
		});
		
		
		
	})//ready

</script>
<style>
/*
* core styles
*/

.sm-link{
    --uismLinkDisplay: var(--smLinkDisplay, inline-flex);   
    --uismLinkTextColor: var(--smLinkTextColor);
    --uismLinkTextColorHover: var(--smLinkTextColorHover);  
    
    display: var(--uismLinkDisplay);
    color: var(--uismLinkTextColor);
    position: relative;
    overflow: hidden;
}

a.sm-link{
    text-decoration: none;
}

.sm-link__label{
  display: block;
}

/* sm-link_padding-all */ 

.sm-link_padding-all{
    --uismLinkLineWeight: var(--smLinkLineWeight, 2px);
    --uismLinkLineColor: var(--smLinkLineColor, #000);
    --uismLinkPadding: var(--smLinkPadding, 5px);
    
    padding: var(--uismLinkPadding);
}

.sm-link_padding-all::before, 
.sm-link_padding-all::after{
  width: 100%;
  height: var(--uismLinkLineWeight);
  left: 0;
}

.sm-link_padding-all::before{
  top: 0;
}

.sm-link_padding-all::after{
  bottom: 0;
}

.sm-link_padding-all .sm-link__label::before,
.sm-link_padding-all .sm-link__label::after{
  width: var(--uismLinkLineWeight);
  height: 100%;
  top: 0;
}

.sm-link_padding-all .sm-link__label::before{
  left: 0;
}

.sm-link_padding-all .sm-link__label::after{
  right: 0;
}

.sm-link_padding-all::before,
.sm-link_padding-all::after,
.sm-link_padding-all .sm-link__label::before,
.sm-link_padding-all .sm-link__label::after{
  content: "";     
    background-color: var(--uismLinkLineColor);
  position: absolute; 
    opacity: 0;
    
    will-change: transform, opacity;
    transition-property: transform, opacity;
}

.sm-link_padding-all:hover::before,
.sm-link_padding-all:hover::after,
.sm-link_padding-all:hover .sm-link__label::before,
.sm-link_padding-all:hover .sm-link__label::after{
    opacity: 1;
}

/* sm-link_padding-bottom */ 

.sm-link_padding-bottom{
    --uismLinkLineWeight: var(--smLinkLineWeight, 2px);
    --uismLinkLineColor: var(--smLinkLineColor, #000);  
    
    padding-bottom: var(--uismLinkLineWeight);  
    position: relative;
}

.sm-link_padding-bottom::after{
  content: "";
  width: 100%;
  height: var(--uismLinkLineWeight);
    background-color: var(--uismLinkLineColor);
    
  position: absolute;
  left: 0;
  bottom: 0;
}



/* sm-link_text */ 

.sm-link_text::before{
  content: attr(data-sm-link-text);
    color: var(--uismLinkTextColorHover);
  position: absolute;
}

.sm-link_text::before, 
.sm-link_text .sm-link__label{
  transition-property: transform;
    transition-timing-function: cubic-bezier(.86, .6, .08, 1.01); 
    transition-duration: .3s;
}

.sm-link_text:hover::before,
.sm-link_text:hover .sm-link__label{
    transition-duration: .4s;
}

/* effect 3 */

.sm-link3::after{
  transform: translate3d(-100%, 0, 0);
  transition: transform .2s ease-in;
}

.sm-link3:hover::after{
  transform: translate3d(0, 0, 0);
}

.sm-link, .sm-link__label {
	display: inline-block;
	width: 100%;
}

</style>
<div id="header">
	<nav>
	  	<div class="container" style="border-bottom:1px solid #eee">			
		   		<div id="seoul" style="cursor:pointer; padding-left:5px;margin-top:10px; margin-bottom:20px; float:left;">
		   			<img src="/spring/resources/images/seoullogo.jpg" style="width:200px;">
		   		</div>
		   		<div style="margin-left:253px; padding-top:20px;">
		   			<!-- 메뉴 상단 바 -->
		   			<!-- ①지도펼치기 ②맛집소개 ③볼거리 ④즐길거리 ⑤추천코스  -->
			   		<div class="section navbar-width">
					    <div class="section__item navbar-width">
					        <a href="#0" class="sm-link sm-link_padding-bottom sm-link3">
					            <span class="sm-link__label" id="openmap">지도펼치기</span>
					        </a>
					    </div>
					</div>
			   		<div class="section navbar-width">
					    <div class="section__item navbar-width">
					        <a href="#0" class="sm-link sm-link_padding-bottom sm-link3">
					            <span class="sm-link__label" id="food">먹을거리</span>
					        </a>
					    </div>
					</div>
			   		<div class="section navbar-width">
					    <div class="section__item navbar-width">
					        <a href="#0" class="sm-link sm-link_padding-bottom sm-link3">
					            <span class="sm-link__label" id="see">볼거리</span>
					        </a>
					    </div>
					</div>
			   		<div class="section navbar-width">
					    <div class="section__item navbar-width">
					        <a href="#0" class="sm-link sm-link_padding-bottom sm-link3">
					            <span class="sm-link__label" id="enjoy">즐길거리</span>
					        </a>
					    </div>
					</div>
			   		<div class="section navbar-width">
					    <div class="section__item navbar-width">
					        <a href="#0" class="sm-link sm-link_padding-bottom sm-link3">
					            <span class="sm-link__label" id="course">추천코스</span>
					        </a>
					    </div>
					</div>
		   		</div>
	   		</div>
	</nav>	
</div>