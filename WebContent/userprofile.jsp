<%-- 
    Document   : userDetails
    Created on : Aug 11, 2018, 12:32:32 PM
    Author     : hp
--%>

<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User's profile</title>
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
h2{
  text-align: center;
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
        
        
        

   </style>
            
    </head>
    <body>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<% 
    String url = "jdbc:mysql://localhost:3306/library"; 
    String username = "root"; 
    String password = "";

    if (session.getAttribute("username") != null) {
    try {
        
        Connection con = DriverManager.getConnection(url,username,password);
        String uname = session.getAttribute("username").toString();
        String query ="SELECT * FROM register WHERE username = ?";
        PreparedStatement pre = con.prepareStatement(query);
        pre.setString(1, username);
        ResultSet result = pre.executeQuery();
    
%>
     <div class="container">   
      <img src="images/480530351-supervisor-manager-company-employee.jpg" width="15%" height="85%"style="  padding:0; margin-bottom:1%; margin-left:1%; margin-top:1%; float:left">
      
       
    

     
  <a href="Edit user profile.jsp" style="margin-left:50%; margin-right:4%; margin-top:4%">Edit profile</a>
  
    <a href="Login.jsp" style="margin-right:3%; margin-top:4%">Logout</a>
  

  </div> 
  

</div>

          

        <h2>User profile</h2>
        <div class="a1">
           <a href="Customer.jrxml"> <button type="button">Report</button></a>
        <form action="">
            <table>
               
               
                <tr>
                    <td>Full Name</td>
                      <td> Address</td>
                        <td>Contact Number</td>  
                        <td>Email</td>
                          <td>Nic Number</td>
                        
                        
                </tr>
                <%   while(result.next()){
                %>
                <tr>    
                    
                    <td> <%=result.getString("username")%> </td>
                       <td> <%=result.getString("password")%> </td>
                         <td> <%=result.getString("FirstName")%></td>
                            <td> <%=result.getString("LastName")%></td>
                            <td><%=result.getString("Email")%></td>
             </tr>
            
              
              
             <% } %>
                
            </table>
        </div>
             <%
             } catch (Exception e) {
             e.printStackTrace();
             out.println(e.toString());
}} else {
    out.println("Not logged in!");
}%>


</div> 
                              
        </form>
    </body>
</html>
