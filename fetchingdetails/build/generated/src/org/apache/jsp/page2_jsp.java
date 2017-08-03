package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.File;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.net.URL;
import org.jsoup.select.Elements;
import org.jsoup.Connection.Method;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Document;
import org.jsoup.Jsoup;
import org.jsoup.Connection;

public final class page2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            
            String s1=request.getParameter("javax");
            //System.out.println("this was"+s1);
            String regno=request.getParameter("plateno");
            String reg2=regno.substring(regno.length()-4,regno.length());
            String reg1=regno.substring(0,regno.length()-4);
            
            //System.out.println("this was"+s1);
            String mbno=request.getParameter("phno");
            //System.out.println("this was"+s1);
            String cid=request.getParameter("cpt");
            //System.out.println("this was"+s1);
            String s=request.getParameter("loginFORM");
            out.println("this was loginForm"+s);
            String ID="";
            for(int i=0;i<s.length()-1;i++)
            {
                if(s.charAt(i)=='=')
                {
                    i++;
                    while(i<(s.length()-2) && s.charAt(i)!='}')
                    {
                        System.out.println(s.charAt(s.length()-1));
                        
                        System.out.println(s.charAt(i));
                        ID+=s.charAt(i);
                        System.out.println(ID);
                        i++;
                    }
                }
            }
            out.println("this was loginForm FOR OURSELF"+ID);
            
      out.write("\n");
      out.write("        <h1></h1>\n");
      out.write("        ");

            
            /*String sam=(String)request.getAttribute("key");
            String sa=request.getParameter(sam);
            out.println(sa);*/
                Document responses = 
                    Jsoup.connect("https://parivahan.gov.in/rcdlstatus/vahan/rcDlHome.xhtml")
                    .userAgent("Mozilla/5.0")
                    .timeout(10 * 1000000)
                    .method(Method.POST)
                    .data("form_rcdl","form_rcdl")
                    .data("form_rcdl:tf_reg_no1",reg1)
                    .data("form_rcdl:tf_reg_no2",reg2)
                    .data("form_rcdl:tf_Mobile",mbno)
                    .data("form_rcdl:j_idt37:CaptchaID",cid)
                    .ignoreHttpErrors(true)
                    .followRedirects(true)
                    .data("JSESSIONID",ID)
                    .data("javax.faces.ViewState",s1)
                    .post();
                out.println(responses);
                
      out.write("\n");
      out.write("        <form name=\"form2\" action=\"page2.jsp\" method=\"POST\">\n");
      out.write("            <input type=\"password\" name=\"OTP\" value=\"\" size=\"10\" />\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"submit\" name=\"OTP\" />\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
