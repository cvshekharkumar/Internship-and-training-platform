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
       String name=(String)session.getAttribute("username");
       String passor=(String)session.getAttribute("pasord");
       String sql = "select * from employee1 where firstname='"+name+"' and pas='"+passor+"';";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
          
             <tr>
                 <td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Individual Trainers Detail</h2></font>
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
      
    </center>
            </body>
</html>
