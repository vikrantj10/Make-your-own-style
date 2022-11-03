<%@page import="com.t_shadow.UserDao"%>
<%@page import="com.t_shadow.DesignerModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String First_Name = request.getParameter("First_Name");
String Last_Name = request.getParameter("Last_Name");
String Mobile_No = request.getParameter("Mobile_No");
String Email = request.getParameter("Email");
String password = request.getParameter("password");

DesignerModel dm = new DesignerModel();
dm.setFirst_Name(First_Name);
dm.setLast_Name(Last_Name);
dm.setMobile_No(Mobile_No);
dm.setEmail(Email);
dm.setPassword(password);

UserDao dao = new UserDao();
dao.Insert(dm);
response.sendRedirect("DesignerLoginPage.jsp");
%>
</body>
</html>