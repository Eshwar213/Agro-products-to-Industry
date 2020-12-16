<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head><style>
 html { 
  background: url(img/manufacturer2.jpg) no-repeat center fixed; 
  background-size: cover;
 }

a {
	text-decoration: none;
	font-family:Trebuchet MS;
	color: black;
}



.topnav a.active {
    background-color: #4CAF50;
    color: white;
}

</style></head>
<body>

<a  id="styleit" class="active" href="http://localhost:9090/jsps/kissan1/index.jsp"> HOME</a><br>



<br>

 <form action="http://localhost:9090/jsps/kissan1/manufacturer_report.jsp" method="post"> 
 <select id="crops" name="crops" required>
	<option value="paddy">all</option>
          <option value="paddy">paddy</option>
          <option value="redgram">redgram</option>
          <option value="cotton">cotton</option>
           <option value="blackgram">blackgram</option>
            <option value="sesame_seeds">sesame_seeds</option> -->
	
     </select>
<input type="submit" value="GENERATE REPORT">
<br>
</form><br><br>
<!-- <div class="topnav">
 <a href="http://localhost:9090/jsps/kissan1/show_villages.jsp" class="styleit"><h3>SHOW VILLAGES</h3></a>
</div> -->
</body>
</html>
