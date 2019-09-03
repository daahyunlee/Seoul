<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
      .area {
          position: absolute;
          background: #fff;
          border: 1px solid #888;
          border-radius: 3px;
          font-size: 12px;
          top: -5px;
          left: 15px;
          padding:2px;
      }
      
      .info {
          font-size: 12px;
          padding: 5px;
      }
      .info .title {
          font-weight: bold;
      }
 </style>

<div class="container">

<div>
   <h1 class="mainTitle" style="border:1px solid black;">Select Your Seoul</h1>
</div>

    <div id="map" style="width:100%;height:600px;"></div>
 </div>
 
    <script type="text/javascript">
       Proj4js.reportError = function(msg) { alert(msg); }
       Proj4js.defs['WGS84경위도'] = '+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs';
       Proj4js.defs['BESSEL경위도'] = 
           '+proj=longlat +ellps=bessel +towgs84=-146.43,507.89,681.46 +no_defs'; 
        
       var wgs84 = new Proj4js.Proj('WGS84경위도');
       var bessel = new Proj4js.Proj('BESSEL경위도');
       
       var polygons = [];

       var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
           mapOption = { 
               center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
               level: 9// 지도의 확대 레벨
           };
   
       var map = new kakao.maps.Map(mapContainer, mapOption),
           customOverlay = new kakao.maps.CustomOverlay({}),
           infowindow = new kakao.maps.InfoWindow({removable: true});
       
        
      $(function() {
         var jsonlocation = "${pageContext.request.contextPath}/resources/json/seoul.geojson";
    
         $.getJSON(jsonlocation, function(data) {
            
            var data      = data.features,
             coordinates   = [],
             name      = "";
            
            console.log(data);
           
              $.each(data, function(index, val) {
                 
                 coordinates = val.geometry.coordinates;
                 name      = val.properties.SIG_KOR_NM;
                 
                 displayArea(coordinates,name);
              })
         })
          
          
       })
      
      
        function displayArea(coordinates, name) {
           var path   = [],
              points   = [];
           
           $.each(coordinates[0],function(index,coordinate) {
              
              var p = new Proj4js.Point(coordinate[0], coordinate[1]);
              
              Proj4js.transform(wgs84, bessel, p);
              
              path.push(new kakao.maps.LatLng(p.y, p.x));
              
           });
           
           // 다각형을 생성합니다 
            var polygon = new kakao.maps.Polygon({
                map: map, // 다각형을 표시할 지도 객체
                path: path,
                strokeWeight: 2,
                strokeColor: '#004c80',
                strokeOpacity: 0.8,
                fillColor: '#fff',
                fillOpacity: 0.5 
            });
           
           polygons.push(polygon);
           
           
           
           // 다각형에 mouseover 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 변경합니다 
           // 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
            kakao.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
                polygon.setOptions({fillColor: '#09f'});

                customOverlay.setContent('<div class="area">' + name + '</div>');
                
                customOverlay.setPosition(mouseEvent.latLng); 
                customOverlay.setMap(map);
            });

           
           
           
            // 다각형에 mousemove 이벤트를 등록하고 이벤트가 발생하면 커스텀 오버레이의 위치를 변경합니다 
            kakao.maps.event.addListener(polygon, 'mousemove', function(mouseEvent) {
                
                customOverlay.setPosition(mouseEvent.latLng); 
            });

            
            
            
            // 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경합니다
            // 커스텀 오버레이를 지도에서 제거합니다 
            kakao.maps.event.addListener(polygon, 'mouseout', function() {
                polygon.setOptions({fillColor: '#fff'});
                customOverlay.setMap(null);
            }); 

            
            
            
            
            // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 다각형의 이름에 해당하는 페이지로 이동합니다. 
            kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {
 		 /* var content = '<div class="info">' + 
                            '   <div class="title">' + name + '</div>' +
                            '   <div class="size">총 면적 : 약 ' + Math.floor(polygon.getArea()) + ' m<sup>2</sup></area>' +
                            '</div>'; 
          */
          
          		//선택된 구로 이동할 것
          		location.href = '/spring/selectedgu.seoul?city='+ name;

                infowindow.setContent(content); 
                infowindow.setPosition(mouseEvent.latLng); 
                infowindow.setMap(map);

                
                // ? 구에 대한 정보는 어떻게 넘길 것인가? 
                
            });
      
      
      
      
      }
      
      
      
   </script>