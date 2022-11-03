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
<body>
<% String email = request.getParameter("email");
   String password = request.getParameter("password");
   LoginDao ld = new LoginDao();
   
   CustomerModel cm = ld.CustomerCheck(email, password);
 		   
   
   if(cm!=null)
   {
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