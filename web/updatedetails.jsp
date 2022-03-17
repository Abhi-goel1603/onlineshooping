<%-- 
    Document   : updatedetails
    Created on : Feb 11, 2022, 11:28:54 AM
    Author     : sapna
--%>

<%@page import="Pack.jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE DEATILS</title>
    </head>
    <body>
        <%
            
                  String contactno = request.getParameter("Contactno");
            String username = request.getParameter("uname");
            String password = request.getParameter("password");
            jdbc as = new jdbc();
            System.out.println("no3");
            out.println(contactno);
                        out.println(username);
            out.println(password);

            try {
                as.addStudent("update users set USERNAME='" + username + "',PASSWORD='" + password + "'where CONTACTNO='"+contactno+"' ");
                out.println("submit");
                
                session = request.getSession();
                if (session == null) {
                    response.sendRedirect("login.jsp");
                }else{
                
                session.setAttribute("name", username);
                session.setAttribute("contact", contactno);
                
              
                response.sendRedirect("editdetails.jsp");
                }
     // response.sendRedirect("editdetails.jsp");
            } catch (Exception e) {
                out.println(e);
            }
          
            %>
    </body>
</html>
