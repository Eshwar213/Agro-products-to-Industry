<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

* {
    box-sizing: border-box;
}

html { 
  background: url(img/farmer5.jpg) no-repeat center fixed; 
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
<h2 align="center">Farmer registration</h2>
<div class="container">
  <form action="http://localhost:9090/jsps/kissan1/farmer_registration.jsp" method="post" onsubmit="return confirmpass()">
    <div class="row">
      <div class="col-25">
        <label for="fname">First Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="firstname" name="firstname" maxlength="20" placeholder="Your name.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Last Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="lastname" name="lastname" maxlength="20" placeholder="Your last name.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="crops">Crops</label>
      </div>
      <div class="col-75">
        <select id="crops" name="crops" required>
          <option value="paddy">paddy</option>
          <option value="redgram">redgram</option>
          <option value="cotton">cotton</option>
           <option value="cotton">blackgram</option>
            <option value="cotton">sesame seeds</option>   
     </select>
	<!-- <p style="color: grey;">Hold CTRL for multi-select</p> -->
			
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Address</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="address" placeholder="Type your address.." style="height:200px" required></textarea>
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
        <label for="Land">Land holding</label>
      </div>
      <div class="col-75">
       <!-- <input type="text" id="land" name="land" placeholder="land registration no.." required> -->
        <select id="land" name="land" required>
          <option value="Large farmer">Large farmer</option>
          <option value="Small farmer">Small farmer</option>
          <option value="Medium farmer">Medium farmer</option>
             
     </select>

      </div>
    </div>

   <div class="row">
      <div class="col-25">
        <label for="Land">Land Survey no</label>
      </div>
      <div class="col-75">
        <input type="text" id="survey" name="survey" placeholder="land  survey no.." required>
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="Aadhar ">Aadhar no</label>
      </div>
      <div class="col-75">
        <input type="text" id="aadhar" name="aadhar" maxlength="12" placeholder="Aadhar no.." required>
      </div>
    </div>
   <div class="row">
      <div class="col-25">
        <label for="uname">Username</label>
      </div>
      <div class="col-75">
        <input type="text" id="uname" name="uname" maxlength="30" placeholder="Your User name.." required>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="pwd">Password</label>
      </div>
      <div class="col-75">
        <input type="password" id="pwd" name="pwd" maxlength="30" placeholder="Your password.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="cpwd">Confirm Password</label>
      </div>
      <div class="col-75">
        <input type="password" id="cpwd" name="cpwd" maxlength="30" placeholder="Confirm password.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="cpwd">Village</label>
      </div>
      <div class="col-75">
        <input type="text" id="village" name="village"  maxlength="15" placeholder="village name...." required>
      </div>
    </div>

<div class="row">
      <div class="col-25">
        <label for="cpwd">Mandal</label>
      </div>
      <div class="col-75">
        <input type="text" id="mandal" name="mandal" maxlength="15" placeholder="Mandal name..." required>
      </div>
    </div>

<div class="row">
      <div class="col-25">
        <label for="cpwd">District</label>
      </div>
      <div class="col-75">
        <input type="text" id="district" name="district" maxlength="15" placeholder="Enter District..." required>
      </div>
    </div>
    
    
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  
  </form>
</div>
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

        <%
          String firstname=request.getParameter("firstname");
         String lastname=request.getParameter("lastname");
          String crops=request.getParameter("crops");
         String address=request.getParameter("address");
         String phno=request.getParameter("phno");
         String land=request.getParameter("land");
         String survey=request.getParameter("survey");
          String aadhar=request.getParameter("aadhar");
        String uname=request.getParameter("uname");
         String pwd=request.getParameter("pwd"); 
        String cpwd=request.getParameter("cpwd");
         String village=request.getParameter("village");
         String mandal=request.getParameter("mandal"); 
        String district=request.getParameter("district");
        %>
         
         <% 
        Connection conn = null;
          
   	 try
    	{
          Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");          
        String sql="insert into FARMER_REGISTRATION(FIRSTNAME,LASTNAME,CROPS,ADDRESS,PHNO,LAND,SURVEY,AADHAR,UNAME,PWD,CPWD,VILLAGE,MANDAL,DISTRICT) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";           


	PreparedStatement pstmt=conn.prepareStatement(sql);

            		pstmt.setString(1,firstname);
            		pstmt.setString(2,lastname);
		pstmt.setString(3,crops);
            		pstmt.setString(4,address);
		pstmt.setString(5,phno);
            		pstmt.setString(6,land);
		pstmt.setString(7,survey);
            		pstmt.setString(8,aadhar);
		pstmt.setString(9,uname);
		pstmt.setString(10,pwd);
		pstmt.setString(11,cpwd);
		pstmt.setString(12,village);
		pstmt.setString(13,mandal);
		pstmt.setString(14,district);
            		
            		
          	 out.println("Registration Successful");
                
          pstmt.executeQuery();
            }


catch (Exception e)
{%>
 <%=e%>   
 <%}

%>

<hr size=5 color=red>
<a href="http://localhost:9090/jsps/kissan1/farmer.jsp">Go back</a>

	<%  
		String array[] = request.getParameterValues("crops");
		if(array!= null)
		{
	%>
		<p><ul><% for(int i=0;i<array.length;i++){%>
			<li><%=array[i]%></li>
			<% } %></ul>
	<% }%>




</body>
</html>