<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.t_shadow.CustomerModel"%>
<%@page import = "com.t_shadow.UserDao" %>
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
String State = request.getParameter("State");
String City = request.getParameter("City");
String Street = request.getParameter("Street"); // i love youuuuuuu

CustomerModel cm = new CustomerModel();
cm.setFirst_Name(First_Name);
cm.setLast_Name(Last_Name);
cm.setMobile_No(Mobile_No);
cm.setEmail(Email);
cm.setPassword(password);
cm.setState(State);
cm.setCity(City);
cm.setStreet(Street);

UserDao dao = new UserDao();
dao.Insert(cm);
response.sendRedirect("CustomerLoginPage.jsp");
%>
</body>
</html>