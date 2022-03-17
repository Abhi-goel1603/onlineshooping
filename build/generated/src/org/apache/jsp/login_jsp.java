package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Pack.jdbc;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>login</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("  <title>AdminLTE 2 | Log in</title>\n");
      out.write("  <!-- Tell the browser to be responsive to screen width -->\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("  <!-- Bootstrap 3.3.7 -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"bower_components/bootstrap/dist/css/bootstrap.min.css\">\n");
      out.write("  <!-- Font Awesome -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"bower_components/font-awesome/css/font-awesome.min.css\">\n");
      out.write("  <!-- Ionicons -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"bower_components/Ionicons/css/ionicons.min.css\">\n");
      out.write("  <!-- Theme style -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"dist/css/AdminLTE.min.css\">\n");
      out.write("  <!-- iCheck -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/iCheck/square/blue.css\">\n");
      out.write("\n");
      out.write("  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("  <!--[if lt IE 9]>\n");
      out.write("  <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("  <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("  <![endif]-->\n");
      out.write("\n");
      out.write("  <!-- Google Font -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body class=\"hold-transition login-page\">\n");
      out.write("<div class=\"login-box\">\n");
      out.write("  <div class=\"login-logo\">\n");
      out.write("    <a href=\"../../index2.html\"><b>Admin</b>LTE</a>\n");
      out.write("  </div>\n");
      out.write("  <!-- /.login-logo -->\n");
      out.write("  <div class=\"login-box-body\">\n");
      out.write("    <p class=\"login-box-msg\">Sign in to start your session</p>\n");
      out.write("\n");
      out.write("    <form action=\"login.jsp\" >\n");
      out.write("      <div class=\"form-group has-feedback\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Email\" name=\"uname\">\n");
      out.write("        <span class=\"glyphicon glyphicon-envelope form-control-feedback\"></span>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"form-group has-feedback\">\n");
      out.write("          <input type=\"password\" class=\"form-control\" placeholder=\"Password\" name=\"password\">\n");
      out.write("        <span class=\"glyphicon glyphicon-lock form-control-feedback\"></span>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-xs-8\">\n");
      out.write("          <div class=\"checkbox icheck\">\n");
      out.write("            <label>\n");
      out.write("              <input type=\"checkbox\"> Remember Me\n");
      out.write("            </label>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.col -->\n");
      out.write("        <div class=\"col-xs-4\">\n");
      out.write("            <input type=\"submit\" class=\"btn btn-primary btn-block btn-flat\" name=\"submit\" value=\"submit\"/>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.col -->\n");
      out.write("      </div>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("    <div class=\"social-auth-links text-center\">\n");
      out.write("      <p>- OR -</p>\n");
      out.write("      <a href=\"#\" class=\"btn btn-block btn-social btn-facebook btn-flat\"><i class=\"fa fa-facebook\"></i> Sign in using\n");
      out.write("        Facebook</a>\n");
      out.write("      <a href=\"#\" class=\"btn btn-block btn-social btn-google btn-flat\"><i class=\"fa fa-google-plus\"></i> Sign in using\n");
      out.write("        Google+</a>\n");
      out.write("    </div>\n");
      out.write("    <!-- /.social-auth-links -->\n");
      out.write("\n");
      out.write("    <a href=\"#\">I forgot my password</a><br>\n");
      out.write("    <a href=\"register.html\" class=\"text-center\">Register a new membership</a>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("  <!-- /.login-box-body -->\n");
      out.write("</div>\n");
      out.write("<!-- /.login-box -->\n");
      out.write("\n");
      out.write("<!-- jQuery 3 -->\n");
      out.write("<script src=\"bower_components/jquery/dist/jquery.min.js\"></script>\n");
      out.write("<!-- Bootstrap 3.3.7 -->\n");
      out.write("<script src=\"bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("<!-- iCheck -->\n");
      out.write("<script src=\"plugins/iCheck/icheck.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("  $(function () {\n");
      out.write("    $('input').iCheck({\n");
      out.write("      checkboxClass: 'icheckbox_square-blue',\n");
      out.write("      radioClass: 'iradio_square-blue',\n");
      out.write("      increaseArea: '20%' // optional\n");
      out.write("    });\n");
      out.write("  });\n");
      out.write("</script>\n");
      out.write("</body>\n");

            if (request.getParameterNames().hasMoreElements()) {

     String username = request.getParameter("uname");
            String password = request.getParameter("password");

//            out.println(password);
            //          out.println(username);
            jdbc as = new jdbc();

            try {
                ResultSet rs = as.getdetails(" select * from users where CONTACTNO='" + username + "'and PASSWORD='" + password + "'and ISENABELED='1' ");
                //while (
                boolean Result = rs.next();

                if (Result == false) {
                    
      out.write("\n");
      out.write("                   <h2>Invalid username password</h2>\n");
      out.write("                   ");

                  }else{
                    
                
                
                String ff = rs.getString("USERNAME");
                String ss = rs.getString("CONTACTNO");
                session = request.getSession(true);
                session.setAttribute("name", ff);
                session.setAttribute("contact", ss);
               //
                //session.setMaxInactiveInterval(40);
                
                if(rs.getString("USERTYPE").equalsIgnoreCase("Admin")) {

                    response.sendRedirect("admin.jsp");

                } else if (rs.getString("USERTYPE").equalsIgnoreCase("employee")) {

                    //  RequestDispatcher cv = request.getRequestDispatcher("employee");
                    //cv.include(request, response);
                    response.sendRedirect("employee.jsp");

                } else if (rs.getString("USERTYPE").equalsIgnoreCase("customer")) {

                    response.sendRedirect("index.jsp");
                }

            } }catch (Exception e) {
                out.println(e);
            }
            }
            
    
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
