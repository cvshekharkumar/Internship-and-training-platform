
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Timestamp;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/FileUploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

public class FileUploadServlet extends HttpServlet {
  

    public static final String UPLOAD_DIR = "images";
    public String dbFileName = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String id=request.getParameter("id");
        
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String cName = request.getParameter("cname");
        String sName = request.getParameter("sname");
        Part part = request.getPart("file");//
        String fileName = extractFileName(part);//file name
        Timestamp added_date = new Timestamp(System.currentTimeMillis());

      
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
        System.out.println("applicationPath:" + applicationPath);
        File fileUploadDirectory = new File(uploadPath);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }
        String savePath = uploadPath + File.separator + fileName;
        System.out.println("savePath: " + savePath);
        String sRootPath = new File(savePath).getAbsolutePath();
        System.out.println("sRootPath: " + sRootPath);
        part.write(savePath + File.separator);
        File fileSaveDir1 = new File(savePath);
     
        dbFileName = UPLOAD_DIR + File.separator + fileName;
        part.write(savePath + File.separator);
      
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database2", "root", "");
            PreparedStatement pst = con.prepareStatement("insert into image_table values(?,?,?,?,?,?,?,?)");
            pst.setString(1, id);
            pst.setString(2, cName); 
            pst.setString(3, firstName);
            pst.setString(4, lastName);
            pst.setString(5, sName);         
            pst.setString(6, dbFileName);
            pst.setString(7, savePath);
            pst.setTimestamp(8, added_date);
            pst.executeUpdate();
          
            out.println("<body bgcolor=\"#282828\">");
             out.println("<html>\n" +
"    <head>\n" +
"        <meta charset=\"utf-8\">\n" +
"        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n" +
"        <title>Shekhar's school</title>\n" +
"        <meta name=\"description\" content=\"\">\n" +
"        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
"        <link rel=\"stylesheet\" href=\"css.css\"/>\n" +
"        <link rel=\"stylesheet\" href=\"css/templatemo-style_1.css\">\n" +
"    </head>\n" +
"\n" +
"<body bgcolor=\"#282828\">\n" +
"<script language=\"javascript\">\n" +
"function PrintMe(DivID) {\n" +
"var disp_setting=\"toolbar=yes,location=no,\";\n" +
"disp_setting+=\"directories=yes,menubar=yes,\";\n" +
"disp_setting+=\"scrollbars=yes,width=650, height=600, left=100, top=25\";\n" +
"   var content_vlue = document.getElementById(DivID).innerHTML;\n" +
"   var docprint=window.open(\"\",\"\",disp_setting);\n" +
"   docprint.document.open();\n" +
"   docprint.document.write('<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"');\n" +
"   docprint.document.write('\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">');\n" +
"   docprint.document.write('<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\">');\n" +
"   docprint.document.write('<head><title>shekhars_school</title>');\n" +
"   docprint.document.write('<style type=\"text/css\">body{ margin:0px;');\n" +
"   docprint.document.write('font-family:verdana,Arial;color:#000;');\n" +
"   docprint.document.write('font-family:Verdana, Geneva, sans-serif; font-size:12px;}');\n" +
"   docprint.document.write('a{color:#000;text-decoration:none;} </style>');\n" +
"   docprint.document.write('</head><body onLoad=\"self.print()\"><center>');\n" +
"   docprint.document.write(content_vlue);\n" +
"   docprint.document.write('</center></body></html>');\n" +
"   docprint.document.close();\n" +
"   docprint.focus();\n" +
"}\n" +
"</script>\n" +
"      <nav>\n" +
"        <div class=\"logo\">\n" +
"            <a href=\"index.html\">Hom<em>e</em></a>\n" +
"        </div>\n" +
"    </nav>\n" +
"    <div class=\"page-heading\">\n" +
"        <div class=\"container\">\n" +
"            <div class=\"heading-content\">\n" +
"                <h1>XASTION TECH <em>PRIVATE LIMITED</em></h1>\n" +
"            </div>\n" +
"        </div>\n" +
"    </div>");
               out.println("<center><font color=\"#FFFFFF\"><h3>Submission Done Succesfully......</h3></font></center>");
            out.println("<center><a href='blog.jsp?id=" + id + "'><h3><font color=\"#7CFC00\">Display</font></h3></a></center>");
         response.sendRedirect("blog.jsp");
        } catch (Exception e) {
            out.println(e);
        }

    }
    
    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
