<%-- 
    Document   : editdetails
    Created on : Feb 10, 2022, 12:21:14 PM
    Author     : sapna
--%>

<%@page import="java.sql.ResultSet"%>
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
             session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("login.jsp");
            System.out.println("Session Expired");
        }else{ 

                String df = (String) session.getAttribute("contact");
                out.println(df);

                try {
                    jdbc sh = new jdbc();
                    ResultSet rs = sh.getdetails("select * from users where CONTACTNO='" + df + "'");
  
                    System.out.println("no1");
                   while(rs.next())
                   {
            %>
            

        <form name='UserDetailForm' action='updatedetails.jsp'>
            <table>
                <tr>
                    <th>ContactNo-</th>
                    <td><input type='text' name='Contactno' value='<%=rs.getString("CONTACTNO")%>' size='35' /></td>
                </tr>

                <tr>
                    <th>User Name-</th>
                    <td><input type='text' name='uname' value='<%=rs.getString("USERNAME")%>' size='35' /></td>
                </tr>

                <tr>
                    <th>Password-</th>

                    <td><input type='password' name='password' value='<%=rs.getString("PASSWORD")%>' size='35' /></td>
                </tr>
                <tr>
                    <th>SUBMIT-</th>
                    <td><input type='submit' value='submit' name='submit' /></td>
                    <%
                   }
                   %>
                <a href='employee.jsp'>BACK</a>
  

            </table>

        </form>
                    <%
                    }catch(Exception e){
                        out.println(e);
                    }
        }
                    
                    %>
    </body>
    
</html>
