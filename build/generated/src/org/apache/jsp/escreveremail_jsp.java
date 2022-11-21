package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class escreveremail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\"> <!--projeto-->\n");
      out.write("\t<title>Redijir emails</title>\n");
      out.write("\t<!-- Mobile Specific Metas -->\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("\t<!-- Font-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/opensans-font.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/line-awesome/css/line-awesome.min.css\">\n");
      out.write("\t<!-- Jquery -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://jqueryvalidation.org/files/demo/site-demos.css\">\n");
      out.write("\t<!-- Main Style Css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/enviaremails.css\"/>\n");
      out.write("</head>\n");
      out.write("<body class=\"form\">\n");
      out.write("\t<div class=\"page-content\">\n");
      out.write("\t\t<div class=\"form-v4-content\">\n");
      out.write("\t\t\t<div class=\"form-left\">\n");
      out.write("\t\t\t<form class=\"form-detail\"  action=\"javamail.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t<h2>Redija emails promocionais</h2>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<div class=\"form-row form-row-1\">\n");
      out.write("\t\t\t\t\t\t<label for=\"first_name\">Assunto...</label>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"assunto\" size=\"45\" class=\"input-text\">\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("          \t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t<div class=\"form-row form-row-1 \">\n");
      out.write("\t\t\t\t\t<label for=\"your_email\">Texto do email...</label>\n");
      out.write("\t\t\t\t\t<textarea name=\"comenta\" class=\"input-text\" cols=\"50\" rows=\"10\"> </textarea>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-row-last\">\n");
      out.write("\t\t\t\t\t<input type=\"submit\" name=\"Submit\" class=\"register\" value=\"Enviar emails\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t </form>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
