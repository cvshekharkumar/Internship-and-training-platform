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
            <li class="active"><a href="DisplayMessages_4.jsp">Home</a></li>
           <li><a href="file-list2_1.jsp">Profile</a></li>
             <li><a href="client3req.jsp">Post Requirement</a></li>
              <li><a href="file-list3_1_1.jsp">Student Filled Form</a></li>
           
            
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
<%@page import="com.servlet.db.DB2"%>
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
                con = DB2.getConnection();
                 String name=(String)session.getAttribute("username");
            String sql = "select * from employee3 where firstname='"+name+"';";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
          
             <tr>
                 <td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Start Ups/Companies and Job Consultants Detail</h2></font>
             </tr>
             <tr>
                 <td>Type(Company/Job Consultant) </td><td><%=rs.getString("firstname")%></td>
             </tr>
              
                 <tr>
                 <td>Password </td><td><%=rs.getString("lastname")%></td>
             </tr>
             <tr>
                 <td>Name of Company </td><td><%=rs.getString("pas")%></td>
             </tr>
              <tr>
                 <td>Founding Year   </td><td><%=rs.getString("fy")%></td>
             </tr>
             <tr>
                 <td>  Contact person  </td><td><%=rs.getString("cp")%></td>
             </tr>
             <tr>
                 <td>Location</td><td><%=rs.getString("loc")%></td>
             </tr>
             <tr>
                 <td>Website</td><td><%=rs.getString("web")%></td>
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
                 <td>Industry/Domain </td><td><%=rs.getString("ido")%></td>
             </tr>
            
             <tr>
                 <td>Address</td><td><%=rs.getString("adt")%></td>
             </tr>
         
             <tr>
                 <td>Upload company document</td><td><%=rs.getString("filename")%></td>
             </tr>
              <tr>
                 <td>Download company document</td><td><a href="DownloadServlet2?fileName=<%=rs.getString("filename")%>">Download</a></td>
             </tr>
           
  
              
            <%
                }
            %>
            
        </table><br>
        
    </center>
            </body>
</html>
