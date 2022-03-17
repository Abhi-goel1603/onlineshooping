<%-- 
    Document   : orderadd
    Created on : Mar 5, 2022, 5:22:53 PM
    Author     : sapna
--%>

<%@page import="Pack.jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            jdbc db = new jdbc();
            String custid=(String)session.getAttribute("contact");
            String addid = request.getParameter("addid");
            String paytype = request.getParameter("paytype");
            System.out.println(addid);
              System.out.println(custid);
                System.out.println(paytype);
            db.placeorder(custid, addid, paytype);
            response.sendRedirect("orderdetails.jsp");
            
            %>
        <h1>Hello World!</h1>
    </body>
</html>
