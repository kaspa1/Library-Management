<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books Details</title>
<link rel="stylesheet" type="text/css" href="style.css">

<style>
body{
	background:url("book.jpg");
	background-size:cover;
	font-family:Arial;
}
.wrap{

	max-width:350px;
	border-radius:20px;
	margin:auto;
	background:rgba(128,128,128,1.0);
	box-sizing:border-box;
        padding:40px;
	color:#fff;
	margin-top:100px;
}
h2{
	text-align:center;
}
input[type=text],input[type=password]{
	width:100%;
	box-sizing:border-box;
	padding:12px 5px;
	background:rgba(0,0,0,0.10);
	outline:none;
	border:none;
	border-bottom:1px dotted #fff;
	color:#fff;
	border-radius:5px;
	margin:5px;
	font-weight:bold;
}

input[type=submit]{
	width:100%;
	box-sizing:border-box;
	padding:10px 0;
	margin-top:30px;
	outline:none;
	border:none;
	background:#60adde;
	opacity:0.7;
	border-radius:20px;
	font-size:20px;
	color:#fff;
}
input[type=submit]:hover{
	background:#003366;
	opacity:0.7;
}

</style>
</head>
<body>
<div class= "wrap"> 
   <form id="InsertForm" action="addbook" method="post">
   <div class="input-group">
   <pre><caption>New Book Detail</caption>
   </pre>
   </div>
  <label> Book Name :</label>
   <input type="text" name="bookname" required="required">
   
   <br>
   <br>
   
  <label> ISBN :</label>
   <input type="text" name="isbn" required="required">
   
   <br>
   <br>
  
   <label >Author    :</label>
   <input type="text" name="author" required="required"> 
   
   <br>
   <br>
   
   <label> Category  :</label>
   <input type="text" name="category" required="required"> 
 
   <br>
   <br>
   <div class="input-group">
   <center><input type="submit" value="Insert Record" id ="insertButton" class="btn"></center>
   </div>
   
   </form>
   
        </div>    
</body>
</html>