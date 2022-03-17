/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package employeepack;

import Pack.jdbc;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50
)

public class product extends HttpServlet {
//public static final String UPLOAD_DIR = "images";
    // public String dbFileName = "";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("productid");
        String pname = request.getParameter("productname");
       // String bname = request.getParameter("brandname");
        String size = request.getParameter("size");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        String category = request.getParameter("category");
        
        String b = "", c = "";
        
        b = category.substring(category.indexOf(",") +1 );
        c = category.substring(0,category.indexOf(",") -1 );
        
        
        
        Part filePart = request.getPart("image");
        System.out.println("hello");
      
        HttpSession session = request.getSession(false);

        String cont = (String) session.getAttribute("contact");
        
        if (cont == null) {
            response.sendRedirect("login.html");
        } else {
            String fileName
                    = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

            InputStream inputStream = filePart.getInputStream();

            String uploadPath = getServletContext().getRealPath("")
                    + File.separator + "image";

            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            System.out.println("============" + uploadPath);
            System.out.println("++++++++++++++" + fileName);

            FileOutputStream outputStream = new FileOutputStream(uploadPath
                    + File.separator + fileName);
            int read = 0;
            final byte[] bytes = new byte[1024];
            while ((read = inputStream.read(bytes)) != -1) {
                outputStream.write(bytes, 0, read);
            }
            System.out.println("query not run");

            try {
                jdbc as = new jdbc();
                as.addStudent("insert into productdetails values('" + id
                        + "','" + pname + "','"+b+"','" + size
                        + "','" + price + "','" + quantity + "','"
                        +c+ "','" + fileName + "','" + cont + "')");
                //System.out.println("submited");
                response.sendRedirect("employee.jsp");
            System.out.println("query not run");

            } catch (SQLException | ClassNotFoundException e) {
                System.out.println(e);
            }
        }
        out.println("Done");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
