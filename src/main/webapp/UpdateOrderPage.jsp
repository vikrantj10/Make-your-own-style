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
<body style="background-image: url('001.png')">
       <%
DesignerModel dm = new DesignerModel();
UserDao ud = new UserDao();
dm=(DesignerModel)session.getAttribute("dm"); 
if(dm==null)
	response.sendRedirect("DesignerLoginPage.jsp");
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
<div
    style="background-image: url('001.png');background-size: cover;background-repeat: no-repeat; background-position: center; ">





    <div style="  background: linear-gradient(to right, #000066 0%, #ff6600 100%); height:12%;border-radius: 12px">

        <table width="65%" style="float: right; margin-top: 2%;">
          
            <tr align=" center">
            <td class="tdtheme"><a href="DesignerWelcomePage.jsp" style="color:whitesmoke;text-decoration:none">HOME</td>
            <td class="tdtheme"><a href="CustomerViewOrders.jsp" style="color:whitesmoke;text-decoration:none">View Orders</td>
            <td class="tdtheme"><a href="CustomerLogOut.jsp" style="color:whitesmoke;text-decoration:none">LOG OUT


                    </tr>
                    <img src="tlogo.png" style=" width: 14%; border-radius: 12px; margin-top:0.2%;margin-left: 0.5%;">
                        
        </table>
        </div>
        </div>
        <div style="margin-top: 5%;">
            <form action="UpdateOrder.jsp" method="post"
                style=" border: solid;border-color: black; border-radius: 5%;width:35%; margin:auto ">
                <table cellspacing="10" align="center">
                    <tr align="center" bgcolor="darkblue">
                        <td colspan="2" style="font-size:35px;color:white;font-weight:bold">Update Order
                    </tr>
                    </td>
                    <tr>

                        <td>Enter Order Id</td>
                        <td>
                            <input type="text" name="order_id" placeholder="ID"
                                style="width:200px; height:30px; border-radius: 25px; background-color: white;color:black"
                                required>
                        </td>
                    </tr>
                    <tr>
                        <td>Select Delivery Date</td>
                        <td>
                            <input type="date" name="date" placeholder="Date" style="width:200px; height:30px; border-radius: 25px; background-color: white
                                   ;color: black;" required>
                        </td>
                    </tr>

                        <tr align="center"> </tr>
                            <td colspan="2">
                                <input type="submit" value="update" onclick="alert('Order has been successfully updated')" placeholder="submit" style="width: 100px;height: 25px;border-radius: 30px;background-color: black;color: white;">
                            </td>

                </table>

            </form>
        </div>
</body>
</html>