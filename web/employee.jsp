<%@page import="java.sql.ResultSet"%>
<%@page import="Pack.jdbc"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.nio.file.Paths"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMPLOYEE</title>
        <style>
            body{
                background-image: url('productpage.jpg');
                background-repeat: no-repeat;                     
                background-attachment: fixed;
                background-size:cover;
            }
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }

            li {
                float: right;
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover {
                background-color: #111;
            }

        </style>
    </head>
    <body>
        <%
          session = request.getSession(false);

            String ss = (String) session.getAttribute("name");
            if (ss==null) {
                response.sendRedirect("login.jsp");
            } 
            String df = (String) session.getAttribute("contact");

        %>
        <ul><li>NAME-  <%=ss%> </li><li>ID- <%= df%> </li>
            <li><a href='editdetails.jsp'>EDIT</a></li>
            <li><a href='logout.jsp'>LOGOUT</a></li>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a  href="showproduct.jsp">SHOW </a></li>
        </ul>
            


            <form name="product" action="product" enctype="multipart/form-data" method="POST">
            <table border="2" cellspacing="30" cellpadding="10">
                <thead>
ADD PRODUCT DETAILS
     </thead>


                <tr>
                    <th>              PRODUCT ID:
                    </th>
                    <td>      <input type="text" name="productid" value="" size="50" /></td>
                </tr>
                <tr>
                    <th>                 PRODUCT NAME:
                    </th>
                    <td>            <input type="text" name="productname" value="" size="50" />
                    </td>
                </tr>
                <tr>
                    <th>            PRODUCT CATEGORY:
                    </th>
                    <td>            <select name="category" />
                        <%
                        jdbc db = new jdbc();
                   ResultSet ds=     db.getdetails("select * from brand");
               // ResultSet ds1=     db.getdetails("select * from category");

                                while(ds.next()){
                        %>
                    <option value="<%=ds.getString("cname")+", "+ds.getString("bname")%>"/><%=ds.getString("cname")+", "+ds.getString("bname")%>
                    <%}%>
                        
                    </td>
                    <td><a href="addbrand.jsp">ADD NEW CATEGORY AND BRAND</a></td>
                </tr>
                <tr>
                    <th>            PRODUCT SIZE:
                    </th>
                    <td>            <input type="text" name="size" value="" size="50" />
                    </td>
                </tr>
                <tr>
                    <th>            PRODUCT PRICE:
                    </th>
                    <td>            <input type="text" name="price" value="" size="50" />
                    </td>
                </tr>
                <tr>
                    <th>            PRODUCT QUANTITY:
                    </th>
                    <td>            <input type="text" name="quantity" value="" size="50" />
                    </td>
                </tr>
                <tr>
                    <th>            PRODUCT IMAGE:
                    </th>
                    <td>            <input type="file" name="image" />  
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="ADD PRODUCT"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>


</html>
