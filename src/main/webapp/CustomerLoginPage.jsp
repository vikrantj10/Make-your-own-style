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
     <div style="background-image: url('001.png');background-size: cover;background-repeat: no-repeat; background-position: center;">

    <div style="  background: linear-gradient(to right, #000066 0%, #ff6600 100%); height:12%;border-radius: 12px">

        <table width="40%" style="float: right; margin-top: 2%;">
          
            <tr align=" center">
            <td class="tdtheme"><a href="home.jsp" style="color:whitesmoke;">HOME</td>
            <td class="tdtheme"><a href="" style="color:whitesmoke;">ABOUT</td>
            <td class="tdtheme"><a href="" style="color:whitesmoke;">CONTACT US</td>

            <td class="tdtheme"><a href="UserForm.jsp" style="color:whitesmoke;">SIGN UP

    </div>


    </tr>
    <img src="tlogo.png" style=" width: 14%; border-radius: 12px; margin-top:0.2%;margin-left: 0.5%;"></div>
    </table>
    <div align="center">
        <form action="CustomerLoginCheck.jsp"
            style=" border: solid;border-radius: 5%;border-color: black;width:25%; margin:5%;height: 300%;">
            <table cellspacing="10" align="center">
                <tr align="center" bgcolor="darkblue">
                    <td colspan="2" style="font-size:35px;color:white;font-weight:bold">Sign In
                    </td>
                </tr>
                <tr>
                    <td>EMAIL</td>
                    <td><input type="text" name="email" placeholder="Email"
                            style="width:200px;height: 30px;border-radius: 25px;background-color: white;color:black">
                    </td>
                </tr>
                <td>PASSWORD</td>
                <td><input type="password" name="password" placeholder="password" style="width: 200px;height: 30px;border-radius: 25px; background-color: white;
                       color: black">
                </td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="Submit" value="Login" name="btn"
                            style="width: 100px;height:23px;border-radius: 30px;background-color: black;  color: white">
            </table>

        </form>
    </div>
</body>

</html>