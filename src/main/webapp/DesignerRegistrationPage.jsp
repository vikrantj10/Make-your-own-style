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
    <div style="background-image: url('001.png');background-size: cover;background-repeat: no-repeat; background-position: center;">

    <div style=" background: linear-gradient(to right, #000066 0%, #ff6600 100%); height:12%;border-radius: 12px">

        <table width="37%" style="float: right; margin-top: 2%;">
          
            <tr align="center">
            <td class="tdtheme"><a href="home.jsp" style="color:whitesmoke;">HOME</td>
            <td class="tdtheme"><a href="About.jsp" style="color:whitesmoke;">ABOUT</td>
            <td class="tdtheme"><a href="Contact.jsp" style="color:whitesmoke;">CONTACT US</td>
            <td class="tdtheme"><a href="UserForm.jsp" style="color:whitesmoke;">SIGN UP</td>
            </tr>
            <img src="tlogo.png" style=" width: 14%; border-radius: 12px; margin-top:0.2%;margin-left: 0.5%;">
        </div>
        </table>



        <div style="margin-top: 5%;">
            <form action="DesignerReg.jsp"
                style=" border: solid;border-color: black; border-radius: 5%;width:35%; margin:auto ">
                <table cellspacing="10" align="center">
                    <tr align="center" bgcolor="darkblue">
                        <td colspan="2" style="font-size:35px;color:white;font-weight:bold">Sign UP (User)
                    </tr>
                    </td>
                    <tr>

                        <td>FULL NAME:</td>
                        <td>
                            <input type="text" name="First_Name" placeholder="First_Name"
                                style="width:200px; height:30px; border-radius: 25px; background-color: white;color:black"
                                required>
                        </td>
                    </tr>
                    <tr>
                        <td>LAST NAME</td>
                        <td>
                            <input type="text" name="Last_Name" placeholder="Last_Name" style="width:200px; height:30px; border-radius: 25px; background-color: white
                                   ;color: black;" required>
                        </td>
                    </tr>

                    <tr>
                        <td>MOBILE NO</td>
                        <td>
                            <input type="text" name="Mobile_No" placeholder="Mobile_No"
                                style="width:200px; height:30px; border-radius: 25px; background-color: white;color: black;"
                                required>
                        </td>
                    </tr>

                       <tr>
                            <td>EMAIL:</td>
                            <td>
                                <input type="text" name="Email" placeholder="Email"
                                    style="width:200px; height:30px; border-radius: 30px; background-color: white;color: black;"
                                    required>
                            </td>
                        </tr>


                        <tr>
                            <td>PASSWORD</td>
                            <td>
                                <input type="password" name="password" placeholder="password"
                                    style="width:200px; height:30px; border-radius: 25px; background-color: white;color: black;"
                                    required>
                            </td>
                        </tr>

                        <tr>

                        <tr align="center"> </tr>
                            <td colspan="2">
                                <input class="submit" type="submit" value="Sign Up"
                                    onclick="alert('Registration Successfull')"
                                    style="width: 100px;height: 25px;border-radius: 30px;background-color: black;color: white;">
                            </td>

                </table>

            </form>
        </div>
</body>

</html>