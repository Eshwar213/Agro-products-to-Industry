<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<style>
html { 
  background: url(img/manufacturer.jpg) no-repeat center fixed; 
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
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  //background-color: #ddd;
  //color: black;
  border-bottom: 1px white;
  box-shadow: inset 0 -2px 0 white;
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
<style>
body {  font-family: Arial, Tahoma, sans-serif; font-size: 12px; /*color: #454545;*/ color: #FFFFFF; }

/** blockquote styles **/
.bq3 { width: 800px; background: url('http://i47.tinypic.com/a9l0g3.png') top left no-repeat; padding-left: 55px; line-height: 38px;  color:black;}
.bq3 p { padding-right: 35px; line-height: 38px; background: url('http://i48.tinypic.com/eb1yrr.png') bottom right no-repeat; padding-bottom: 15px; /*color: #333;*/ color: black; font-size: 36px;}

</style>
  </head>

</head>
<body>

<div class="topnav">
     <a class="active" href="http://localhost:9090/jsps/kissan1/index.jsp"> HOME</a>
	
  <a href="#home"><span style="font-size:20px;cursor:pointer" onclick="openNav()">&#9776; </span></a> 
<!--  <a href="#home" class = "dark">Market price</a> -->
  <a href="http://localhost:9090/jsps/kissan1/m_policies.jsp" class = "dark">Government policies</a>
  
   <!--<a href="#about" class = "dark">Government Policies</a>
   <a href="#about"class = "dark">Products Rating</a>
   <a href="#about"class = "dark">Cultivation details </a>
    <a href="#about"class = "dark">Contact Us</a> -->
</div>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="http://localhost:9090/jsps/kissan1/show_farmers.jsp" target="">Show Farmer's </a>
  <a href="http://localhost:9090/jsps/kissan1/market_price.jsp">Market price</a>
  <a href="http://localhost:9090/jsps/kissan1/m_agreement.jsp">Agreement rules</a>
  <a href="http://localhost:9090/jsps/kissan1/m_transport.jsp">Transportation cost</a>
</div> 

<!-- <h2 style="padding: 0 0 0 60px;">Manufacturers page</h2> -->


<!-- <a href="http://localhost:9090/jsps/kissan1/manufacturer_page.jsp" name="m_page">click here</a> -->
<form action="http://localhost:9090/jsps/kissan1/manufacturer_page.jsp" method="post">
 <!--  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div> -->
</form>
<br><br>

<blockquote class="bq3">
      <p><b>Quality in a service a product is not what you put into it. It is what the client or customer get out of it</b></p>
    </blockquote>    
  
  



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
