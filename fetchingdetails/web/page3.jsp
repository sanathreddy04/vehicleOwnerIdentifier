<%-- 
    Document   : page3
    Created on : Jul 4, 2017, 8:21:17 PM
    Author     : samislavath
--%>
<%@page import ="folder.extract" %>
<%@page import="java.io.File"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.net.URL"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Connection.Method"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.Connection"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            /*String FILENAME = "E:\\DOWNLOADS\\actual_detail.txt";
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

            }*/
            String s1=request.getParameter("javax2");
            String OTP=request.getParameter("OTP");
            String s=request.getParameter("loginFORM2");
             /*Document responses = 
                        Jsoup.connect("https://parivahan.gov.in/rcdlstatus/vahan/rcDlHome.xhtml")
                        .userAgent(" curl/7.47.0")
                        //.timeout(10 * 1000000)
                        .method(Method.POST)
                        //.ignoreContentType(true)
                        .header("Content-Type","application/x-www-form-urlencoded")
                        .cookie("JSESSIONID",s)
                        .data("javax.faces.partial.ajax","true")
                        .data("javax.faces.source","form_rcdl:j_idt46")
                        .data("javax.faces.partial.execute","@all")
                        .data("javax.faces.partial.render","form_rcdl:pnl_show form_rcdl:rcdl_pnl")
                        .data("form_rcdl:j_idt46","form_rcdl:j_idt46")
                        .data("form_rcdl","form_rcdl")
                        .ignoreHttpErrors(true)
                        .followRedirects(true)
                        .data("form_rcdl:tf_OTP",OTP)
                        .data("javax.faces.ViewState",s1)
                        .post();
             out.println(responses);*/
             Document responses = 
                        Jsoup.connect("https://parivahan.gov.in/rcdlstatus/vahan/rcDlHome.xhtml")
                        .userAgent(" curl/7.47.0")
                        //.timeout(10 * 1000000)
                        .method(Method.POST)
                        //.ignoreContentType(true)
                        .header("Content-Type","application/x-www-form-urlencoded")
                        .cookie("JSESSIONID",s)
                        .data("javax.faces.partial.ajax","true")
                        .data("javax.faces.source","form_rcdl:tf_OTP")
                        .data("javax.faces.partial.execute","form_rcdl:tf_OTP")
                        .data("javax.faces.partial.render","form_rcdl:tf_OTP")
                        .data("form_rcdl:j_idt46","form_rcdl:j_idt46")
                        
                                .data("javax.faces.behavior.event","valueChange")
                                .data("javax.faces.partial.event","change")
                                .data("form_rcdl","form_rcdl")
                        .ignoreHttpErrors(true)
                        .followRedirects(true)
                        .data("form_rcdl:tf_OTP",OTP)
                        .data("javax.faces.ViewState",s1)
                        .post();
             out.println(responses);
             Document responses1 = 
                        Jsoup.connect("https://parivahan.gov.in/rcdlstatus/vahan/rcDlHome.xhtml")
                        .userAgent(" curl/7.47.0")
                        //.timeout(10 * 1000000)
                        .method(Method.POST)
                        //.ignoreContentType(true)
                        .header("Content-Type","application/x-www-form-urlencoded")
                        .cookie("JSESSIONID",s)
                        .data("javax.faces.partial.ajax","true")
                        .data("javax.faces.source","form_rcdl:j_idt46")
                        .data("javax.faces.partial.execute","@all")
                        .data("javax.faces.partial.render","form_rcdl:pnl_show form_rcdl:rcdl_pnl")
                        .data("form_rcdl:j_idt46","form_rcdl:j_idt46")
                        .data("form_rcdl","form_rcdl")
                        .ignoreHttpErrors(true)
                        .followRedirects(true)
                        .data("form_rcdl:tf_OTP",OTP)
                        .data("javax.faces.ViewState",s1)
                        .post();
             out.println(responses1);
        %>
    </body>
</html>
