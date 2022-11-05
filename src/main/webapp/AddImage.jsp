<%@page import="com.t_shadow.CustomerModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Image</title>
</head>
<body style="background-image: url('001.png')">
<%
CustomerModel cm = new CustomerModel();
cm=(CustomerModel)session.getAttribute("cm"); 
if(cm==null)
	response.sendRedirect("CustomerLoginPage.jsp");
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
<div
    style="background-image: url('001.png');background-size: cover;background-repeat: no-repeat; background-position: center; ">





    <div style="  background: linear-gradient(to right, #000066 0%, #ff6600 100%); height:12%;border-radius: 12px">

        <table width="65%" style="float: right; margin-top: 2%;">
          
            <tr align=" center">
            <td class="tdtheme"><a href="CustomerWelcomePage.jsp" style="color:whitesmoke;text-decoration:none">HOME</td>
            <td class="tdtheme"><a href="Designing.jsp" style="color:whitesmoke;text-decoration:none">Designing Studio</td>
            <td class="tdtheme"><a href="CustomerViewOrders.jsp" style="color:whitesmoke;text-decoration:none">View Orders</td>
            <td class="tdtheme"><a href="CustomerLogOut.jsp" style="color:whitesmoke;text-decoration:none">LOG OUT


                    </tr>
                    <img src="tlogo.png" style=" width: 14%; border-radius: 12px; margin-top:0.2%;margin-left: 0.5%;">
                        
        </table>
        </div>
        </div>
<div style="margin-top: 5%;">
            <form action="AddImage" method="post" enctype="multipart/form-data"
                style=" border: solid;border-color: black; border-radius: 5%;width:35%; margin:auto ">
                <table cellspacing="10" align="center">
                    <tr align="center" bgcolor="darkblue">
                        <td colspan="2" style="font-size:35px;color:white;font-weight:bold">Add Final Details
                    </tr>
                    </td>
                    <tr>

                        <td>Upload Image:</td>
                        <td>
                            <input type="file" name="image" placeholder="Image"
                                style="width:200px; height:30px; border-radius: 25px; background-color: white;color:black"
                                required>
                        </td>
                    </tr>
                    <tr>
                        <td>Select Ordered Date</td>
                        <td>
                            <input type="date" name="Ordered_Date" placeholder="Date" style="width:200px; height:30px; border-radius: 25px; background-color: white
                                   ;color: black;" required>
                        </td>
                    </tr>

                    <tr>
                        <td>Give Name To Your Product</td>
                        <td>
                            <input type="text" name="Product_Name" placeholder="Name"
                                style="width:200px; height:30px; border-radius: 25px; background-color: white;color: black;"
                                required>
                        </td>
                    </tr>

                       <tr>
                            <td>Select Qty:</td>
                            <td>
                            <select name="qty" id="tshirt-quantity" style="width:200px; height:30px; border-radius: 30px; background-color: white;color: black;"
                                    required">
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
                            </td>
                        </tr>


                        <tr>
                            <td>Select Size</td>
                            <td>
                            <select name="size" id="tshirt-size" style="width:200px; height:30px; border-radius: 25px; background-color: white;color: black;"
                                    required">
                            <option>Select Size</option>
                            <option>XS</option>
                            <option>S</option>
                            <option>M</option>
                            <option>L</option>
                            <option>XL</option>
                            <option>XXL</option>
                            </select>
                            </td>
                        </tr>

                        <tr align="center"> </tr>
                            <td colspan="2">
                                <input type="submit" onclick="alert('Order has been successfull placed')" value="Submit" style="width: 100px;height: 25px;border-radius: 30px;background-color: black;color: white;">
                            </td>

                </table>

            </form>
        </div>

</body>
</html>