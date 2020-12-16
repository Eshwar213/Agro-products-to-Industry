<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page language="java"%>

<%@page language="java" import="java.sql.*"%>


<html>

 <head>

  <title>
</title>
  <meta http-equiv=Content-Type content="text/html; charset=windows-1252">
  
 </head>

 
<body vLink=#6f6c81 link=#486591 bgcolor="#FFCC99">
 
<h1 align="center">Movies</h1>

 <p align="center">&nbsp</p>

 <form method="post" action="item_purchase.jsp">

	 <table border="2" align="center" cellpadding="7" cellspacing="7">
	
 <tr>
 
	<td width="399"><strong>Select A movie</Strong></td>
 <td width ="277">
 
	    <select name="item" id="item">

	  <option value="" selected>--select--</option>
 
 
	<option value="" selected>paddy</option>

	 <%
 
	 try{


		Class.forName("oracle.jdbc.driver.OracleDriver");
        		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");

	
	Statement st=conn.createStatement();

	

	
ResultSet rs= st.executeQuery("Select * from farmer_registration " );

	 while(rs.next())
	
{%>

	 
<option value="<%String item= rs.getString(3); out.print(item);%>"><% out.print(item);%></option>
	
      <%
  
	      String desc = rs.getString(3);
  
	      out.println("<tr><td>"+desc);
	
        out.println("</td></tr>");
 
	
	 } %>	

 <%}

catch(Exception e)
{
out.println("Error");
}
%>


 	<%	try{


		Class.forName("oracle.jdbc.driver.OracleDriver");
        		Connection conn1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");


	
	Statement st1=conn1.createStatement();

		String s1=request.getParameter("item");

	
	ResultSet rs1= st1.executeQuery("Select * from farmer_registration where crops='s1'" );
 %>
	<table  cellspadding="0" class="w3-table-all">
<tr>
	<th><b>First name</b></th>
	<th><b>Last name</b></th>
	<th><b>Crops</b></th>	
	<th><b>Phone number</b></th>
	<th><b>Village</b></th>
	<th><b>Mandal</b></th>
	<th><b>District</b></th>
	
</tr>



	
<%

		while(rs1.next())
	{





%>

<tr>
	<td><%=rs1.getString("firstname")%></td>
	<td><%=rs1.getString("lastname")%></td>
	<td><%=rs1.getString("crops")%></td>
	<td><%=rs1.getString("phno")%></td>
	<td><%=rs1.getString("village")%></td>
	<td><%=rs1.getString("mandal")%></td>
	<td><%=rs1.getString("district")%></td>
	
</tr>
<%

}
%>
</table>


<%
 }

catch(Exception e1)
{
out.println("Error");
}

%>
</select>
     </td>
   
</tr>
 
</table>
</form>
</body>
</html>