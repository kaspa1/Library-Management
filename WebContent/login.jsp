<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<style type="text/css">
body {
	background:url("L.jpg");
	background-size:cover;
	font-family:Arial;
}
.a{
  width:300px;
  height:230px;
  background-color:rgba(0,0,0,0.2);
  
  margin:auto;
  margin-top:80px;
  padding-top:10px;
  padding-left:50px;
  border-radius:15px;
  -webkit-border-radius:15px;
  -o-border--radius-:15px;
  -moz-border-radius:15px;
  color:white;
  font-weight:bolder;
 }
 .a input[type="text"]{
  width:200px;
  height:35px;
  border:0;
  border-radius:5px;
   -webkit-border-radius:5px;
  -o-border--radius-:5px;
  -moz-border-radius:5px;
  padding-left:10px;
  }
 .a input[type="password"]{
  width:200px;
  height:35px;
    padding-left:10px;
  border:0;
  border-radius:5px;
   -webkit-border-radius:5px;
  -o-border--radius-:5px;
  -moz-border-radius:5px;
  }
 
 .a input[type="submit"]{
  width:100px;
  height:35px;
  border:0;
  border-radius:5px;
   -webkit-border-radius:5px;
  -o-border--radius-:5px;
  -moz-border-radius:5px;
  background-color:"lightblue";
  }
  
  
 
 
 
 
</style>
</head>
<body background="l.jpg">
	<div class="a">
		<h2>Login</h2>
		<form method="post" action="logincheck">
			<input type="text" id="usrname" placeholder="please enter user name" name="user" required><br><br>
			<input type="password" id="psw"  placeholder="please enter password" name="pwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required ><br><br>
			<input type="submit" value="login">

		</form>
	</div>
	
	
</body>
</html>