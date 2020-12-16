<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head><title>Manufacturer Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

html { 
  background: url(img/farmer6.jpg) no-repeat center fixed; 
  background-size: cover;
 
}
.heading{
	font-family :Trebuchet MS;
	font-size: 26px;
	color: white;
	
}
a:link, a:visited {
    background-color: white;
    color: black;
    font-size: 20px;
    border: 2px solid green;
    border-radius: 50px;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}

a:hover, a:active {
    background-color: green;
    color: white;
}

</style>
<body>

<h2 class="heading">Cultivation Details</h2><br>

<a href="http://localhost:9090/jsps/kissan1/paddy.jsp">Paddy cultivation</a><br>
<br><a href="http://localhost:9090/jsps/kissan1/redgram.jsp">Red gram cultivation</a><br>
<br><a href="http://localhost:9090/jsps/kissan1/cotton.jsp">Cotton cultivation</a><br>
<br><a href="http://localhost:9090/jsps/kissan1/blackgram.jsp">Black gram cultivation</a><br>
<br><a href="http://localhost:9090/jsps/kissan1/sesame.jsp">Sesame seeds cultivation</a>
</body>
</html>
