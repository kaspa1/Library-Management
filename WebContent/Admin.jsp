<%-- 
    Document   : course-admin
    Created on : Apr 27, 2018, 3:20:01 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    <style type="text/css">
  .container {
    overflow: hidden;
    background-color:#000;
    font-family: Arial;
    padding:0px;
    height:200px;
}

.container a {
    float: left;
    font-size: 20px;
    color: white;
    text-align: center;
    padding: 10px 12px;
    text-decoration: none;
    
    
}
input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
    }

input[type=text]:focus {
    width: 100%;
}
.dropdown {
    float: left;
    overflow: hidden;
      
     
}

.dropdown .dropbtn {
    font-size: 20px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color:inherit;

}

.container a:hover, .dropdown:hover .dropbtn {
    background-color:#ABEBC6  ;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:#7DCEA0;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
.centered {
    position: absolute;
    top: 559px;
    left:1000px;
    transform: translate(-50%, -50%);
    color:white;
    font-size:30px;
}

 .button  {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #00BF9A;
  font-size: 18px;
  text-align: center;
  font-style: normal;
 width: 500px;

  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 70%;
   margin-left:15%;
  margin-bottom:15%;
 margin-top:5%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: center;
    padding: 15px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
 
.footer {
           position:absolute;
           background-color:black;
           width:100%;
           
        }   
        .centered{
            color: yellow;
             text-shadow: 3px 3px black;
            
        }
        .Employee ID{
            height: 20px
        }
        .submit,.update,.delete{
            width: 100px;
   
        }
        .submit:hover {
            background-color: #4CAF50;
            color: white;
        }
        .update:hover{
            background-color:  yellow;
            color: black;
        }
        .delete:hover{
            background-color:  red;
            color: black;
        }
        
        }
        

   </style>
</head>

<body>
    
       

   
     <div class="container">   
      <img src="480530351-supervisor-manager-company-employee.jpg" width="250px" height="150px"style="  padding:0; margin-bottom:5px; margin-left:5px; margin-top:10px; float:left">
      
       
    


  <a href="Adminnotification.jsp" style="margin-right:3%; margin-top:4%">notification</a>
      <a href="Employeedetails.jsp" style="margin-right:3%; margin-top:4%">Employeedetails</a>
   <a href="view.jsp" style="margin-right:3%; margin-top:4%">user's profile</a>
     <a href="admindash.html" style="margin-right:3%; margin-top:4%">Dashboard</a>
   <a href="books.jsp" style="margin-right:3%; margin-top:4%">books</a>
   <a href="login.jsp" style="margin-right:3%; margin-top:4%">Logout</a>
    <form  >
   
						<input type="text" name="search" placeholder="Search..">
					
						</form>
      
    </div>

  
  



          



 
    	
<div>
 
  <img src="L.jpg" style="width:1500px;height:700px; border:0px; padding:2px;"/>
  <div class="centered"><br><br><br><br><br><br><br><br><br><br><br><br><br><h2> Welcome To Library managemant system</h2>
     <h2 style="margin-left:25px;">welcome to Admin page</h2>
      

</div>
     </div>
           



<div style="color:white ; background-color:#000; width:1500px; height:290px;">
		
		<div style="margin-right:3px;float:left">
			<img src="aaa2.jpeg" width="250px" height="250px" style="margin:0px; padding:0; border:0; margin-top:14px;">
			
		</div>

		<div>
			
			<pre style="color:white;float:right; margin-right:10px;  font-size:20px; line-height:1.8;"> 
                            Our Location
                            no6 , 
                            Colombo 00600.
                            <B>Kaspa:aviinfo@avicampus.edu.lk</B>
                            <B>Call:9411237529</B>
                       </pre>
		</div>
                 
		
	
 </body>
 </html>