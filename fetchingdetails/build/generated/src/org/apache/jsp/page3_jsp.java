package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.IOException;
import java.io.FileReader;
import java.sql.*;
import java.io.BufferedReader;

public final class page3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        ");

            String FILENAME = "E:\\DOWNLOADS\\actual_detail.txt";
            BufferedReader br = null;
            FileReader fr = null;

            try {

                    fr = new FileReader(FILENAME);
                    br = new BufferedReader(fr);

                    String s;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary","root","");
        Statement st=con.createStatement();
 
                    br = new BufferedReader(new FileReader(FILENAME));
                    s = br.readLine();
                    int i=1;
                    while (s!= null)
                    {
                        if(s.charAt(0)-'a'<=26 && s.charAt(0)-'a'>=0)
                        {
                            String s1=null;
                            while ((s1 = br.readLine()) != null && (s1.charAt(0)-'a'>26 || s1.charAt(0)-'a'<0) )
                            {
                                //System.out.println(s1);
                                s+=s1;
                                s1=null;
                            }
                            System.out.println(s);
                            String regno="",chasino="",regdate="",engineno="",ownername="",vehicleclass="",fueltype="",makermodel="";
                            st.executeUpdate("INSERT INTO plate_details (regno,chasino,regdate,engineno,ownername,vehicleclass,fueltype,makermodel) "
                                    + "VALUES ('"+regno+"','"+chasino+"','"+regdate+"','"+engineno+"','"+ownername+"','"+vehicleclass+"','"+fueltype+"','"+makermodel+"')");
                            //st.executeUpdate("INSERT INTO engdictionary (VALUE) VALUES ('"+s+"')");
                            i++;
                            s=null;
                            s=s1;
                        }
                        
                    }

            } catch (IOException e) {

                    e.printStackTrace();

            }
        
      out.write("\n");
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
