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
            String s1=request.getParameter("javax2");
            String OTP=request.getParameter("OTP");
            String s=request.getParameter("cookie2");
            
             Document responses = 
                        Jsoup.connect("https://parivahan.gov.in/rcdlstatus/vahan/rcDlHome.xhtml")
                        .userAgent(" curl/7.47.0")
                        .method(Method.POST)
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
                        .method(Method.POST)
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
