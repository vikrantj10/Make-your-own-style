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
       <%
DesignerModel dm = new DesignerModel();
UserDao ud = new UserDao();
dm=(DesignerModel)session.getAttribute("dm"); 
if(dm==null)
	response.sendRedirect("DesignerLoginPage.jsp");
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
<form action="UpdateOrder.jsp" method="post">
<input type="text" name="order_id" value="Enter Order_id">
<input type="date" name="date" value="Enter Delivery Date">
<input type="submit" value="update">
</form>
</body>
</html>