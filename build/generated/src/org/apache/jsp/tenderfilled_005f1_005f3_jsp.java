package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;

public final class tenderfilled_005f1_005f3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <title>Shekhar's school</title>\n");
      out.write("          <style>\n");
      out.write("            tr,td,th{\n");
      out.write("                padding: 20px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/templatemo-style_1.css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("<body background=\"photo/r.jpg\">\n");
      out.write("\n");
      out.write("      \n");
      out.write("   <nav>\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <a href=\"home.jsp\">Log<em>in</em></a>\n");
      out.write("        </div>\n");
      out.write("      \n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <div class=\"page-heading\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"heading-content\">\n");
      out.write("                <h1>Xastion Tech  <em>Private Limited</em></h1>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("<div id=\"divid\">\n");
      out.write("    <div class=\"more-about-us\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"col-md-10 col-md-offset-3\">\n");
      out.write(" <div id=\"course-table\">\n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

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
    

      out.write("\n");
      out.write("         ");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"css.css\"/>\n");
      out.write("              <table Id=\"course-table\" align=\"center\">\n");
      out.write("               <div id=\"course-table\">\n");
      out.write("                  <center> <h3>Submission Done Successfully</h3></center>\n");
      out.write("               </div>\n");
      out.write("              </table>\n");

 
}
catch(Exception e){out.println(e);}

      out.write(" \n");
      out.write("            \n");
      out.write("</form>  \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
