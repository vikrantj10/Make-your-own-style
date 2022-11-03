<%@page import="com.t_shadow.ShowUserDetails"%>
<%@page import="com.t_shadow.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.t_shadow.CustomerModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('001.png')">
<%
CustomerModel cm = new CustomerModel();
UserDao ud = new UserDao();
cm=(CustomerModel)session.getAttribute("cm"); 
List<ShowUserDetails> list = new ArrayList<>();
ud.getAll(list, cm);
if(cm==null && list==null)
	response.sendRedirect("CustomerLoginPage.jsp");
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
<h2 style="text-align:center">Your Orders</h2>
<%
for(int i=0;i<list.size();i++) 
{
%>
<h2 class="playlist"><%= list.get(i).getProduct_name() %></h2>
<img src="images/<%=list.get(i).getImage()%>" class="img1">
<h2 class="playlist">Delievery : <%= list.get(i).getOrdered_delievery() %></h2>
<h2 class="playlist">Status : <%= list.get(i).getOrdered_status() %></h2>
<h2 class="playlist">Designer : <%= list.get(i).getFirst_name() %></h2>
<%}%>


</body>
</html>