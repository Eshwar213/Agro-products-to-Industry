<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head><title>Update profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

* {
    box-sizing: border-box;
}

html { 
  background: url(img/manufacturer.jpg) no-repeat center fixed; 
  background-size: cover;
 
}

input[type=text], select, textarea,input[type=password],input[type=password]{
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    width: 50%;
    margin: 0px auto;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}


</style>
</head>
<body>
<h2 align="center">Update Profile</h2>
<div class="container">
  <form action="http://localhost:9090/jsps/kissan1/manufacturer_registration.jsp" method="post" " onsubmit="return confirmpass()">
    <div class="row">
      <div class="col-25">
        <label for="crops">Crops</label>
      </div>
      <div class="col-75">
        <select id="crops" name="crops" required>
          <option value="rice">rice</option>
          <option value="jute">jute</option>
          <option value="wheat">wheat</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">Phone no</label>
      </div>
      <div class="col-75">
        <input type="text" id="phno" name="phno" pattern="[789][0-9]{9}" placeholder="phone number.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="uname">Username</label>
      </div>
      <div class="col-75">
        <input type="text" id="uname" name="uname" placeholder="Your User name.." required>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="pwd">Password</label>
      </div>
      <div class="col-75">
        <input type="password" id="pwd" maxlength="20" name="pwd" placeholder="Your password.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="cpwd">Confirm Password</label>
      </div>
      <div class="col-75">
        <input type="password" id="cpwd" maxlength="20" name="cpwd" placeholder="Confirm password.." required>
      </div>
    </div>
    
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  
  </form>
</div>
 <%
          String firstname=request.getParameter("firstname");
         
          String crops=request.getParameter("crops");
         String address=request.getParameter("address");
         String phno=request.getParameter("phno");
         String company=request.getParameter("company");
         
        String uname=request.getParameter("uname");
         String pwd=request.getParameter("pwd"); 
        String cpwd=request.getParameter("cpwd");
        %>
         
         <% 
        Connection conn = null;
          
   	 try
    	{
          Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");          
        String sql="update MANUFACTURER_REGISTRATION(CROPS,PHNO,UNAME,PWD,CPWD) SET values(?,?,?,?,?)";           


	PreparedStatement pstmt=conn.prepareStatement(sql);

            		
            		pstmt.setString(1,crops);
            		
		pstmt.setString(2,phno);
            		
		pstmt.setString(3,uname);
		pstmt.setString(4,pwd);
		pstmt.setString(5,cpwd);
            	


         	
	
          	out.println("Registration Successful");
          pstmt.executeQuery();
            }


catch (Exception e)
{%>
 <%=e%>   
 <%}

%>
<script type="text/javascript">
	function confirmpass() 
	{
       	 var pass = document.getElementById("pwd").value;
       	 var confPass = document.getElementById("cpwd").value;
        	 if (pass != confPass)
{
	alert('passwords dont match !');
	return false;
                  }
return true;
}
</script> 



<hr size=5 color=red>
<a href="http://localhost:9090/jsps/kissan1/farmer_page.jsp">Go back</a>
</body>
</html>