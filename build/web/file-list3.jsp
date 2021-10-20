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
                <a href="profile_2.jsp">Institutes</a>
                <a href="profile_5.jsp">Individual Trainers</a>
                <a href="profile_7.jsp">schools & colleges</a>
                 <a href="profile_7.jsp">Start Ups/Companies and Job Consultants</a>
                  <a href="profile_7.jsp">Students</a>
                
                </div>
            </li>
            <li><a href="profile_1.jsp">Post Tender</a></li>
            <li  class="dropdown"><a href="#">View Filled Tender</a>
                <div class="dropdown-content">
                <a href="profile_2.jsp">Based on Rating</a>
                <a href="profile_5.jsp">Based on Duration</a>
                <a href="profile_7.jsp">Based on mode handled</a>
                 <a href="profile_7.jsp">Based on Corporate Batch Experience</a>
                 
                
                </div>
            </li>
            <li  class="dropdown"><a href="#"> Blog</a>
                <div class="dropdown-content">
                <a href="index.jsp">Write Blog</a>
                <a href="blog.jsp">View Blog</a>
                </div>
            </li>
    
             <li  class="dropdown"><a href="#"> Mail</a>
                <div class="dropdown-content">
                <a href="index1.jsp">View Mail</a>
                <a href="blog1.jsp">Send Mail</a>
                </div>
            </li>
             
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
<%@page import="com.servlet.db.DB3"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
        </style>


       
    <center>
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
       <table Id="course-table" width="400px" align="center" border=2>
       
            <%
                con = DB3.getConnection();
            String sql = "select * from employee4";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
          
             <tr>
                 <td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Student <%=rs.getInt("Id")%></h2></font>
             </tr>
             <tr>
                 <td>Name of Company(Applying)</td><td><%=rs.getString("firstname")%></td>
             </tr>
                 <tr>
                 <td>Name of Applicant </td><td><%=rs.getString("lastname")%></td>
             </tr>
             <tr>
                 <td>E-Mail Id of Applicant </td><td><%=rs.getString("mob")%></td>
             </tr>
             <tr>
                 <td>Upload Resume</td><td><%=rs.getString("filename")%></td>
             </tr>
              <tr>
                 <td>Download Resume</td><td><a href="DownloadServlet3?fileName=<%=rs.getString("filename")%>">Download</a></td>
             </tr>
           
  
              
            <%
                }
            %>
            
        </table><br>

    </center>
            </body>
</html>
