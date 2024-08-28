<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="signupAction" method="post">
  <input type="text" name="name" placeholder="Enter Name" required>
   <input type="email" name="email" placeholder="Enter Email" required>
    <input type="text" name="mobilenumber" placeholder="Enter Mobile number" required>
 	<select name="securityquestion" required>
 	<option value="what was your first car" >what was your first car</option>
 	<option value="what is name of your pet" >what is name of your pet</option>
 	<option value="what is your school name" >what is your school name</option>
 	<option value="what is the name of your hometown" >what is the name of your hometown</option>
 	</select>
 	<input type ="text" name="answer" placeholder="enter answer" required>
 	<input type ="password" name="password" placeholder="enter password" required>
 	<input type= "submit" value="signup">
  </form>
         <h2><a href="/login">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
	%>
	<h1>Successfully Registered</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing went wrong try again</h1>	
<% }
%>


    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>