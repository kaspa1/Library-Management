<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notification</title>
 <style>
body{
	background:url("L.jpg");
	background-size:cover;
	font-family:Arial;
}
.wrap{

	max-width:350px;
	border-radius:20px;
	margin:auto;
	background:rgba(0,0,0,0.8);
	box-sizing:border-box;
        padding:40px;
	color:#fff;
	margin-top:100px;
}
h2{
	text-align:center;
}
input[type=text],input[type=password],input[type=email]{
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
   <form  action="notification" method="post">
<h2>notification</h2>
Firstname <input type="text" id="firstname"  name="firstname" required />
Lastname <input type="text" id="lastname" name="lastname" required />
StudentID <input type="text" id="studentID"name="studentID" required />
Email <input type="email" id="email" name="email" required />
Description <input type="text" id="description" name="description" required />


<input type="submit" value="submit"/>


</form>
        </div>
        
      
				
<script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>
</body>
</html>