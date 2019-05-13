<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Information</title>
<style type="text/css">
body{
 background-size:cover;
}
.view{
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
  .view input[type="text"]{
  width:200px;
  height:35px;
  border:0;
  border-radius:5px;
   -webkit-border-radius:5px;
  -o-border--radius-:5px;
  -moz-border-radius:5px;
  padding-left:10px;
  }
 .view input[type="submit"]{
  width:100px;
  height:35px;
  border:0;
  background-color:#c68c53;
  border-radius:5px;
   -webkit-border-radius:5px;
  -o-border--radius-:5px;
  -moz-border-radius:5px;
  }
</style>

</head>
<body background="L.jpg">
<div class=view>
<form action="View">
<table>
<tr>
   
<td>Enter User Name</td>
<td><input type="text" name="user"></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="search"></td>
</tr>
</table>
    
</form>
</div>
</body>
</html>