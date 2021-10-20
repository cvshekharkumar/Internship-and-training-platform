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
            <li class="active"><a href="DisplayMessages_2.jsp">Home</a></li>
           
            <li><a href="file-list_1.jsp">Profile</a></li>
            <li><a href="adminpost_1_1_2.jsp">Tender Notification</a></li>
            <li><a href="tenderfilled_3.jsp">Fill Tender</a></li>
            <li><a href="history_1.jsp">History</a></li>
             <li><a href="tenderfilled_1_1_2_1.jsp">Status</a></li>
            
           
         
             
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
       String quer="SELECT * FROM tenderfilled where noit ='"+name+"';";
      ResultSet rs = st.executeQuery(quer);
    
%>
         <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
<form method="post" action="viewallcourse.jsp">
   
        
<table Id="course-table" width="400px" align="center" border=2>

<%
 while(rs.next()){    
%>
<tr>
  <td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Tender Detail</h2></font>
</tr>
<tr>
  <td>Name of Institute/Trainer </td><td><%=rs.getString("noit")%></td>
</tr>
<tr>
  <td>Trainer Name </td><td><%=rs.getString("tn")%></td>
</tr>
<tr>
  <td>Trainer Profile link</td><td><%=rs.getString("tpl")%></td>
</tr>
<tr>
  <td>Course </td><td><%=rs.getString("cou")%></td>
</tr>
<tr>
  <td>Duration</td><td><%=rs.getString("dur")%></td>
</tr>
<tr>
  <td>Location  </td><td><%=rs.getString("loc")%></td>
</tr>
<tr>
  <td>Mode of Training </td><td><%=rs.getString("mot")%></td>
</tr>
<tr>
  <td>Fee per student </td><td><%=rs.getString("fps")%></td>
</tr>
<tr>
  <td>Trainer Type (Individual/Institute) </td><td><%=rs.getString("tt")%></td>
</tr>
<tr>
  <td>Trainer Industry Experience </td><td><%=rs.getString("tie")%></td>
</tr>
<tr>
  <td>Trainer Training Experience</td><td><%=rs.getString("tte")%></td>
</tr>
<tr>
  <td>Projects Handled </td><td><%=rs.getString("ph")%></td>
</tr>
<tr>
  <td> Batches Taken</td><td><%=rs.getString("bt")%></td>
</tr>
<tr>
  <td> Corporate Batch Experience (Yes/No)  </td><td><%=rs.getString("cbe")%></td>
</tr>
<tr>
  <td>Mode handled (Offline/Online/Both)</td><td><%=rs.getString("mh")%></td>
</tr>
<tr>
  <td>Status</td><td><%=rs.getString("sta")%></td>
</tr>

<%}%>
</table>
<%
 
}
catch(Exception e){out.println(e);}
%> 
            
</form>  

            </div>
        </div>
    </div>
</div>
</body>
</html>


 


