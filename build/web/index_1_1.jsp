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
            <a href="home.jsp">Log<em>in</em></a>
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
      String noi=request.getParameter("noi");
      String pss=request.getParameter("pss");
      String fy=request.getParameter("fy");
      String cp=request.getParameter("cp");
      String loc=request.getParameter("loc");
      String web=request.getParameter("web");
      String pn=request.getParameter("pn");
      String an=request.getParameter("an");
      String emi=request.getParameter("emi");
      String co=request.getParameter("co");
      String nots=request.getParameter("nots");
      String mot=request.getParameter("mot");
      String adt=request.getParameter("adt");
      String query="insert into Institutes(noi,pss,fy,cp,loc,web,pn,an,emi,co,nots,mot,adt)values('"+noi+"','"+pss+"','"+fy+"','"+cp+"','"+loc+"','"+web+"','"+pn+"','"+an+"','"+emi+"','"+co+"','"+nots+"','"+mot+"','"+adt+"')";
      int result=st.executeUpdate(query);
       String quer="SELECT * FROM Institutes";
      ResultSet rs = st.executeQuery(quer);
    
%>
         <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
<link rel="stylesheet" href="css.css"/>
              <table Id="course-table" align="center">
               <div id="course-table">
                  <center> <h3>Submission Done Successfully</h3></center>
               </div>
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


 


