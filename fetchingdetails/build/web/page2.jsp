<%-- 
    Document   : page2
    Created on : Jun 29, 2017, 5:03:31 PM
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String regno=request.getParameter("plateno");
                String reg2=regno.substring(regno.length()-4,regno.length());
                String reg1=regno.substring(0,regno.length()-4);
                extract s4=new extract();
                String[] s5=s4.extractt(regno);
            if(s5==null)
            {
                String s1=request.getParameter("javax");
                String cap=request.getParameter("captchaname");
                String button=request.getParameter("buttonname");
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
                        while(i<(s.length()) && s.charAt(i)!='}')
                        {
                            System.out.println(s.charAt(s.length()-1));

                            System.out.println(s.charAt(i));
                            ID+=s.charAt(i);
                            //System.out.println(ID);
                            i++;
                        }
                    }
                }
                out.println("this was loginForm FOR OURSELF"+ID);

                /*String sam=(String)request.getAttribute("key");
                String sa=request.getParameter(sam);
                out.println(sa);*///"https://requestb.in/1akmhud1"https://parivahan.gov.in/rcdlstatus/vahan/rcDlHome.xhtml
                    Document responses = 
                        Jsoup.connect("https://parivahan.gov.in/rcdlstatus/vahan/rcDlHome.xhtml")
                        .userAgent(" curl/7.47.0")
                        //.timeout(10 * 1000000)
                        .method(Method.POST)
                        //.ignoreContentType(true)
                        .header("Content-Type","application/x-www-form-urlencoded")
                        .cookie("JSESSIONID",ID)
                        .data("form_rcdl","form_rcdl")
                        .data("form_rcdl:tf_reg_no1",reg1)
                        .data("form_rcdl:tf_reg_no2",reg2)
                        .data("form_rcdl:tf_Mobile",mbno)
                        .data(button,"")
                        .data(cap,cid)
                        .ignoreHttpErrors(true)
                        .followRedirects(true)
                        .data("javax.faces.ViewState",s1)
                        .post();
                    out.println(responses);
                    System.out.println("this is sam"+responses+"this is sanath");
           
                %>
                <h1></h1>
                  <% Element div=responses.getElementById("j_id1:javax.faces.ViewState:0");
                  String str=div.attr("value");
                  
                  %>
                  
            
        <form name="form2" action="page3.jsp" method="POST">
            <input type="text" name="javax2" value="<%out.println(str);%>" />
            <input type="text" name="loginFORM2" value="<%out.println(ID);%>" />
            <input type="password" name="OTP" value="" size="10" />
            <input type="submit" value="submit" name="OTP" />
        </form>
        <%}
        else
        {
            for(int i=0;i<8;i++)
            {
                out.println(s5[i]);
            }
        }
        %>
        
    </body>
</html>
