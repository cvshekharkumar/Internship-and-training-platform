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
            <li class="active"><a href="DisplayMessages.jsp">Home</a></li>
           
            <li  class="dropdown"><a href="#">Client Detail</a>
                <div class="dropdown-content">
                <a href="index_1_1_1.jsp">Institutes</a>
                <a href="file-list.jsp">Individual Trainers</a>
                <a href="index_2_1_1.jsp">schools & colleges</a>
                 <a href="file-list2.jsp">Start Ups/Companies and Job Consultants</a>
                  <a href="file-list3_1.jsp">Students</a>
                
                </div>
            </li>
            <li><a href="adminpost.jsp">Post Tender</a></li>
            <li  class="dropdown"><a href="#">View Filled Tender</a>
                <div class="dropdown-content">
                <a href="tenderfilled_1_1.jsp">Based on Rating</a>
                <a href="modehandled.jsp">Based on Online mode handled</a>
                <a href="modehandled_1.jsp">Based on Offline mode  handled</a>
                 <a href="modehandled_2.jsp">Based on Both mode  handled</a>
            <li><a href="tenderfilled_1_1_1.jsp">Mention Rating of Institute/Trainer</a></li> 
            <li  class="dropdown"><a href="#"> Change Status</a>
                <div class="dropdown-content">
                <a href="statusChange.jsp">Of Filled Tenders</a>
                <a href="adminpoststatus.jsp">Of Post Tenders</a>
                </div>
          
             <li  class="dropdown"><a href="#">SubAdmin</a>
                <div class="dropdown-content">
                <a href="viewsubadmin_1_1.jsp">View SubAdmin</a>
                <a href="viewsubadmin.jsp">Add SubAdmin</a>
                </div>
            </li>
            <li  class="dropdown"><a href="#">schools & colleges</a>
                <div class="dropdown-content">
                <a href="index_6_1_1.jsp">posting requirements</a>
                </div>
            </li>
           
       
           
              <li style="float:right"><a href="logout.jsp">Logout</a></li>
        
             </div>   
                
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
       String quer="SELECT * FROM subadmin";
      ResultSet rs = st.executeQuery(quer);
     
%>
         <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
<form method="post" action="viewallcourse.jsp">
    
        
<table Id="course-table" align="center">

<%
 while(rs.next()){    
%>
<tr>
    <tr>
  <td align="center" colspan="6" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Sub Admin<%=rs.getInt("id")%></h2></font>
      </tr>
          <tr>
   
    <td>Name</td>
    <td>passord</td>
    <td>email</td>
     <td>mobile</td>
    <td>city</td>
 </tr> <tr>
     <td><%=rs.getString("Name")%></td>
    <td><%=rs.getString("passord")%></td>
    <td><%=rs.getString("email")%></td>
     <td><%=rs.getInt("mobile")%></td>
    <td><%=rs.getString("city")%></td>
</tr>
<%}%>
</table>
<%
 
}
catch(Exception e){%><link rel="stylesheet" href="css.css"/>
              <table Id="course-table" align="center">
               <div id="course-table">
                  <h2>Invalid Input<a href="viewsubadmin.jsp"><br>Try again</a></h2>
               </div>
              </table><%}
%> 
            
</form>  

            </div>
        </div>
    </div>
</div>
</body>
</html>


 


