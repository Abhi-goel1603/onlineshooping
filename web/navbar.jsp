<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session = request.getSession();
            String cid = (String) session.getAttribute("contact");
                        String name = (String) session.getAttribute("name");

            if (cid == null) {
        %>
        <div class="col-md-8 clearfix">
            <div class="shop-menu clearfix pull-right">
                <ul class="nav navbar-nav">
                    <li><a href=""><i class="fa fa-user"></i> Account</a></li>
                    <li><a href=""><i class="fa fa-star"></i> Wishlist</a></li>
                    <li><a href="checkout.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                    <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                </ul>
            </div>
        </div>

        <%    } else {%>
        <div class="col-md-8 clearfix">
            <div class="shop-menu clearfix pull-right">
                <ul class="nav navbar-nav">
                    <li><a href="editdetails.jsp"><i class="fa fa-user"></i><%=name%></a></li>
                    <li><a href="orderdetails.jsp"><i class="fa fa-star"></i>My Order </a></li>
                    <li><a href="checkout.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                    <li><a href="logout.jsp"><i class="fa fa-lock"></i> Logout</a></li>
                </ul>
            </div>
        </div>
        <%
            }
        %>

    </body>
</html>
