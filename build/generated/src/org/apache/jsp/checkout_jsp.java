package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Pack.jdbc;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("     ");

            jdbc cc = new jdbc();
            ResultSet rs = null;
        //HttpSession coot = request.getSession(false);
            //   String ss = (String) session.getAttribute("name");
            System.out.println("       " + session.getAttribute("contact"));

            String cid = (String) session.getAttribute("contact");
            
            System.out.println("               " + cid);
            if (cid==null) {
                
                response.sendRedirect("login.jsp"); 
                return;
            //    System.out.println("================" + cid);
            }else {
                rs = cc.getdetails("select *,PRICE*qty as amt from v1 where cid ='"+cid+"'and status='NP' ");
            }
   
            
            
      out.write("\n");
      out.write("   \n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Checkout | E-Shopper</title>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/price-range.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/animate.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"js/html5shiv.js\"></script>\n");
      out.write("        <script src=\"js/respond.min.js\"></script>\n");
      out.write("        <![endif]-->       \n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/ico/favicon.ico\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("    </head><!--/head-->\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <header id=\"header\"><!--header-->\n");
      out.write("            <div class=\"header_top\"><!--header_top-->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <div class=\"contactinfo\">\n");
      out.write("                                <ul class=\"nav nav-pills\">\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-phone\"></i> +2 95 01 88 821</a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-envelope\"></i> info@domain.com</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <div class=\"social-icons pull-right\">\n");
      out.write("                                <ul class=\"nav navbar-nav\">\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                                    \n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-linkedin\"></i></a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-dribbble\"></i></a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-google-plus\"></i></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div><!--/header_top-->\n");
      out.write("\n");
      out.write("            <div class=\"header-middle\"><!--header-middle-->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4 clearfix\">\n");
      out.write("                            <div class=\"logo pull-left\">\n");
      out.write("                                <a href=\"index.jsp\"><img src=\"images/home/logo.png\" alt=\"\" /></a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"btn-group pull-right clearfix\">\n");
      out.write("                                <div class=\"btn-group\">\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-default dropdown-toggle usa\" data-toggle=\"dropdown\">\n");
      out.write("                                        USA\n");
      out.write("                                        <span class=\"caret\"></span>\n");
      out.write("                                    </button>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"\">Canada</a></li>\n");
      out.write("                                        <li><a href=\"\">UK</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"btn-group\">\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-default dropdown-toggle usa\" data-toggle=\"dropdown\">\n");
      out.write("                                        DOLLAR\n");
      out.write("                                        <span class=\"caret\"></span>\n");
      out.write("                                    </button>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"\">Canadian Dollar</a></li>\n");
      out.write("                                        <li><a href=\"\">Pound</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-8 clearfix\">\n");
      out.write("                            <div class=\"shop-menu clearfix pull-right\">\n");
      out.write("                                <ul class=\"nav navbar-nav\">\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-user\"></i> Account</a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-star\"></i> Wishlist</a></li>\n");
      out.write("                                    <li><a href=\"checkout.jsp\"><i class=\"fa fa-crosshairs\"></i> Checkout</a></li>\n");
      out.write("                                    <li><a href=\"cart.jsp\"><i class=\"fa fa-shopping-cart\"></i> Cart</a></li>\n");
      out.write("                                    <li><a href=\"login.jsp\"><i class=\"fa fa-lock\"></i> Login</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div><!--/header-middle-->\n");
      out.write("\n");
      out.write("            <div class=\"header-bottom\"><!--header-bottom-->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-9\">\n");
      out.write("                            <div class=\"navbar-header\">\n");
      out.write("                                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                    <span class=\"icon-bar\"></span>\n");
      out.write("                                    <span class=\"icon-bar\"></span>\n");
      out.write("                                    <span class=\"icon-bar\"></span>\n");
      out.write("                                </button>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"mainmenu pull-left\">\n");
      out.write("                                <ul class=\"nav navbar-nav collapse navbar-collapse\">\n");
      out.write("                                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                                    <li class=\"dropdown\"><a href=\"#\">Shop<i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                        <ul role=\"menu\" class=\"sub-menu\">\n");
      out.write("                                            <li><a href=\"shop.html\">Products</a></li>\n");
      out.write("                                            <li><a href=\"product-details.html\">Product Details</a></li> \n");
      out.write("                                            <li><a href=\"checkout.html\" class=\"active\">Checkout</a></li> \n");
      out.write("                                            <li><a href=\"cart.html\">Cart</a></li> \n");
      out.write("                                            <li><a href=\"login.html\">Login</a></li> \n");
      out.write("                                        </ul>\n");
      out.write("                                    </li> \n");
      out.write("                                    <li class=\"dropdown\"><a href=\"#\">Blog<i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                        <ul role=\"menu\" class=\"sub-menu\">\n");
      out.write("                                            <li><a href=\"blog.html\">Blog List</a></li>\n");
      out.write("                                            <li><a href=\"blog-single.html\">Blog Single</a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </li> \n");
      out.write("                                    <li><a href=\"404.html\">404</a></li>\n");
      out.write("                                    <li><a href=\"contact-us.html\">Contact</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-3\">\n");
      out.write("                            <div class=\"search_box pull-right\">\n");
      out.write("                                <input type=\"text\" placeholder=\"Search\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div><!--/header-bottom-->\n");
      out.write("        </header><!--/header-->\n");
      out.write("\n");
      out.write("        <section id=\"cart_items\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"breadcrumbs\">\n");
      out.write("                    <ol class=\"breadcrumb\">\n");
      out.write("                        <li><a href=\"#\">Home</a></li>\n");
      out.write("                        <li class=\"active\">Check out</li>\n");
      out.write("                    </ol>\n");
      out.write("                </div><!--/breadcrums-->\n");
      out.write("\n");
      out.write("           <form name=\"send details\" action=\"finalorderdetails\">\n");
      out.write("          <div class=\"shopper-informations\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"breadcrumbs\">\n");
      out.write("                           \n");
      out.write("                            ");

           ResultSet sx=null;
           
  sx = cc.getdetails("select * from adress where cidsx='"+cid+"'" );
           
            while(sx.next()) {
                
            
            
      out.write("\n");
      out.write("            <input type=\"radio\" name=\"addid\" checked value=\"");
      out.print(sx.getString("aid"));
      out.write("\"/>\n");
      out.write("            <b>");
      out.print(sx.getString("name"));
      out.write("</b>\n");
      out.write("             <b>");
      out.print(sx.getString("email"));
      out.write("</b>\n");
      out.write("              <b>");
      out.print(sx.getString("adress1"));
      out.write("</b>\n");
      out.write("               <b>");
      out.print(sx.getString("adress2"));
      out.write("</b>\n");
      out.write("                <b>");
      out.print(sx.getString("country"));
      out.write("</b>\n");
      out.write("                 <b>");
      out.print(sx.getString("mobilephone"));
      out.write("</b>\n");
      out.write("                 ");
}
      out.write("\n");
      out.write("                            \n");
      out.write("                            <a class=\"btn btn-primary\" href='addadress.jsp'>ADD ADDRESS</a> \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                             <div class=\"review-payment\">\n");
      out.write("                    <h2>Review & Payment</h2>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"table-responsive cart_info\">\n");
      out.write("                    <table class=\"table table-condensed\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr class=\"cart_menu\">\n");
      out.write("                                <td class=\"image\">Item</td>\n");
      out.write("                                <td class=\"description\"></td>\n");
      out.write("                                <td class=\"price\">Price</td>\n");
      out.write("                                <td class=\"quantity\">Quantity</td>\n");
      out.write("                                <td class=\"total\">Total</td>\n");
      out.write("                                <td></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        ");

            float total = 0.0f;
           while(rs.next())
            {
            
      out.write("\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <td class=\"cart_product\">\n");
      out.write("                                    <a href=\"\"><img src=\"image/");
      out.print(rs.getString("IMAGE"));
      out.write("\" height='110' width=\"110\" alt=\"\"></a>\n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"cart_description\">\n");
      out.write("                                    <h4><a href=\"\">");
      out.print(rs.getString("NAME"));
      out.write("</a></h4>\n");
      out.write("                                    <p>Web ID");
      out.print(rs.getString("pid"));
      out.write("</p>\n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"cart_price\">\n");
      out.write("                                    <p>");
      out.print(rs.getString("PRICE"));
      out.write("</p>\n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"cart_quantity\">\n");
      out.write("                                    <div class=\"cart_quantity_button\">\n");
      out.write("                                        <a class=\"cart_quantity_up\" href=\"\"> + </a>\n");
      out.write("                                        <input class=\"cart_quantity_input\" type=\"text\" name=\"quantity\" value=\"");
      out.print(rs.getString("qty"));
      out.write("\" autocomplete=\"off\" size=\"2\">\n");
      out.write("                                        <a class=\"cart_quantity_down\" href=\"\"> - </a>\n");
      out.write("                                    </div>\n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"cart_total\">\n");
      out.write("                                    <p class=\"cart_total_price\">");
      out.print(rs.getString("amt"));
      out.write("</p>\n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"cart_delete\">\n");
      out.write("                                    <a class=\"cart_quantity_delete\" href=\"cartremoves.jsp?serialno=");
      out.print(rs.getString("srno"));
      out.write("&checkout=checkout\"><i class=\"fa fa-times\"></i></a>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                            total=total+Float.parseFloat(rs.getString("amt"));
            }
                            
      out.write("\n");
      out.write("                                               <tr>\n");
      out.write("                                <td colspan=\"4\">&nbsp;</td>\n");
      out.write("                                <td colspan=\"2\">\n");
      out.write("                                    <table class=\"table table-condensed total-result\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Cart Sub Total</td>\n");
      out.write("                                            <td>");
      out.print(total+"");
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Exo Tax</td>\n");
      out.write("                                            <td>FREEE</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr class=\"shipping-cost\">\n");
      out.write("                                            <td>Shipping Cost</td>\n");
      out.write("                                            <td>Free</td>\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Total</td>\n");
      out.write("                                            <td><span>");
      out.print(total+"");
      out.write("</span></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                        \n");
      out.write("                    </table>\n");
      out.write("                                        \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"payment-options\">\n");
      out.write("                    <span>\n");
      out.write("                        <label><input type=\"checkbox\"> Direct Bank Transfer</label>\n");
      out.write("                    </span>\n");
      out.write("                    <span>\n");
      out.write("                        <label><input type=\"checkbox\"> Check Payment</label>\n");
      out.write("                    </span>\n");
      out.write("                    <span>\n");
      out.write("                        <label><input type=\"checkbox\"> Paypal</label>\n");
      out.write("                    </span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section> <!--/#cart_items-->\n");
      out.write("                            \n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer id=\"footer\"><!--Footer-->\n");
      out.write("            <div class=\"footer-top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-2\">\n");
      out.write("                            <div class=\"companyinfo\">\n");
      out.write("                                <h2><span>e</span>-shopper</h2>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-7\">\n");
      out.write("                            <div class=\"col-sm-3\">\n");
      out.write("                                <div class=\"video-gallery text-center\">\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        <div class=\"iframe-img\">\n");
      out.write("                                            <img src=\"images/home/iframe1.png\" alt=\"\" />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"overlay-icon\">\n");
      out.write("                                            <i class=\"fa fa-play-circle-o\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                    <p>Circle of Hands</p>\n");
      out.write("                                    <h2>24 DEC 2014</h2>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"col-sm-3\">\n");
      out.write("                                <div class=\"video-gallery text-center\">\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        <div class=\"iframe-img\">\n");
      out.write("                                            <img src=\"images/home/iframe2.png\" alt=\"\" />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"overlay-icon\">\n");
      out.write("                                            <i class=\"fa fa-play-circle-o\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                    <p>Circle of Hands</p>\n");
      out.write("                                    <h2>24 DEC 2014</h2>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"col-sm-3\">\n");
      out.write("                                <div class=\"video-gallery text-center\">\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        <div class=\"iframe-img\">\n");
      out.write("                                            <img src=\"images/home/iframe3.png\" alt=\"\" />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"overlay-icon\">\n");
      out.write("                                            <i class=\"fa fa-play-circle-o\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                    <p>Circle of Hands</p>\n");
      out.write("                                    <h2>24 DEC 2014</h2>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"col-sm-3\">\n");
      out.write("                                <div class=\"video-gallery text-center\">\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        <div class=\"iframe-img\">\n");
      out.write("                                            <img src=\"images/home/iframe4.png\" alt=\"\" />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"overlay-icon\">\n");
      out.write("                                            <i class=\"fa fa-play-circle-o\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                    <p>Circle of Hands</p>\n");
      out.write("                                    <h2>24 DEC 2014</h2>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-3\">\n");
      out.write("                            <div class=\"address\">\n");
      out.write("                                <img src=\"images/home/map.png\" alt=\"\" />\n");
      out.write("                                <p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-widget\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-2\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>Service</h2>\n");
      out.write("                                <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                                    <li><a href=\"\">Online Help</a></li>\n");
      out.write("                                    <li><a href=\"\">Contact Us</a></li>\n");
      out.write("                                    <li><a href=\"\">Order Status</a></li>\n");
      out.write("                                    <li><a href=\"\">Change Location</a></li>\n");
      out.write("                                    <li><a href=\"\">FAQ’s</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-2\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>Quock Shop</h2>\n");
      out.write("                                <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                                    <li><a href=\"\">T-Shirt</a></li>\n");
      out.write("                                    <li><a href=\"\">Mens</a></li>\n");
      out.write("                                    <li><a href=\"\">Womens</a></li>\n");
      out.write("                                    <li><a href=\"\">Gift Cards</a></li>\n");
      out.write("                                    <li><a href=\"\">Shoes</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-2\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>Policies</h2>\n");
      out.write("                                <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                                    <li><a href=\"\">Terms of Use</a></li>\n");
      out.write("                                    <li><a href=\"\">Privecy Policy</a></li>\n");
      out.write("                                    <li><a href=\"\">Refund Policy</a></li>\n");
      out.write("                                    <li><a href=\"\">Billing System</a></li>\n");
      out.write("                                    <li><a href=\"\">Ticket System</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-2\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>About Shopper</h2>\n");
      out.write("                                <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                                    <li><a href=\"\">Company Information</a></li>\n");
      out.write("                                    <li><a href=\"\">Careers</a></li>\n");
      out.write("                                    <li><a href=\"\">Store Location</a></li>\n");
      out.write("                                    <li><a href=\"\">Affillate Program</a></li>\n");
      out.write("                                    <li><a href=\"\">Copyright</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-3 col-sm-offset-1\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>About Shopper</h2>\n");
      out.write("                                <form action=\"#\" class=\"searchform\">\n");
      out.write("                                    <input type=\"text\" placeholder=\"Your email address\" />\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-default\"><i class=\"fa fa-arrow-circle-o-right\"></i></button>\n");
      out.write("                                    <p>Get the most recent updates from <br />our site and be updated your self...</p>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-bottom\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <p class=\"pull-left\">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>\n");
      out.write("                        <p class=\"pull-right\">Designed by <span><a target=\"_blank\" href=\"http://www.themeum.com\">Themeum</a></span></p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </footer><!--/Footer-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.scrollUp.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
