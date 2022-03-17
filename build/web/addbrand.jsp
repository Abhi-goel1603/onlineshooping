<%-- 
    Document   : addbrand
    Created on : Mar 10, 2022, 4:58:50 PM
    Author     : sapna
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Pack.jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    jdbc sd = new jdbc();
    ResultSet ss = sd.getdetails("select * from category");
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="addbrand" action="addbrand.jsp">
             <table border="2" cellspacing="30" cellpadding="10">
                 <tbody>
                 <tr>
                     CATEGORY
                     <td><select name="category"/>
                     <% while(ss.next()){%>
                     <option value="<%=ss.getString("cname")%>"><%=ss.getString("cname")%></option>
                     <%}%>
</td>

                     <td><a href="addcategory.jsp">ADD CATEGORY</a></td>
                 </tr>
                 <tr>
                     ADD BRAND
                     <td><input type="text" name="brandname" value="" size="40"/></td>
                 </tr>
                 <tr>
                     <td>
                         <input type="submit" value="ADD BRAND " name="add brand" />
                 </tr>
                 <tr><td><a href="employee.jsp">BACK</a></td></tr>
</tbody>
             </table>
        </form>
<%
                     if(request.getParameterNames().hasMoreElements()){
                             String brandname= request.getParameter("brandname");
                               String category = request.getParameter("category");
                             sd.addStudent("insert into brand(bname,cname) values('"+brandname+"','"+category+"')");
                             response.sendRedirect("addbrand.jsp");
                         }
                         %>
    </body>
</html>
