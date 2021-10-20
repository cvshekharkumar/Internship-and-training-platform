package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_005f3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("            <a href=\"home.jsp\">Bac<em>k</em></a>\n");
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
      out.write("\n");
      out.write("\n");
      out.write("        <br><br><br><br>\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <form action=\"UploadServlet\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("             <table Id=\"course-table\" width=\"400px\" align=\"center\" border=2>\n");
      out.write("                <tr><td align=\"center\" colspan=\"2\" bgcolor=\"#4CAF50\"><font color=\"#FFFFFF\"><h2>Individual Trainers Form Details</h2></font>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name of Trainer </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"firstname\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td> Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"pas\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td> Experience Industrial</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"lastname\">\n");
      out.write("                    </td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td> Experience Training </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"et\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td> Batches Handled</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"bh\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td> Location </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"loc\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td> Website/ LinkedIn Profile </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"wlp\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td> Phone Number </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"pn\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td> Alternate Number  </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"an\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td> E-Mail Id   </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"emi\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td> Courses    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"cou\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td>Mode handled</td><td> <select name=\"mot\">\n");
      out.write("                <option>Offline</option>\n");
      out.write("                 <option>Online</option>\n");
      out.write("                  <option>Both</option>\n");
      out.write("           </select></td></tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address   </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required=\"\" name=\"adt\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Upload Resume </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"file\" required=\"\" name=\"file\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                   \n");
      out.write("                   <td align=\"center\" colspan=\"2\"><input type=\"submit\" value=\"Submit\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("    </center>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
