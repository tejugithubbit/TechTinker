<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="" method="post">
     <input type="email" name="email" placeholder="Enter Email"required>
     <input type="number" name="mobilenumber" placeholder="Enter Mobile Number"required>
     <select name="securityquestion">
     <option value="what was your first car" >what was your first car</option>
 	<option value="what is name of your pet" >what is name of your pet</option>
 	<option value="what is your school name" >what is your school name</option>
 	<option value="what is the name of your hometown" >what is the name of your hometown</option>
     </select>
      <input type="text" name="answer" placeholder="Enter Answer"required>
      <input type="password" name="newpassword" placeholder="Enter your new password to set"required>
       <input type="submit" value="Save">
         </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
 <%
 String msg=request.getParameter("msg");
 if("done".equals(msg))
 {
 %>  
<h1>Password Changed Successfully!</h1>
<%} %>
<% 
if("invalid".equals(msg))
{
	%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online Shopping</h2>
    <p>WELCOME TO ONLINE SHOPPING</p>
  </div>
</div>
</body>
</html>