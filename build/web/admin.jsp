<%-- 
    Document   : admin
    Created on : Feb 7, 2022, 5:24:11 PM
    Author     : sapna
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Pack.jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html charset=UTF-8">
        <title>admin</title>
    </head>
    
        <%
            jdbc ss = new jdbc();
            try {
                ResultSet rs = ss.getdetails("select * from users where USERTYPE='employee'");
                %>
        
                <body background='white-abstract-background-graphic-vector-21584466.jpg'>
                        
                       
                <h1>EMPLOYEE DATA</h1>
                <div>
                <table border='2' width='40%'>
                <thead>
                <tr>
                <caption>Employee Details</caption>
                </tr
                >
             
                <tr>
                 <th>CONTACT NO</th>

                <th>USER TYPE</th>

                 <th>USER NAME</th>
                
                 <th>PASSWORD</th>
                 <th>ISENABELED</th>

                 <th></th>
                 </tr>
                </thead>
                     <tbody>

              <%  while (rs.next()) {
%>
                    <tr>
                    <td>
                        <%= rs.getString("CONTACTNO")%>
                    </td>

                    <td><%= rs.getString("USERTYPE")%></td>

                    <td><%= rs.getString("USERNAME")%></td>
                    <td><%= rs.getString("PASSWORD")%></td>
                    <%
                    int isen= Integer.parseInt(rs.getString("ISENABELED"));
                    
                  %>

       <td><a href="admin.jsp?contact=<%=rs.getString("CONTACTNO")%>&status=<%=rs.getString("ISENABELED")%>">
              <%=(isen==1?"ENABEL":"DISABEL")%></a></td>
                     </tr>
                     <% }%>
                     <%
              if(request.getParameterNames().hasMoreElements())
              {
                  jdbc as = new jdbc();
         try{
             String contact=request.getParameter("contact");
             int status =Integer.parseInt( request.getParameter("status"));
             as.addStudent("update users set ISENABELED="+(status==0?"1":"0")+" where CONTACTNO='"+contact+"' ");
             response.sendRedirect("admin.jsp");
         }catch(Exception ex){
             out.println(ex);
             
         }
              }
              %>
                </tbody>
                </table>

                </body>
                </html>
<%
            } catch (Exception e) {
                out.println(e);
            }

            %>
    
</html>
