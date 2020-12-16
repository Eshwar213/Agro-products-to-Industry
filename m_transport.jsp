<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
  <head>
    <style>

     html { 
  background: url(img/Truck17.jpg) no-repeat center fixed; 
  background-size: cover;
 }

a{
	text-decoration: none;
	font-family:Trebuchet MS;
	//color: white;
	color: black;
}
 .transport{
	font-family:Trebuchet MS;
	color: black;
	//color: white;
}
 .transport1{
	font-family:Trebuchet MS;
	//color: black;
	color: white;
	position: relative;
	top:-20px;
}

</style>
</head>
<body>

<!-- Google maps key : AIzaSyCybCBcsXXYeOHg6MFe2K-avRY7lCiBvkk-->
<h1 style="font-family:Trebuchet MS; "><center>TRANSPORT</center></h1>

<a href="https://www.google.co.in/maps" style=""><h4><p>Find distance:</p><u>TRANSPORTATION DISTANCE</u></h4></a>

 <!--	<h2> Custom map</h2>
	<iframe src="https://www.google.com/maps/d/embed?mid=1FvjKjuxT7Yd_wlijNRXH-i7xOp-kuzYg" width="640" height="480"></iframe>
-->
<p class="transport">LOCAL TRANSPORT</p>
<p class="transport">Click on if:</p>
<a href="http://www.truckbhada.com/CalculateFreight" style="position: relative; top: -35px; left: 90px;"><u>THIRD PARTY TRANSPORT</u></a>
<p class="transport1">OWN TRANSPORT</p>


</body>
</html>