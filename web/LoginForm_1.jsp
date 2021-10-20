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
            <li class="active"><a href="index.html">Home</a></li>
               <li style="float:right"><img src="photo/logo.png"></li>       </ul>
        </div>
      
    </nav>

    <div class="page-heading">
        <div class="container">
            <div class="heading-content">
                <h1>STUDY <em>Point</em></h1>
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
 <body background="photo/r.jpg">
<!DOCTYPE html>
<%
  Connection conn = null;
  String url="jdbc:mysql://localhost:3306/";
  String dbName ="database2";
  String  driver="com.mysql.jdbc.Driver";
  String userName="root";
  String password="";
  Statement st;
  Statement ust;
  Statement sut;
  Statement sit;
  Statement syt;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement();
      ust=conn.createStatement();
      sut=conn.createStatement();
      sit=conn.createStatement();
      syt=conn.createStatement();
       String quer="SELECT * FROM Institutes";
      ResultSet rs = ust.executeQuery(quer);
      String que="SELECT * FROM employee1";
      ResultSet rst = st.executeQuery(que);
      String qer="SELECT * FROM employee2";
      ResultSet rsr = sut.executeQuery(qer);
      String qu="SELECT * FROM employee3";
      ResultSet rsq = sit.executeQuery(qu);
      String quy="SELECT * FROM subadmin";
      ResultSet rq = syt.executeQuery(quy);
      
   %> 
 <%--
CourseMaster(Nam,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>


<%
  String name=request.getParameter("name");
  String pwd=request.getParameter("password");
  while(rq.next())
       {
          
          String nam=rq.getString("name");
          String passord=rq.getString("passord");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                session.setAttribute("pasord",passord);
                response.sendRedirect("DisplayMessages.jsp"); 
             }
          
       }
   while(rs.next())
       {
          
          String nam=rs.getString("noi");
          String passord=rs.getString("pss");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                session.setAttribute("pasord",passord);
                response.sendRedirect("DisplayMessages_1.jsp"); 
             }
          
       }
   while(rst.next())
       {
          
          String nam=rst.getString("firstname");
          String passord=rst.getString("pas");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                session.setAttribute("pasord",passord);
                response.sendRedirect("DisplayMessages_2.jsp"); 
             }
       }
   while(rsr.next())
       {
          
          String nam=rsr.getString("noi");
          String passord=rsr.getString("pss");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                session.setAttribute("pasord",passord);
                response.sendRedirect("DisplayMessages_3.jsp"); 
             }
          
       }
   while(rsq.next())
       {
          
          String nam=rsq.getString("firstname");
          String passord=rsq.getString("lastname");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                session.setAttribute("passord",passord);
                response.sendRedirect("DisplayMessages_4.jsp"); 
             }
       }
  if(name.equals("admin")&& pwd.equals("123"))
  {
      session.setAttribute("username",name);
      response.sendRedirect("DisplayMessages.jsp"); 
  }
  else{
      %>
      <link rel="stylesheet" href="css.css"/>
      
      <%
      
%>
 </body>
<%  
  }

%>

   <%    
  }
  catch(Exception e){
%>
<table Id="course-table" align="center">
          <div id="course-table">
              <H2> Incorrect username and password<a href="home.jsp"><br>Try again</a></H2>
          </div>
      </table>


<%
}
%>

            </div>
        </div>
    </div>
</div>
</body>
</html>

