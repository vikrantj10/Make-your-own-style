<%@page import="com.t_shadow.DesignerModel"%>
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

<body style="background-image: url('001.png')">
<%
DesignerModel dm = new DesignerModel();
dm=(DesignerModel)session.getAttribute("dm"); 
if(dm==null)
	response.sendRedirect("DesignerLoginPage.jsp");
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
    <div
    style="background-image: url('001.png');background-size: cover;background-repeat: no-repeat; background-position: center; ">





    <div style="  background: linear-gradient(to right, #000066 0%, #ff6600 100%); height:12%;border-radius: 12px">

        <table width="71%" style="float: right; margin-top: 2%;">
          
            <tr align=" center">
            <td class="tdtheme"><a href="DesignerWelcomePage.jsp" style="color:whitesmoke;">HOME</td>
            <td class="tdtheme"><a href="ViewOrders.jsp" style="color:whitesmoke;">View Orders</td>
            <td class="tdtheme"><a href="DesignerLogOut.jsp" style="color:whitesmoke;">LOG OUT


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