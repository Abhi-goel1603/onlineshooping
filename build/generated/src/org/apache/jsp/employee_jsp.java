package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Pack.jdbc;
import java.sql.SQLException;
import java.io.FileOutputStream;
import java.io.File;
import java.io.InputStream;
import java.nio.file.Paths;

public final class employee_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>EMPLOYEE</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background-image: url('productpage.jpg');\n");
      out.write("                background-repeat: no-repeat;                     \n");
      out.write("                background-attachment: fixed;\n");
      out.write("                background-size:cover;\n");
      out.write("            }\n");
      out.write("            ul {\n");
      out.write("                list-style-type: none;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                overflow: hidden;\n");
      out.write("                background-color: #333;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li {\n");
      out.write("                float: right;\n");
      out.write("                display: block;\n");
      out.write("                color: white;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 14px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a {\n");
      out.write("                display: block;\n");
      out.write("                color: white;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 14px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a:hover {\n");
      out.write("                background-color: #111;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

          session = request.getSession(false);

            String ss = (String) session.getAttribute("name");
            if (ss==null) {
                response.sendRedirect("login.jsp");
            } 
            String df = (String) session.getAttribute("contact");

        
      out.write("\n");
      out.write("        <ul><li>NAME-  ");
      out.print(ss);
      out.write(" </li><li>ID- ");
      out.print( df);
      out.write(" </li>\n");
      out.write("            <li><a href='editdetails.jsp'>EDIT</a></li>\n");
      out.write("            <li><a href='logout.jsp'>LOGOUT</a></li>\n");
      out.write("            <li><a class=\"active\" href=\"index.jsp\">Home</a></li>\n");
      out.write("            <li><a  href=\"showproduct.jsp\">SHOW </a></li>\n");
      out.write("        </ul>\n");
      out.write("            \n");
      out.write("\n");
      out.write("\n");
      out.write("            <form name=\"product\" action=\"product\" enctype=\"multipart/form-data\" method=\"POST\">\n");
      out.write("            <table border=\"2\" cellspacing=\"30\" cellpadding=\"10\">\n");
      out.write("                <thead>\n");
      out.write("ADD PRODUCT DETAILS\n");
      out.write("     </thead>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <th>              PRODUCT ID:\n");
      out.write("                    </th>\n");
      out.write("                    <td>      <input type=\"text\" name=\"productid\" value=\"\" size=\"50\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>                 PRODUCT NAME:\n");
      out.write("                    </th>\n");
      out.write("                    <td>            <input type=\"text\" name=\"productname\" value=\"\" size=\"50\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>            PRODUCT CATEGORY:\n");
      out.write("                    </th>\n");
      out.write("                    <td>            <select name=\"category\" />\n");
      out.write("                    <option value=\"\"/>\n");
      out.write("                           \n");
      out.write("                        \n");
      out.write("                    </td>\n");
      out.write("                    <td><a href=\"addbrand.jsp\">ADD NEW CATEGORY AND BRAND</a></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>            PRODUCT SIZE:\n");
      out.write("                    </th>\n");
      out.write("                    <td>            <input type=\"text\" name=\"size\" value=\"\" size=\"50\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>            PRODUCT PRICE:\n");
      out.write("                    </th>\n");
      out.write("                    <td>            <input type=\"text\" name=\"price\" value=\"\" size=\"50\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>            PRODUCT QUANTITY:\n");
      out.write("                    </th>\n");
      out.write("                    <td>            <input type=\"text\" name=\"quantity\" value=\"\" size=\"50\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>            PRODUCT BRANDNAME\n");
      out.write("                    </th>\n");
      out.write("                    <td>            <select name=\"brandname\" />\n");
      out.write("                    <option value=\"\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>            PRODUCT IMAGE:\n");
      out.write("                    </th>\n");
      out.write("                    <td>            <input type=\"file\" name=\"image\" />  \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><input type=\"submit\" value=\"ADD PRODUCT\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("\n");
      out.write("</html>\n");
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
