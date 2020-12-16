<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
  <head>
    <style>

     html { 
  background: url(img/Abstract.jpg) no-repeat center fixed; 
  background-size: cover;
 
}


       #map {
        height: 600px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3 style="color:white;"> Farmer Village Locations</h3>
    <div id="map"></div>
    <script>
      function initMap() {
      /* code  
       
	var uluru = {lat: -25.363, lng: 131.044};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
        */
	// map options
     var options= {
	zoom: 8,
               center: {lat:17.666187,lng:82.612175}
      }

	// new map

 	 var map = new google.maps.Map(document.getElementById('map'), options);
	
      /* var marker = new google.maps.Marker({
          position: {lat:17.666187,lng:82.612175},
          map: map,
         //icon: 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
        });
       var infoWindow = new google.maps.InfoWindow({
	content: '<h1>its Narsipatnam</h1>'
       });
       marker.addListener('click', function(){
	infoWindow.open(map, marker);
            });
         */
	addMarker({
		     coords:{lat:17.666433,lng:82.610523},
		iconImage:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
		content:'<h4>Its narsipatnam</h4>'}); //narsipatnam
 	addMarker({
		   coords:{lat:17.7186,lng:82.6672},
		content:'<h4 style="color:red;">Rolugunta Mandal</h4><p>SH 38,Rolugunta,Andhra pradesh -531114,India</p>'});//rolugunta 
	addMarker({
		   coords:{lat:17.714285,lng:82.642982},
		content:'<h4 style="color:red;">Kovvuru</h4><p>Kovvuru,Rolugunta,Andhra pradesh -531114,India</p>'});//Kovvuru
	addMarker({coords:{lat:17.699543,lng:82.643582}});//Nindugonda
	addMarker({
		   coords:{lat:17.670531,lng:82.692321},
		content:'<h4 style="color:red;">Kusarlapudi</h4><p>Kusarlapudi-Rolugunta Rd,Kusarlapudi,Andhra pradesh -531113,India</p>'});//Kusarlapudi
	addMarker({
		    coords:{lat:17.688729,lng:83.213217},
		    content:'<h4>Visakhapatnam district</h4>'});//Visakhapatnam
	addMarker({
		    coords:{lat:17.746663,lng:82.629492},
		    content:'<h4 style="color:red;">Sarabavaram</h4><p>Sarabavaram,Andhra pradesh -531116,India</p>'});//Sarabavaram	
	addMarker({
		    coords:{lat:17.738149,lng:82.601064},
		    content:'<h4 style="color:red;">Benna Bhupala Patnam</h4><p>B.B.patnam,Rolugunta,Andhra pradesh-531116,India</p>'});//Benna Bhupala Patnam
	addMarker({
		    coords:{lat:17.761790,lng:82.642942},
		    content:'<h4 style="color:red;">Konthalam</h4><p>Konthalam,Rolugunta,Andhra pradesh -531114,India</p>'});//Konthalam
	addMarker({
		    coords:{lat:17.750829,lng:82.664547},
		    content:'<h4 style="color:red;">Addasaram</h4><p>Addasaram,Rolugunta,Andhra pradesh -531114,India</p>'});//Addasaram
	addMarker({
		    coords:{lat:17.171143,lng:82.06367},
		    content:'<h4 style="color:red;">Jaggampeta</h4><p>Cheruvu Gattu Rd, Jaggampeta, Andhra Pradesh -533435, India</p>'});//Jaggampeta	
	addMarker({
		    coords:{lat:17.719777,lng: 82.687273},
		    content:'<h4 style="color:red;">Komaravolu</h4><p>Kusarlapudi-Rolugunta Rd, Komaravolu, Andhra Pradesh -531114, India</p>'});//Komaravolu
	addMarker({
		    coords:{lat:17.715441,lng:82.657869},
		    content:'<h4 style="color:red;">K.naidupalem</h4><p>K.naidupalem,Rolugunta, Andhra Pradesh -531114, India</p>'});//K.naidupalem
	addMarker({
		    coords:{lat:17.728767,lng:82.618730},
		    content:'<h4 style="color:red;">Vaddippa</h4><p>Vaddippa,Rolugunta, Andhra Pradesh -531114, India</p>'});//Vaddippa
	addMarker({
		    coords:{lat:17.703316,lng:82.732017},
		    content:'<h4 style="color:red;">Gundubadu</h4><p>Gundubadu,Rolugunta, Andhra Pradesh -531114, India</p>'});//Gundubadu
	addMarker({
		    coords:{lat:17.122181,lng:81.793739},
		    content:'<h4 style="color:red;">Butchampeta</h4><p>new Butchampeta,Butchampeta, Andhra Pradesh -533292, India</p>'});//Butchampeta
	addMarker({
		    coords:{lat:17.750791,lng:82.620050},
		    content:'<h4 style="color:red;">Rajannapeta</h4><p>Rajannapeta,Rolugunta, Andhra Pradesh -531114, India</p>'});//Rajannapeta
	addMarker({
		    coords:{lat:17.745992,lng:82.607777},
		    content:'<h4 style="color:red;">Rantnampeta</h4><p>Ratnampeta,Rolugunta, Andhra Pradesh -531116, India</p>'});//Ratnampeta
	addMarker({
		    coords:{lat:17.653442,lng:82.656446},
		    content:'<h4 style="color:red;">Janakirampuram agraharam</h4><p>Narsipatnam-Anakapalli-Visakhapatnam Rd,Subbarayudu palem, Andhra Pradesh -531116, India</p>'});//Janikirampuram Agraharam
	addMarker({
		    coords:{lat:17.730535,lng:82.672647},
		    content:'<h4 style="color:red;">Kanchugummala</h4><p>SH 38,Kanchugummala, Andhra Pradesh -531114, India</p>'});//Kanchugummala
	addMarker({
		    coords:{lat:17.724616,lng:82.662304},
		    content:'<h4 style="color:red;">Vedullavalasa</h4><p>Vedullavalasa,Rolugunta, Andhra Pradesh -531114, India</p>'});//Vedullavalasa
	addMarker({
		    coords:{lat:17.764226,lng:82.629436},
		    content:'<h4 style="color:red;">Yerrabhupalapatnam</h4><p>benna bhupalapatnam,Rolugunta, Andhra Pradesh -531116 India</p>'});//Yerrabhupalapatnam
	addMarker({
		    coords:{lat:17.775767,lng:82.613343},
		    content:'<h4 style="color:red;">Arla</h4><p>Arla,Rolugunta, Andhra Pradesh -531116, India</p>'});//Arla
	addMarker({
		    coords:{lat:17.727291,lng:82.586198},
		    content:'<h4 style="color:red;">Mokhasa Kothapatnam</h4><p>Chintupalli Rd,Mokhasa Kothapatnam, Andhra Pradesh -531116, India</p>'});//Mokhasa Kothapatnam

	// marker function
	
	function addMarker(props){
	 var marker = new google.maps.Marker({
          position: props.coords,
          map: map,
	//icon:props.iconImage
 	//content:props.content
         
        });

	if(props.iconImage){
	marker.setIcon(props.iconImage);
	}

	if(props.content){
	var infoWindow = new google.maps.InfoWindow({
	content:props.content
       });
       marker.addListener('click', function(){
	infoWindow.open(map, marker);
            });


	}
               
      
	
   }

}
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCybCBcsXXYeOHg6MFe2K-avRY7lCiBvkk&callback=initMap">
    </script>
  </body>
</html>

