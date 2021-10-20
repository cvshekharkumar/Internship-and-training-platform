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
       String quer="SELECT * FROM internship";
      ResultSet rs = st.executeQuery(quer);
     String name=(String)session.getAttribute("username");
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
  <td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>Jobs/Internship Requirement <%=rs.getInt("Id")%></h2></font>
</tr>
<tr>
  <td>Name of Companey </td><td><%=rs.getString("name")%></td>
</tr>
<tr>
  <td>Job Title </td><td><%=rs.getString("jt")%></td>
</tr>
<tr>
  <td>Requirement (Job/Internship)</td><td><%=rs.getString("req")%></td>
</tr>
<tr>
  <td>Qualification</td><td><%=rs.getString("qua")%></td>
</tr>
<tr>
  <td>Experience</td><td><%=rs.getString("exp")%></td>
</tr>
<tr>
  <td>Location</td><td><%=rs.getString("loc")%></td>
</tr>
<tr>
  <td>Salary/Stipend</td><td><%=rs.getString("sal")%></td>
</tr>

<tr>
    <td>Job description</td><td><textarea STYLE=" font-family: Verdana;  font-size: 12px; ;"  NAME="Question" rows="10" cols="27" readonly="1"  placeholder="Messages..."> <%=rs.getString("jd")%>   </textarea></td>
 
</tr>
<tr>
  <td align="center" colspan="2" ><a href="index_5.jsp?id=<%=rs.getString("name")%>">Apply</a></td>
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


 


