<%@page import="com.t_shadow.UserDao"%>
<%@page import="java.util.Queue"%>
<%@page import="java.util.ArrayDeque"%>
<%@page import="com.t_shadow.CustomerModel"%>
<%@page import="com.t_shadow.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('001.png')">
<% String email = request.getParameter("email");
   String password = request.getParameter("password");
   LoginDao ld = new LoginDao();
   
   CustomerModel cm = ld.CustomerCheck(email, password);
 		   
   
   if(cm!=null)
   {
	   Queue<Integer> q = new ArrayDeque<>();
	   UserDao ud = new UserDao();
	   ud.getdesigner(q);
	   session.setAttribute("q",q);
	   session.setAttribute("cm", cm);
	   response.sendRedirect("CustomerWelcomePage.jsp");
   }
   else
   {
	   response.sendRedirect("CustomerLoginPage.jsp");
   }
%>
</body>
</html>