<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<head>
<title>Market price</title>
<style>
body::-webkit-scrollbar {
    width: 1em;
}
 
body::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
}
 
body::-webkit-scrollbar-thumb {
  background-color: darkgrey;
  outline: 1px solid slategrey;
}
th {
    background-color: #FF3333;
    color: white;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
tr:nth-child(odd){background-color: #ffffff}
</style>
</head>
<body bgcolor="black">

<center>
<h2 style="color:white;"> Market price</h2>
<table  cellspadding="0" class="w3-table-all">
	<tr>
		<th><b>Name of the crop</b></th>
		<th><b>Image</b></th>
		<th><b>Quantity per Acre or per Kg</b></th>	
		<th><b>Farmer price</b></th>
		<th><b>Market price</b></th>
	
	</tr>
	<tr>
		<td>Paddy</td>
		<td><img src="img/paddy43.jpg" style="height:80px; width:80px;"></td>
		<td>30 bags/acre&emsp;75kg husk/ bag</td>
		<td>1100 Rs/bag</td>
		<td>1250 Rs/25 kg bag</td>
	</tr>
	<tr>
		<td>Black gram</td>
		<td><img src="img/blackgram.jpg" style="height:80px; width:80px;"></td>
		<td>250 kg/acre&emsp;1kg equals</td>
		<td>40-50 Rs</td>
		<td>70-80 Rs</td>
	</tr>
	<tr>
		<td>Red gram</td>
		<td><img src="img/redgram1.jpg" style="height:80px; width:80px;"></td>
		<td>250 kg/acre&emsp;1kg equals</td>
		<td>50 Rs</td>
		<td>90-100 Rs</td>
	</tr>
	<tr>
		<td>Sesame seeds</td>
		<td><img src="img/sesame.jpg" style="height:80px; width:80px;"></td>
		<td>150-200 kg/acre&emsp;1kg equals</td>
		<td>80-90 Rs</td>
		<td>approx 180 Rs</td>
	</tr>
</table><br>
<a href="http://localhost:9090/jsps/kissan1/farmer_page.jsp"><input type="button" value="Go back"></a>
</body>
</html>




