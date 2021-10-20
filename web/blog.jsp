<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Shekhar's School</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/light-box.css">
        <link rel="stylesheet" href="css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

<body bgcolor="#282828">

    <nav>
        <div class="logo">
            <a href="index.html">hom<em>e</em></a>
        </div>
      <div class="menu-icon">
        <span></span>
      </div>
    </nav>

    <div class="page-heading">
        <div class="container">
            <div class="heading-content">
                <h1>Our <em>Blog</em></h1>
            </div>
        </div>
    </div>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Show</title>
         <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
        </style>

    </head>
    
    <body>
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
                String sql = "SELECT * FROM image_table";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String firstname = rs.getString("firstname");
                    String lastname = rs.getString("lastname");
                    String filename = rs.getString("filename");
                     String cName = rs.getString("cname");
                    String sName = rs.getString("sname");
                    String path = rs.getString("path");
                    String added_date = rs.getString("added_date");
        %>

        
          
        
    <div class="blog-entries">
        <div class="container">
            <div class="col-md-9">
                <div class="blog-posts">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="blog-post">
                                <img src="<%=filename%>" alt="">
                                <div class="text-content">
                                    <span><a href="#"><%=cName%></a> / <a href="#"><%=added_date%></a> / <a href="#"><%=lastname%></a></span>
                                    <h2><%=firstname%></h2>
                                  
                                    <p><textarea STYLE="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 15px; background-color:#282828;"  NAME="filename" rows="10" cols="80" readonly="1" name="message"  placeholder="Messages..."><%=sName%></textarea></p>
                                </div>
                            </div>
                        </div>
                                  
    
                       

                    </div>
                </div>
            </div>
            
                                                 <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
             
        </div>
    </div>


    <footer>
        <div class="container-fluid">
            <div class="col-md-12">
                <p>Copyright &copy; 2019 XASTION TECH PRIVATE LIMITED 
    
    |   Developed by Shekhar.<a rel="nofollow" href="http://www.templatemo.com"></a></p>
            </div>
        </div>
    </footer>



    <!-- Modal -->
    <div id="modal" class="modal">
      <!-- Modal Content -->
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h3 class="header-title">Say hello to <em>Highway</em></h3>
          <div class="close-btn"><img src="img/close_contact.png" alt=""></div>    
        </div>
        <!-- Modal Body -->
        <div class="modal-body">
          <div class="col-md-6 col-md-offset-3">
            <form id="contact" action="" method="post">
                <div class="row">
                    <div class="col-md-12">
                      <fieldset>
                        <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                        <input name="email" type="email" class="form-control" id="email" placeholder="Your email..." required="">
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                        <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required=""></textarea>
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                        <button type="submit" id="form-submit" class="btn">Send Message Now</button>
                      </fieldset>
                    </div>
                </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    

   <section class="overlay-menu">
      <div class="container">
        <div class="row">
          <div class="main-menu">
              <ul>
                  <li>
                      <a href="index.html">Home</a>
                  </li>
               <li>
                      <a href="about.html">About</a>
                  </li>
                    <li>
                      <a href="blog.jsp">View Blogs</a>
                  </li>
                   <li>
                      <a href="index.jsp">Write Blogs</a>
                  </li>
                 
               
              </ul>
              <p>Connect with with us from Anywhere</p>
          </div>
        </div>
      </div>
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>
    
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

  
</body>
</html>