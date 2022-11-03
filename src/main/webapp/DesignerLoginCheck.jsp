<%@page import="com.t_shadow.DesignerModel"%>
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
   
   DesignerModel dm = ld.DesignerCheck(email, password);
 		   
   
   if(dm!=null)
   {
	   session.setAttribute("dm", dm);
	   response.sendRedirect("DesignerWelcomePage.jsp");
   }
   else
   {
	   response.sendRedirect("DesignerLoginPage.jsp");
   }
%>
</body>
</html>