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
<% 
   String user =(String)session.getAttribute("username");
   if(user==null){
%>
<form method="post" action="LoginForm_1.jsp">
    
         <table Id="course-table" align="center">
             
             <tr>
                 <td rowspan="4" align="center" ><img src="photo/login.png"></td>
               
            </tr>
             <tr>
                <td>Name:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password"></td>
            </tr>
             <tr>
                 <td colspan="2" align="center" ><input type="submit" value="LOGIN"></td>
               
            </tr>
            
        </table>
           <center>   <h4> Are you New Institute Trainer ? <a href="index_1.jsp">Create an account</a></h4></center>
           <center>   <h4> Are you New individual Trainer ? <a href="index_3.jsp">Create an account</a></h4></center>
            <center>   <h4> Are you  New School/Colleges? <a href="index_2.jsp">Create an account</a></h4></center>
             <center>   <h4> Are you New Start Ups/Companies/Job Consultants? <a href="index_4.jsp">Create an account</a></h4></center>
            
</form>

<%
  }
else{
  response.sendRedirect("DisplayMessages_3.jsp");
}
%>

 </div>
</div>
 </body>
 </html>