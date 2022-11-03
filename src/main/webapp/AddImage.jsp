<%@page import="com.t_shadow.CustomerModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Image</title>
</head>
<body>
<%
CustomerModel cm = new CustomerModel();
cm=(CustomerModel)session.getAttribute("cm"); 
if(cm==null)
	response.sendRedirect("CustomerLoginPage.jsp");
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
<form action="AddImage" method="post" enctype="multipart/form-data">
                        Select Image :
                        <input type="file" name="image" placeholder="Image"
                            style="width:200px; height:30px; border-radius: 25px; background-color: white;color:black"
                            required>
                        Enter Ordered Date
                        <input type="text" name="Ordered_Date" placeholder="Date"
                            style="width:200px; height:30px; border-radius: 30px; background-color: white;color: black;"
                            required>
                        Enter Custom Name Of Your Product
                        <input type="text" name="Product_Name" placeholder="Name" style="width:200px; height:30px; border-radius: 25px; background-color: white
                                                                   ;color: black;" required>
                       <input type="submit" value="Submit" style="width: 100px;height: 25px;border-radius: 30px;background-color: black;color: white">
                 
                    </form>


</body>
</html>