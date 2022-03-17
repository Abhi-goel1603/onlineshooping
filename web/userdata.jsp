<%@page import="Pack.jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user data</title>
        <style>
            h1{
                font-size: 90px;
                font-style: italic;
                color: orange;
            }
            h4{
                font-size: 40px;
            }

            body{
                margin-top: 20px;
                margin-left: 20px;
                background-image: url('imgBack.jpg');
                background-repeat: no-repeat;                     
                background-attachment: fixed;
                background-size:cover;
            }
            table{
                padding: 20px;
            }
            th,td{
                font-size: 30px;
            }
        </style>

    </head>
    <body>
        <h1 style="text-align: center;"><u>BEST SHOP</u></h1>

        <div>            
            <h4><u>PLEASE ENTER YOUR DETAILS</u></h4>

            <form name="UserDetailForm" action="userdata.jsp">
                <table>
                    <tr>
                        <th>User Type-</th>

                        <td>      EMPLOYEE-
                            <input  type="checkbox" name="utype" value="employee" checked />

                            <br>
                            CUSTOMER-
                            <input type="checkbox" name="utype" value="customer" /></td>
                    </tr>
                    <tr>

                        <th>ContactNo-</th>

                        <td><input type="text" name="Contactno" value="" size="35" /></td>
                    </tr>

                    <tr>
                        <th>User Name-</th>
                        <td><input type="text" name="uname" value="" size="35" /></td>
                    </tr>
                    <tr>
                        <th>Password-</th>
                        <td><input type="password" name="password" value="" size="35" /></td>
                    </tr>
                    <tr>
                        <th>SUBMIT-</th>
                        <td><input type="submit" value="submit" name="submit" /></td>
            </table>
           </form> 
        </div>

    </body>
    <%
        if (request.getParameterNames().hasMoreElements()) {

            String contactno = request.getParameter("Contactno");
            String username = request.getParameter("uname");
            String password = request.getParameter("password");
            String utype = request.getParameter("utype");
            int isenabeled;
            if (utype.equalsIgnoreCase("employee")) {
                isenabeled = 0;
            } else {
                isenabeled = 1;
            }

            jdbc as = new jdbc();

            try {
                as.addStudent("insert into users(USERTYPE,CONTACTNO,USERNAME,PASSWORD,ISENABELED) values('" + utype + "','" + contactno + "','" + username + "','" + password + "','" + isenabeled + "')");
                out.println("submit");
                response.sendRedirect("login.jsp");
            } catch (Exception e) {

    %>

    <nav><li> CONTACTNO ALREADY EXISTS</li></nav>
    <%   
            }

        }
    %>

</html>
