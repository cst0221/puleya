/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-01-12 07:58:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class left_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<div class=\"col-md-3 left_col\">\r\n");
      out.write("\t<div class=\"left_col scroll-view\">\r\n");
      out.write("\t\t<div class=\"navbar nav_title\" style=\"border: 0;\">\r\n");
      out.write("\t\t\t<a href=\"/indexview\" class=\"site_title\"><i class=\"fa fa-paw\"></i>\r\n");
      out.write("\t\t\t\t<span>Gentellela Alela!</span></a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- menu profile quick info -->\r\n");
      out.write("\t\t<div class=\"profile\">\r\n");
      out.write("\t\t\t<div class=\"profile_pic\">\r\n");
      out.write("\t\t\t\t<img src=\"/static/images/img.jpg\" alt=\"...\"\r\n");
      out.write("\t\t\t\t\tclass=\"img-circle profile_img\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"profile_info\">\r\n");
      out.write("\t\t\t\t<span>Welcome,</span>\r\n");
      out.write("\t\t\t\t<h2>John Doe</h2>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- /menu profile quick info -->\r\n");
      out.write("\r\n");
      out.write("\t\t<br />\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- sidebar menu -->\r\n");
      out.write("\t\t<div id=\"sidebar-menu\" class=\"main_menu_side hidden-print main_menu\">\r\n");
      out.write("\t\t\t<div class=\"menu_section\">\r\n");
      out.write("\t\t\t\t<h3>GENERRALLY</h3>\r\n");
      out.write("\t\t\t\t<ul class=\"nav side-menu\">\r\n");
      out.write("\t\t\t\t\t<li><a><i class=\"fa fa-home\"></i> 商品管理 <span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"/indexview\">商品列表</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"/productPicView\">商品图片列表</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"/categoryView\">分类列表</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t<li><a><i class=\"fa fa-edit\"></i> 订单管理 <span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"/orderProductView\">订单列表</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"/addressView\">送货地址</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<!-- <li><a href=\"form_validation.html\">Form Validation</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"form_wizards.html\">Form Wizard</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"form_upload.html\">Form Upload</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"form_buttons.html\">Form Buttons</a></li> -->\r\n");
      out.write("\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t<!-- \t<li><a><i class=\"fa fa-desktop\"></i> UI Elements <span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"general_elements.html\">General Elements</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"media_gallery.html\">Media Gallery</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"typography.html\">Typography</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"icons.html\">Icons</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"glyphicons.html\">Glyphicons</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"widgets.html\">Widgets</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"invoice.html\">Invoice</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"inbox.html\">Inbox</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"calendar.html\">Calendar</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li>-->\r\n");
      out.write("\t\t\t\t\t<!-- <li><a><i class=\"fa fa-table\"></i> 添加操作 <span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"/productAddShow\">添加商品</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"/categoryAdd\">添加分类</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li> -->\r\n");
      out.write("\t\t\t\t\t\t<!--  \r\n");
      out.write("\t\t\t\t\t<li><a><i class=\"fa fa-bar-chart-o\"></i> Data Presentation\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"chartjs.html\">Chart JS</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"chartjs2.html\">Chart JS2</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"morisjs.html\">Moris JS</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"echarts.html\">ECharts</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"other_charts.html\">Other Charts</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t<li><a><i class=\"fa fa-clone\"></i>Layouts <span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"fixed_sidebar.html\">Fixed Sidebar</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"fixed_footer.html\">Fixed Footer</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li> -->\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- <div class=\"menu_section\">\r\n");
      out.write("\t\t\t\t<h3>Live On</h3>\r\n");
      out.write("\t\t\t\t<ul class=\"nav side-menu\">\r\n");
      out.write("\t\t\t\t\t<li><a><i class=\"fa fa-bug\"></i> Additional Pages <span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"e_commerce.html\">E-commerce</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"projects.html\">Projects</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"project_detail.html\">Project Detail</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"contacts.html\">Contacts</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"profile.html\">Profile</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t<li><a><i class=\"fa fa-windows\"></i> Extras <span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"page_403.html\">403 Error</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"page_404.html\">404 Error</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"page_500.html\">500 Error</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"plain_page.html\">Plain Page</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"login.html\">Login Page</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"pricing_tables.html\">Pricing Tables</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t<li><a><i class=\"fa fa-sitemap\"></i> Multilevel Menu <span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#level1_1\">Level One</a>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a>Level One<span class=\"fa fa-chevron-down\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"nav child_menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"sub_menu\"><a href=\"level2.html\">Level Two</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#level2_1\">Level Two</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#level2_2\">Level Two</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#level1_2\">Level One</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"javascript:void(0)\"><i class=\"fa fa-laptop\"></i>\r\n");
      out.write("\t\t\t\t\t\t\tLanding Page <span class=\"label label-success pull-right\">Coming\r\n");
      out.write("\t\t\t\t\t\t\t\tSoon</span></a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div> -->\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- /sidebar menu -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- /menu footer buttons -->\r\n");
      out.write("\t\t<div class=\"sidebar-footer hidden-small\">\r\n");
      out.write("\t\t\t<a data-toggle=\"tooltip\" data-placement=\"top\" title=\"Settings\"> <span\r\n");
      out.write("\t\t\t\tclass=\"glyphicon glyphicon-cog\" aria-hidden=\"true\"></span>\r\n");
      out.write("\t\t\t</a> <a data-toggle=\"tooltip\" data-placement=\"top\" title=\"FullScreen\">\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-fullscreen\" aria-hidden=\"true\"></span>\r\n");
      out.write("\t\t\t</a> <a data-toggle=\"tooltip\" data-placement=\"top\" title=\"Lock\"> <span\r\n");
      out.write("\t\t\t\tclass=\"glyphicon glyphicon-eye-close\" aria-hidden=\"true\"></span>\r\n");
      out.write("\t\t\t</a> <a data-toggle=\"tooltip\" data-placement=\"top\" title=\"Logout\"> <span\r\n");
      out.write("\t\t\t\tclass=\"glyphicon glyphicon-off\" aria-hidden=\"true\"></span>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- /menu footer buttons -->\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
