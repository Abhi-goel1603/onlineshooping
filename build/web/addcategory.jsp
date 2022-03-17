<%-- 
    Document   : addcategory
    Created on : Mar 10, 2022, 4:57:09 PM
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
        <form name="add catregory" action="addcategory.jsp">
            <table border="2" cellspacing="30" cellpadding="10">
                 <tbody>
                     <tr>
                         ADD CATEGORRY
                         <td><input type="text" name="addcategory" value=""/></td>
                     </tr>
                     <tr>
                         <td>
                             <input type="submit" value="ADD CATEGORY" name="add category" />
                         </td>
                     </tr>
        </form>
                     <%
                         jdbc ss = new jdbc();
                                 
                         if(request.getParameterNames().hasMoreElements()){
                             String category= request.getParameter("addcategory");
                             ss.addStudent("insert into category(cname) values('"+category+"')");
                             response.sendRedirect("addbrand.jsp");
                         }
                         %>
    </body>
</html>
