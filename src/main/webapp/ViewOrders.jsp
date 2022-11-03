<%@page import="com.t_shadow.ShowDesignerDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.t_shadow.UserDao"%>
<%@page import="com.t_shadow.DesignerModel"%>
<%@page import="java.sql.DriverManager,java.sql.Connection"  %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>

<html>
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
   
        <body> 
        <%
DesignerModel dm = new DesignerModel();
UserDao ud = new UserDao();
dm=(DesignerModel)session.getAttribute("dm"); 
List<ShowDesignerDetails> list = new ArrayList<>();
ud.getAll(list, dm);
if(dm==null)
	response.sendRedirect("DesignerLoginPage.jsp");
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
         <div style="background-image: url('001.png');background-size: cover;background-repeat: no-repeat; background-position: center; " >
               
          
       
           
          
          <div style="  background: linear-gradient(to right, #000066 0%, #ff6600 100%); height:12%;border-radius: 12px">

            <table width="71%"style="float: right; margin-top: 2%;">
          
            <tr align="center">
            <td class="tdtheme"><a href="home.jsp" style="color:whitesmoke;">HOME</td>
            <td class="tdtheme"><a href="ViewOrders.jsp" style="color:whitesmoke;">View Orders</td>
            <td class="tdtheme"><a href="UpdateOrderPage.jsp" style="color:whitesmoke;">UpdateOrder</td>
            <td class="tdtheme"><a href="ViewComplain.jsp" style="color:whitesmoke;">View Complains</td>
            <td class="tdtheme"><a href="ViewMessage.jsp" style="color:whitesmoke;">View Message</td>
            <td class="tdtheme"><a href="Edit.jsp" style="color:whitesmoke;">Edit-Profile</td>
             <td class="tdtheme"><a href="DesignerLogOut.jsp" style="color:whitesmoke;">LOG OUT
            

            </tr>       
            <img src="tlogo.png" style=" width: 14%; border-radius: 12px; margin-top:0.2%;margin-left: 0.5%;"> 
                 
               </div>
    </table>
            
             
               <div style="width: 95%; height: 700%; margin-left: 55px;margin-top: 1%; border-radius: 30px;
                   background: rgba(255,255,255,0.5)" >
                  <table>
    <div>
      
       
      
        <h1>User Orders:</h1>
       <th style ="font-size:20px; font-family:arial; font-weight:bold;">
         Order ID
       </th>
       
       
         <th style ="font-size:20px; font-family:arial; font-weight:bold;">
          Design
       </th>
   
       
         <th style ="font-size:20px; font-family:arial; font-weight:bold;">
        First Name
            </th>
            
             <th style ="font-size:20px; font-family:arial; font-weight:bold;">
                 
          Last Name
       </th>
       
        <th style ="font-size:20px; font-family:arial; font-weight:bold;">
        Mobile No
       </th>
       
        <th style ="font-size:20px; font-family:arial; font-weight:bold;">
       City
       </th>
       
        <th style ="font-size:20px; font-family:arial; font-weight:bold;">
       Street
       </th>
       
        
    
<%
for(ShowDesignerDetails sdd : list)
{
%>
<tr style="background-color: whitesmoke">
    <td style="font-size: 20px;"><%= sdd.getOrder_id() %></td>
    <td style="font-size: 20px;"><img src="images/<%=sdd.getImage()%>" class="img1"></td>
    <td style="font-size: 20px;"><%= sdd.getFirst_name() %></td>
    <td style="font-size: 20px;"><%= sdd.getLast_name() %></td>
    <td style="font-size: 20px;"><%= sdd.getMobile_no() %></td>
    <td style="font-size: 20px;"><%= sdd.getCity() %></td>
    <td style="font-size: 20px;"><%= sdd.getStreet() %></td>
   </tr>
   <%}%>
    </table>
</div>
              </div> 
             
    <tr align="center">
        <td>
            <input type="button" value="Take Print" onclick="callPrint()"style="margin-left: 94%;">
        </td>
    </tr>
    <script>
        function callPrint()
        {
            window.print();
        }
        </script>
        
    </body>
</html>
    </body>
</html>