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
            <a href="file-list3.jsp">Bac<em>k</em></a>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>

    <center>
        <c:if test="${requestScope.msg!=null}">
        <h3><c:out value="${requestScope.msg}"></c:out></h3>
        </c:if><br><br>
        <c:if test="${sessionScope.fileName!=null}">
            <c:set var = "file" scope = "session" value = "${sessionScope.fileName}"/>  
        </c:if>
        
    <link rel="stylesheet" href="css.css"/>
              <table Id="course-table" align="center">
               <div id="course-table">
                  <center> <h3>Submission Done Successfully</h3></center>
               </div>
              </table>
     <%response.sendRedirect("mshow_1.jsp");%>
    </center>
    </body>
</html>
