<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<style>
html { 
  background: url(img/crop.jpg) no-repeat center fixed; 
  background-size: cover;
 
}


body {
           margin:0;
         }

.topnav {
  overflow: hidden;
  //background-color: #333;
 background-color: transparent;
}

.topnav a {
  float: left;
  display: block;
  //color: #f2f2f2;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  //background-color: #ddd;
  //color: black;
  border-bottom: 1px black;
  box-shadow: inset 0 -2px 0 black;
}

.topnav a.active {
    background-color: #4CAF50;
    color: white;
}
</style>
<style>
body {
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    //background-color:transparent;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

a.dark {
	font-size: 20px;
}
</style>





<style>
form {
    border: 0px solid #f1f1f1;
    padding: 0 0 0 60px;
    width: 50%;
    
}

input[type=text], input[type=password] {
    width: 40%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 40%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px 0 0 0;
     width: 100%;
}

span.psw {
    float: right;
    padding-top: 16px -20px 0 -20px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>


</head>
<body>

<div class="topnav">
    <a class="active" href="http://localhost:9090/jsps/kissan1/index.jsp"> HOME</a>
	
   <a href="#home"><span style="font-size:20px;cursor:pointer" onclick="openNav()">&#9776; </span></a>
  
  <a href="http://localhost:9090/jsps/kissan1/f_policies.jsp" class = "dark">Government policies</a>
  <a href="http://localhost:9090/jsps/kissan1/f_cultivation.jsp"class = "dark">cultivation details</a>
  
</div>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="http://localhost:9090/jsps/kissan1/show_manufacturers.jsp">Show Manufacturer's </a>
  <a href="http://localhost:9090/jsps/kissan1/update_profile.jsp">Update Profile </a>
  <a href="http://localhost:9090/jsps/kissan1/market_price1.jsp">Market price</a>
  <a href="http://localhost:9090/jsps/kissan1/f_agreement.jsp">Agreement rules</a>
  <a href="http://localhost:9090/jsps/kissan1/f_transport.jsp">Transportation cost</a>
</div> 

<h2 style="padding: 0 0 0 60px;">Farmers page</h2>
<img src="img/soil.jpg" style="width: 200px; height: 200px; border: 5px solid #000000; position: relative; left: 550px; top:-120px;
    border-radius: 120px;
  padding: 5px;">
<img src="img/farmer.png" style="width: 200px; height: 200px; border: 5px solid #000000; position: relative; left: 650px; top: -120px;
 border-radius: 120px; padding: 5px;">

<form action="http://localhost:9090/jsps/kissan1/manufacturer_page.jsp" method="post">
 <!--  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div> -->

   
  
</form>




<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
}
</script>
     


</body>
</html>
