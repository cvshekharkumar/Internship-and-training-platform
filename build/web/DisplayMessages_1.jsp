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
<% 
 String name=(String)session.getAttribute("username");
 if(name==null){
     response.sendRedirect("logout.jsp");
%>

<%}
else{
%>
     <h3><marquee><BR>WELCOME <%=name%></marquee></h3>
      <% }
       %>
 </div>
            </div>
        </div>
    </div>
 </div>
</body>
</html>


