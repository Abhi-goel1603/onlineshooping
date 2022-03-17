<%@page import="java.sql.ResultSet"%>
<%@page import="Pack.jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW PRODUCT</title>
    </head>
    <body style="background-image: url('white-abstract-background-graphic-vector-21584466.jpg');">

        <%
            HttpSession coot = request.getSession(false);
            if (coot == null) {
                response.sendRedirect("login.html");
            } else {

                String cont = (String) coot.getAttribute("contact");
                System.out.println("Contact no : " + cont);

                try {
                    jdbc cc = new jdbc();
                    ResultSet rs = cc.getdetails("select * from productdetails where Empid='" + cont + "'");
        %>
        <h1>PRODUCT DATA</h1>
        <div>
            <table border='2' width='40%'>
                <thead>
                    <tr>
                        <th> Product Details</th>
                    </tr>
                    <tr>
                        <th>PRODUCT ID</th>

                        <th>NAME</th>

                        <th>BRAND NAME</th>

                        <th>SIZE</th>
                        <th>PRICE</th>


                        <th>QUANTITY</th>
                        <th>CATEGORY</th>
                        <th>IMAGE</th>

                    </tr>
                </thead>
                <tbody>

                    <%                while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString(1)%></td>

                        <td><%=rs.getString(2)%></td>

                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><img src="image/<%=rs.getString(8)%>" style="width: 50px;"> </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
        <%
                } catch (Exception ex) {
                    out.println(ex);
                }

            }
        %>
    </body>
    
</html>
