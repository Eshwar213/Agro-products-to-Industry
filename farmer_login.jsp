<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" %>

<html>
<head>
<style>
html { 
  background: url(img/image.jpg) no-repeat center fixed; 
  background-size: cover;
 
}
</style>
</head>
<body>
 <h2> Check your details </h2>


<%
	try
	{
		String uname1 = request.getParameter("uname");   
        		String upwd1 = request.getParameter("upwd");
	
		Connection conn =null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
                   	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr"); 

        		//Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        		//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javademo?" + "user=root&password=");    

        		Statement pst = conn.createStatement();   
		
		ResultSet rs;

		

		rs=pst.executeQuery("Select  uname,pwd from farmer_registration where uname='"+uname1+"' and pwd='"+upwd1+"'");
        		
		
		if(rs.next())
        		{
					session.setAttribute("uname1" ,uname1);
                   	response.sendRedirect("http://localhost:9090/jsps/kissan1/farmer_page.jsp"); 
			              
                 }
        		else
           		out.println("INVALID LOGIN CREDENTIALS");        
   	}

	catch(SQLException e1)
	{
		out.println("Something went wrong inSQL Statement !! Please try again");       
	}
   	
	catch(Exception e)
	{       
       		out.println("Something went wrong !! Please try again");       
   	}      

	
%>
<hr size=2 color=white>
<a href="http://localhost:9090/jsps/kissan1/farmer.jsp"><input type="button" value="Go back"></a>
   

</body>
</html>



