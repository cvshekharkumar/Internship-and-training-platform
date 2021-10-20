<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Shekhar's school</title>
          <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
        </style>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css.css"/>
        <link rel="stylesheet" href="css/templatemo-style_1.css">
    </head>

<body background="photo/r.jpg">

      
    <nav>
         <div id="course-table">
        <ul>
            <li class="active"><a href="DisplayMessages_1.jsp">Home</a></li>
           
            <li><a href="index_1_1_1_1.jsp">Profile</a></li>
            <li><a href="adminpost_1_1.jsp">Tender Notification</a></li>
            <li><a href="tenderfilled.jsp">Fill Tender</a></li>
            <li><a href="history.jsp">History</a></li>
             <li><a href="tenderfilled_1_1_2.jsp">Status</a></li>
            
           
         
             
              <li style="float:right"><a href="logout.jsp">Logout</a></li>
        
               
                
        </ul>
            
        </div>
      
    </nav>

    <div class="page-heading">
        <div class="container">
            <div class="heading-content">
                <h1>XASTION TECH PRIVATE LIMITED</h1>
            </div>
        </div>
    </div>
<div id="divid">
    <div class="more-about-us">
        <div class="container">
            <div class="col-md-10 col-md-offset-3">
     
     <%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
  Connection conn = null;
  String url="jdbc:mysql://localhost:3306/";
  String dbName ="database2";
  String  driver="com.mysql.jdbc.Driver";
  String userName="root";
  String password="";
  Statement st;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement();
       String name=(String)session.getAttribute("username");
      
     
      
   %>  
   <center>
      
         <form method="post" action="tenderfilled_1.jsp"> 
         <table Id="course-table" width="400px" align="center" border=2>
                <tr><td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Tender Form Details</h2></font>
                    
                </tr>
          <tr><td>Name of Institute/Trainer</td><td><input type="text" value="<%=name%>" name="noit"></td></tr>
          <tr><td> Trainer Name</td><td><input type="text" name="tn"></td></tr>
           <tr><td>Trainer Profile link</td><td><input type="text" name="tpl"></td></tr>
       
          <tr><td>Course  </td><td><input type="text" name="cou"></td></tr>
            <tr><td>Duration </td><td><input type="text" name="dur"></td></tr>
            <tr><td> Location </td><td><input type="text" name="loc"></td></tr>
            <tr><td> Mode of Training </td><td><input type="text" name="mot"></td></tr>
            <tr><td>Fee per student </td><td><input type="text" name="fps"></td></tr>
      
          <tr><td>Trainer Type</td><td> <select name="tt">
                <option>Individual</option>
                 <option>Institute</option>
           </select></td></tr>
            <tr><td>Trainer Industry Experience </td><td><input type="text" name="tie"></td></tr>
            <tr><td> Trainer Training Experience</td><td><input type="text" name="tte"></td></tr>
            <tr><td>Projects Handled </td><td><input type="text" name="ph"></td></tr>
             <tr><td>Batches Taken</td><td><input type="text" name="bt"></td></tr>
            
           <tr><td>Corporate Batch Experience</td><td> <select name="cbe">
                <option>Yes</option>
                 <option>No</option>
           </select></td></tr>
           <tr><td>Mode handled</td><td> <select name="mh">
                <option>Offline</option>
                 <option>Online</option>
                  <option>Both</option>
           </select></td></tr>
            <tr><TD>Submit The Details</TD><td><input type="Submit" value="SUBMIT"></td></tr>
         </form> 
              
       
    </center>
  <%    
  }
  catch(Exception e){out.println(e);}
%>

            </div>
        </div>
    </div>
</div>
</body>
</html>
     
     


 