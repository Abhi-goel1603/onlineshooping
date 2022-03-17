<%-- 
    Document   : addadress
    Created on : Mar 2, 2022, 5:45:25 PM
    Author     : sapna
--%>

<%@page import="Pack.jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Checkout | E-Shopper</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    
    </head>
    <body>
                   <div class="col-sm-5 clearfix">
                            <div class="bill-to">
                  <form name="adress" action="addadress.jsp" class="col-sm-5 clearfix">
                      <table>
                          
                          <thead>
                          <th>  <p>ADDRESS- </p>
                      </th>
</thead>
<tbody>
    <tr>
        <td>
                                <div class="form-one">
                                       <input type="text" placeholder="Email*" name="email">
                                       <input type="text" placeholder="First Name *" name="name">
                                       <input type="text" placeholder="Address 1 *" name="adress1">
                                       <input type="text" placeholder="Address 2" name="adress2">
                                    
                                </div>
        </td>
    </tr>
    <tr>
        <td>
        
                                <div class="form-two">
                                    
                                        <input type="text" placeholder="Zip / Postal Code *" name="postalcode">
                                        <select name="country">
                                            <option>-- Country --</option>
                                            <option>United States</option>
                                            <option>Bangladesh</option>
                                            <option>UK</option>
                                            <option>India</option>
                                            <option>Pakistan</option>
                                            <option>Ucrane</option>
                                            <option>Canada</option>
                                            <option>Dubai</option>
                                        </select>
                                        <input type="text" placeholder="Mobile Phone" name="mobilephone">
                                       <input class="btn btn-primary" type="submit" value="ADD ADDRESS" name="submit"  /> 
                                </div>
        </td>
    </tr>
</tbody>
                      </table>
                                    </form>
                            </div>
                        </div>
                   <%
                       if(request.getParameterNames().hasMoreElements()){
                        session = request.getSession();
                       String cidsx = (String) session.getAttribute("contact");
                              String email=  request.getParameter("email");
                                 String name=  request.getParameter("name");
                                    String adress1=  request.getParameter("adress1");
                                       String adress2=  request.getParameter("adress2");
                                          String postalcode=  request.getParameter("postalcode");
                                             String country=  request.getParameter("country");
                                                String mobilephone=  request.getParameter("mobilephone");
                                               jdbc as = new jdbc();
                                               
                                               as.addStudent("insert into adress (email,name1,adress1,adress2,postalcode,country,mobilephone,cidsx) value('"+email+"','"+name+"','"+adress1+"','"+adress2+"','"+postalcode+"','"+country+"','"+mobilephone+"','"+cidsx+"') ");
                                               response.sendRedirect("checkout.jsp");
                       }
                       %>

    </body>
</html>
