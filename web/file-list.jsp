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
<%@page import="com.servlet.db.DB"%>
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
                con = DB.getConnection();
            String sql = "select * from employee1";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
          
             <tr>
                 <td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Individual Trainers <%=rs.getInt("Id")%></h2></font>
             </tr>
             <tr>
                 <td>Name of Trainer </td><td><%=rs.getString("firstname")%></td>
             </tr>
              <tr>
                 <td>Password </td><td><%=rs.getString("pas")%></td>
             </tr>
             <tr>
                 <td>Experience Industrial </td><td><%=rs.getString("lastname")%></td>
             </tr>
              <tr>
                 <td>Experience Training </td><td><%=rs.getString("et")%></td>
             </tr>
             <tr>
                 <td>Batches Handled</td><td><%=rs.getString("bh")%></td>
             </tr>
             <tr>
                 <td>Location</td><td><%=rs.getString("loc")%></td>
             </tr>
             <tr>
                 <td>Website/ LinkedIn Profile</td><td><%=rs.getString("wlp")%></td>
             </tr>
               <tr>
                 <td>Phone Number</td><td><%=rs.getString("pn")%></td>
             </tr>
             <tr>
                 <td>Alternate Number</td><td><%=rs.getString("an")%></td>
             </tr>
              <tr>
                 <td>E-Mail Id</td><td><%=rs.getString("emi")%></td>
             </tr>
             <tr>
                 <td>Courses</td><td><%=rs.getString("cou")%></td>
             </tr>
              <tr>
                 <td>Mode of Training (Offline/Online/Both)</td><td><%=rs.getString("mot")%></td>
             </tr>
             <tr>
                 <td>Address</td><td><%=rs.getString("adt")%></td>
             </tr>
             <tr>
                 <td>Upload Resume</td><td><%=rs.getString("filename")%></td>
             </tr>
              <tr>
                 <td>Download Resume</td><td><a href="DownloadServlet?fileName=<%=rs.getString("filename")%>">Download</a></td>
             </tr>
           
  
              
            <%
                }
            %>
            
        </table><br>
        <a href="index_3.jsp">Home</a>
    </center>
            </body>
</html>
