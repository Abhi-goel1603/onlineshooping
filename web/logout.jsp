<%-- 
    Document   : logout
    Created on : Feb 11, 2022, 11:57:50 AM
    Author     : sapna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <%
            
            session = request.getSession(false);
            
             if(session==null){
    response.sendRedirect("login.jsp");
 }

            session.invalidate();
            response.sendRedirect("login.jsp");
            %>
    </body>
</html>
