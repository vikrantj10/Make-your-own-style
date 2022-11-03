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
                        <input type="date" name="Ordered_Date" placeholder="Date"
                            style="width:200px; height:30px; border-radius: 30px; background-color: white;color: black;"
                            required>
                        Enter Custom Name Of Your Product
                        <input type="text" name="Product_Name" placeholder="Name" style="width:200px; height:30px; border-radius: 25px; background-color: white
                                                                   ;color: black;" required>
                        Choose Quantity                                           
                        <select name="qty" id="tshirt-quantity" style="height: 26px;">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            </select>
                        Choose Size
                        <select name="size" id="tshirt-size" style="height: 26px;">
                            <option>Select Size</option>
                            <option>XS</option>
                            <option>S</option>
                            <option>M</option>
                            <option>L</option>
                            <option>XL</option>
                            <option>XXL</option>
                            </select>
                       <input type="submit" onclick="alert('Order has been successfull placed')" value="Submit" style="width: 100px;height: 25px;border-radius: 30px;background-color: black;color: white">
                 
                    </form>


</body>
</html>