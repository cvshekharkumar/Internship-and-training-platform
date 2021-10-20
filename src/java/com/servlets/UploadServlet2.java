
         


package com.servlets;

import com.servlet.db.DB2;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet(name = "UploadServlet2", urlPatterns = {"/UploadServlet2"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 1000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB
public class UploadServlet2 extends HttpServlet {

    PrintWriter out = null;
    Connection con = null;
    PreparedStatement ps = null;
    HttpSession session = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        try {
           
            out = response.getWriter();
            session = request.getSession(false);
            String folderName = "resources";
            String uploadPath = request.getServletContext().getRealPath("") + File.separator + folderName;
            File dir = new File(uploadPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            Part filePart = request.getPart("file");//Textbox value of name file.
            String firstName = request.getParameter("firstname");//Textbox value of name firstname.
            String pas = request.getParameter("pas");
             String fy = request.getParameter("fy");
              String cp = request.getParameter("cp");
               String loc = request.getParameter("loc");
                String web = request.getParameter("web");
                 String pn = request.getParameter("pn");
                  String an = request.getParameter("an");
                   String emi = request.getParameter("emi");
                    String ido = request.getParameter("ido");
                 
                     String adt = request.getParameter("adt");
            String lastName = request.getParameter("lastname");//Textbox value of name lastname.
            String fileName = filePart.getSubmittedFileName();
            String path = folderName + File.separator + fileName;
            Timestamp added_date = new Timestamp(System.currentTimeMillis());
            System.out.println("fileName: " + fileName);
           
            System.out.println("Name: " + firstName);
            InputStream is = filePart.getInputStream();
            Files.copy(is, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);

            try {
                con = DB2.getConnection();
                System.out.println("connection done");
                String sql = "insert into employee3(firstname,lastname,pas,fy,cp,loc,web,pn,an,emi,ido,adt,filename) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, firstName);
                ps.setString(2, lastName);
                ps.setString(3, pas);
                ps.setString(4, fy);
                ps.setString(5, cp);
                ps.setString(6, loc);
                ps.setString(7, web);
                ps.setString(8, pn);
                ps.setString(9, an);
                ps.setString(10, emi);
                ps.setString(11, ido);
               
                ps.setString(12, adt);
                ps.setString(13, fileName);
                int status = ps.executeUpdate();
                if (status > 0) {
                    session.setAttribute("fileName", fileName);
                    String msg = "" + fileName + " File uploaded successfully...";
                    request.setAttribute("msg", msg);
                    RequestDispatcher rd = request.getRequestDispatcher("/success2.jsp");
                    rd.forward(request, response);
                    System.out.println("File uploaded successfully...");
                    
                }
            } catch (SQLException e) {
                out.println("Exception: " + e);
                System.out.println("Exception1: " + e);
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    out.println(e);
                }
            }

        } catch (IOException | ServletException e) {
            out.println("Exception: " + e);
            System.out.println("Exception2: " + e);
        }
    }

}
