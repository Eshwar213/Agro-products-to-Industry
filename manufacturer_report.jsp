<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<head>
<title>report generation</title>
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
<h2 style="color:white;"> Farmer report generation</h2>
<table  cellspadding="0" class="w3-table-all">
<tr>
	<th><b>Company name</b></th>
	<th><b>Crops</b></th>	
	<th><b>Address</b></th>
	<th><b>Phone Number</b></th>
	<th><b>Corporate Identity Number</b></th>
	
	
</tr>



        <% 
        Connection conn = null;
          
   	 try
    	{
         	 Class.forName("oracle.jdbc.driver.OracleDriver");
        	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr"); 
       
      
	Statement stmt=conn.createStatement();
    	
	ResultSet rs=stmt.executeQuery("select firstname, crops, address, phno, company from manufacturer_registration"); 

	//ResultSet rs=stmt.executeQuery("select firstname, lastname, crops, address, land, survey, aadhar from farmer_registration"); 	

	//ResultSet rs=stmt.executeQuery("select * from farmer_registration"); 
             
                  while(rs.next())
	{





%>

<tr>
	<td><%=rs.getString("firstname")%></td>
	
	<td><%=rs.getString("crops")%></td>
	<td><%=rs.getString("address")%></td>
	<td><%=rs.getString("phno")%></td>
	<td><%=rs.getString("company")%></td>
	
	
</tr>
<%

}
%>
</table>
<%
rs.close();
stmt.close();
conn.close();
}

catch (Exception e)
{%>
 <%=e%>   
 <%}

%>
 

</center>

<br>
<a href="http://localhost:9090/jsps/kissan1/show_manufacturers.jsp"><input type="button" value="Go back"></a>

</body>

</html>


          