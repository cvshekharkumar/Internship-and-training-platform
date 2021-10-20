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
  Statement stt;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement();
      stt=conn.createStatement();
       String name=(String)session.getAttribute("username");
      String quer="select count(noit) from tenderfilled where noit='"+name+"';";
      ResultSet rs = stt.executeQuery(quer);
      String que="select count(noit) from tenderfilled where sta='assigned' and noit='"+name+"';";
      ResultSet r = st.executeQuery(que);
     
     
      
   %>  
   <center>
      
         <form method="post" action="tenderfilled_1.jsp"> 
         <table Id="course-table" width="400px" align="center" border=2>
                <tr><td align="center" colspan="2" bgcolor="#4CAF50"><font color="#FFFFFF"><h2>History Detail</h2></font>
                    
                </tr>
          <tr><td>Number of total Application Applied</td><td><% while(rs.next()){ %><%=rs.getString("count(noit)")%><%  }  %></td></tr>
           <tr><td>Number of get Selected for job</td><td><% while(r.next()){ %><%=r.getString("count(noit)")%><%  }  %></td></tr>
      
       
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
     
     


 