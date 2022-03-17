<%-- 
    Document   : login
    Created on : Feb 7, 2022, 5:07:17 PM
    Author     : sapna
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Pack.jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    </head>
    <body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>Admin</b>LTE</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

    <form action="login.jsp" >
      <div class="form-group has-feedback">
          <input type="text" class="form-control" placeholder="Email" name="uname">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
          <input type="password" class="form-control" placeholder="Password" name="password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
            <input type="submit" class="btn btn-primary btn-block btn-flat" name="submit" value="submit"/>
        </div>
        <!-- /.col -->
      </div>
    </form>

    <div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
        Google+</a>
    </div>
    <!-- /.social-auth-links -->

    <a href="#">I forgot my password</a><br>
    <a href="register.html" class="text-center">Register a new membership</a>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
<%
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
                    %>
                   <h2>Invalid username password</h2>
                   <%
                  }else{
                    
                
                
                String ff = rs.getString("USERNAME");
                String ss = rs.getString("CONTACTNO");
                session = request.getSession(true);
                session.setAttribute("name", ff);
                session.setAttribute("contact", ss);
               //
                session.setMaxInactiveInterval(500);
                
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
            
    %>
</html>
