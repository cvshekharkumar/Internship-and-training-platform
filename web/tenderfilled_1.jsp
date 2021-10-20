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
            <li class="active"><a href="DisplayMessages_1.jsp">Home</a></li>
           
            <li><a href="index_1_1_1_1.jsp">Profile</a></li>
            <li><a href="adminpost_1_1.jsp">Tender Notification</a></li>
            <li><a href="tenderfilled.jsp">Fill Tender</a></li>
            <li><a href="history.jsp">History</a></li>
             <li><a href="tenderfilled_1_1_2.jsp">Status</a></li>
            
           
         
             
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
      String noit=request.getParameter("noit");
      String tn=request.getParameter("tn");
      String tpl=request.getParameter("tpl");
   
      String cou=request.getParameter("cou");
      String dur=request.getParameter("dur");
      String loc=request.getParameter("loc");
      String mot=request.getParameter("mot");
      String fps=request.getParameter("fps");
      String tt=request.getParameter("tt");
      String tie=request.getParameter("tie");
      String tte=request.getParameter("tte");
      String ph=request.getParameter("ph");
      String bt=request.getParameter("bt");
      String cbe=request.getParameter("cbe");
      String mh=request.getParameter("mh");
  
      String query="insert into tenderfilled(noit,tn,tpl,rat,cou,dur,loc,mot,fps,tt,tie,tte,ph,bt,cbe,mh,sta)values('"+noit+"','"+tn+"','"+tpl+"','','"+cou+"','"+dur+"','"+loc+"','"+mot+"','"+fps+"','"+tt+"','"+tie+"','"+tte+"','"+ph+"','"+bt+"','"+cbe+"','"+mh+"','Pending')";
      int result=st.executeUpdate(query);
       String quer="SELECT * FROM tenderfilled";
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


 


