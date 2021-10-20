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
        <div class="logo">
            <a href="index.html">Hom<em>e</em></a>
            <span style="padding-left:50px">  <a href="client3req_1_1.jsp"><em>Requirements</em></a></span>
            
        </div>
      
    </nav>

    <div class="page-heading">
        <div class="container">
            <div class="heading-content">
                <h1>Xastion Tech  <em>Private Limited</em></h1>
            </div>
        </div>
    </div>
<div id="divid">
    <div class="more-about-us">
        <div class="container">
            <div class="col-md-10 col-md-offset-3">
 <div id="course-table">


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
       String names=(String)session.getAttribute("username");
       String passor=(String)session.getAttribute("pasord");
       String name=request.getParameter("id");
     
      
   %>  
   <center>
      
        <form action="UploadServlet3" method="post" enctype="multipart/form-data">
             <table Id="course-table" width="400px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Student Details</h2></font>
                   
                </tr>
                <tr>
                    <td>Name of Company(Applying)</td>
                    <td>
                        <input type="text" required="" value="<%=name%>" name="firstname">
                    </td>
                </tr>
                <tr>
                    <td>Name of Applicant</td>
                    <td>
                        <input type="text" required="" name="lastname">
                    </td>
                </tr>
                 <tr>
                    <td>E-Mail Id of Applicant</td>
                    <td>
                        <input type="text" required="" name="mob">
                    </td>
                </tr> 
                
                <tr>
                    <td>Upload Resume</td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
                <tr>
                   
                   <td align="center" colspan="2"><input type="submit" value="Submit"></td>
                </tr>
            </table>

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

