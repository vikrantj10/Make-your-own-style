<%@page import="com.t_shadow.CustomerModel"%>
<html>
<style>
    .tdtheme {
        width: 15%;
        height: 35px;


        border-radius: 11px;
        font-family: bold;
        font-size: 23px;
        text-align: center;

    }

    a {
        text-decoration: none;
        color: white;

    }

    .tdtheme:hover {

        transform: scale(1.1);

    }
</style>

<body> 
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
            <td class="tdtheme"><a href="home.jsp" style="color:whitesmoke;">HOME</td>
            <td class="tdtheme"><a href="Designing.jsp" style="color:whitesmoke;">Designing Studio</td>
            <td class="tdtheme"><a href="CustomerViewOrders.jsp" style="color:whitesmoke;">View Orders</td>
            <td class="tdtheme"><a href="Complain.jsp" style="color:whitesmoke;">Complain</td>
            <td class="tdtheme"><a href="Edit.jsp" style="color:whitesmoke;">Edit-Profile</td>
            <td class="tdtheme"><a href="CustomerLogOut.jsp" style="color:whitesmoke;">LOG OUT


                    </tr>
                    <img src="tlogo.png" style=" width: 14%; border-radius: 12px; margin-top:0.2%;margin-left: 0.5%;">
                        </div>
        </table>

        <div>
            <img src="d2.jpg" style="width: 100%; height:390%;margin-top: 0.5%;">

        </div>
        <div>
            <img src="dd.jpg" style="width: 80%; height:335%;margin-top: 0.3%; margin-left: 10%;">

        </div>

</body>

</html>