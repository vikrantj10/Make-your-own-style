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
 <style>
        .tdtheme{
            width: 15%;
            height: 35px;

           
            border-radius: 11px;
            font-family: bold;
            font-size: 23px;  
            text-align: center;
         
        }
        a{ 
        text-decoration: none;
        color: white;
 
        }
        
        .tdtheme:hover{
          
            transform: scale(1.1);
            
        }        </style>
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
    <div style="background-image: url('001.png');background-size: cover;background-repeat: no-repeat; background-position: center; ">





    <div style="  background: linear-gradient(to right, #000066 0%, #ff6600 100%); height:12%;border-radius: 12px">

        <table width="65%" style="float: right; margin-top: 2%;">

            <tr align="center">
            <td class="tdtheme"><a href="CustomerWelcomePage.jsp" style="color:whitesmoke;text-decoration:none">HOME</td>
            <td class="tdtheme"><a href="Designing.jsp" style="color:whitesmoke;text-decoration:none">Designing Studio</td>
            <td class="tdtheme"><a href="CustomerLogOut.jsp" style="color:whitesmoke;text-decoration:none">LOG OUT


                    </tr>
                    <img src="tlogo.png" style=" width: 14%; border-radius: 12px; margin-top:0.2%;margin-left: 0.5%;">
                        
        </table>
        </div>
        </div>
         <div style="width: 95%; height: 700%; margin-left: 55px;margin-top: 1%; border-radius: 30px;
                   background: rgba(255,255,255,0.5)" >
                  <table>
    <div style="margin-top:3rem">
      
       
      
        <h1>Your Orders:</h1>
       <th style ="font-size:20px; font-family:arial; font-weight:bold;">
         Name
       </th>
       
       
         <th style ="font-size:20px; font-family:arial; font-weight:bold;">
          Design
       </th>
   
       
         <th style ="font-size:20px; font-family:arial; font-weight:bold;">
        Expected Delivery
            </th>
            
             <th style ="font-size:20px; font-family:arial; font-weight:bold;">
                 
          Status
       </th>
       
        <th style ="font-size:20px; font-family:arial; font-weight:bold;">
       Designer Name
 

<%
for(int i=0;i<list.size();i++)
{
%>
<tr style="background-color: whitesmoke">
    <td style="font-size: 20px;"><%= list.get(i).getProduct_name() %></td>
    <td style="font-size: 20px;"><img src="images/<%=list.get(i).getImage() %>"style="width:44rem"class="img1"></td>
    <td style="font-size: 20px;"><%= list.get(i).getOrdered_delievery() %></td>
    <td style="font-size: 20px;"><%=list.get(i).getOrdered_status() %></td>
    <td style="font-size: 20px;"><%= list.get(i).getFirst_name() %></td>
   </tr>
   <%}%>
    </table>
</div>
              </div> 

</body>
</html>