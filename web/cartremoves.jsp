<%-- 
    Document   : cartremoves
    Created on : Mar 2, 2022, 4:16:45 PM
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
            String serialno = request.getParameter("serialno");
            System.out.println("Item removed : " + serialno);
            String cart = request.getParameter("cart");
            String checkout = request.getParameter("checkout");
            jdbc dc =  new jdbc();
            
            dc.addStudent("update cart set status='R' where srno='"+serialno+"'");
            System.out.println("Item removed : " + serialno);
            if (cart!=null){
                if(cart.equalsIgnoreCase("cart")){
                    response.sendRedirect("Cart.jsp");
                         System.out.println("helooooIF");
                    return ;
                }
            }else{
                response.sendRedirect("checkout.jsp");
                     System.out.println("heloooooelse");
                return ;
            }
            %>
        <h1>Hello World!</h1>
    </body>
</html>
