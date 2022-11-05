<%@page import="com.t_shadow.CustomerModel"%>
<html>
<style>
    .drawing-area {
        position: absolute;
        top: 60px;
        left: 122px;
        z-index: 10;
        width: 200px;
        height: 400px;
    }

    .canvas-container {
        width: 200px;
        height: 400px;
        position: relative;
        user-select: none;
    }

    #tshirt-div {
        width: 452px;
        height: 540px;
        position: relative;
        background-color: #fff;
        margin-left: 35%;
        margin-top: 1.5%;
    }


    #canvas {
        position: absolute;
        width: 200px;
        height: 400px;
        left: 0px;
        top: 0px;
        user-select: none;
        cursor: default;
    }

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
        color: blue;

    }

    .form-popup {
        display: none;
        position: fixed;
        bottom: 10%;
        left: 67%;
        border: solid;
        border-radius: 12px;
        width: 30%;
        border-color: black;
        right: 15px;
        background-image: url('001.png')
    }

    .tdtheme:hover {

        transform: scale(1.1);

    }
</style>

<body style="background-image: url('001.png')">
<%
CustomerModel cm = new CustomerModel();
cm=(CustomerModel)session.getAttribute("cm"); 
if(cm==null)
	response.sendRedirect("CustomerLoginPage.jsp");
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
    <div style="background-image: url('001.png');background-size: cover;background-repeat: no-repeat; background-position: center; ">





    <div style="  background: linear-gradient(to right, #000066 0%, #ff6600 100%); height:12%;border-radius: 12px">

        <table width="65%" style="float: right; margin-top: 2%;">

            <tr align="center">
            <td class="tdtheme"><a href="CustomerWelcomePage.jsp" style="color:whitesmoke;">HOME</td>
            <td class="tdtheme"><a href="Designing.jsp" style="color:whitesmoke;">Designing Studio</td>
            <td class="tdtheme"><a href="CustomerViewOrders.jsp" style="color:whitesmoke;">View Orders</td>
            <td class="tdtheme"><a href="CustomerLogOut.jsp" style="color:whitesmoke;">LOG OUT


                    </tr>
                    <img src="tlogo.png" style=" width: 14%; border-radius: 12px; margin-top:0.2%;margin-left: 0.5%;">
                        </div>
        </table>

        <!-- Create the container of the tool -->
        <div id="final-tshirt" style="width:80%;margin-left: 5%;">
            <div id="tshirt-div">
                <!-- 
                                        Initially, the image will have the background tshirt that has transparency
                                        So we can simply update the color with CSS or JavaScript dinamically
                                    -->
                <img id="tshirt-backgroundpicture" src="background_tshirt1.png"
                    style="margin-top: -1%;margin-left: 0%;" />

                <div id="drawingArea" class="drawing-area">
                    <div class="canvas-container">
                        <canvas id="tshirt-canvas" width="320" height="500" style="margin-left:-20%;"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <button onclick="myFunction()"
            style="height: 42%; border-radius: 17px;margin-left: 7%;
    margin-top: -12%;">Download Tshirt</button>
        <p style="margin-left: 33%;font-size: 16px;"">To remove a loaded picture on the T-Shirt select it and press the <kbd>DEL</kbd> key.</p>
                            <!-- The select that will allow the user to pick one of the static designs -->
                            <br>
                            <form action=" DesigningCode.jsp" style="border: solid;border-radius:7px ;border-color: black;width: 19%; height: 700%;
                                  margin-top: -41%; margin-left: 1%;">
        <table cellspacing="10" align="center">
            <tr align="center" bgcolor="darkblue">
                <td colspan="2" style="font-size:35px;color:white;font-weight:bold">Designing Tools
                </td>
            </tr>

            <tr>
                <td><label for="tshirt-design" style="font-size: 24px;">T-Shirt Design:</label>
                    <select name="design" id="tshirt-design" style="height: 26px;">
                        <option value="">Select one of our Clip arts / designs ...</option>
                        <option value="./batman_small.png">Batman</option>
                        <option value="Batman2.png">Batman2</option>
                        <option value="Superman.png">superman</option>
                        <option value="Ironman.png">Ironman</option>
                        <option value="ApnaTimeAyega.png">Apna Time Ayega</option>
                        <option value="Skull.png">Skull</option>
                        <option value="KKR.png">KKR</option>
                        <option value="RCB.png">RCB</option>
                        <option value="CSK.png">CSK</option>
                        <option value="DC.png">DC</option>
                        <option value="MI.png">MI</option>
                        <option value="SRH.png">SRH</option>
                        <option value="RR.png">RR</option>
                        <option value="KXIP.png">KXIP</option>
                        <option value="Joker.png">Joker</option>
                        <option value="BoyRunning.png">Boy Running</option>
                        <option value="GirlRunning.png">Girl Running</option>
                        <option value="Avengers.png">Avengers</option>
                        <option value="YouAreStrong.png">You are Strong</option>
                        <option value="Attitude.png">Attitude Quote</option>
                        <option value="ImagineQuotes.png">Imagine Quote</option>
                        <option value="IndianFlag.png">Indian Flag</option>


                    </select>
                </td>
            </tr>
            <!-- The Select that allows the user to change the color of the T-Shirt -->

            <tr>
                <td><label for="tshirt-color" style="font-size: 24px;">T-Shirt Color:</label>
                    <select name="color" id="tshirt-color" style="height: 26px;">
                        <!-- You can add any color with a new option and definings its hex code -->


                        <option value="#fff">White</option>
                        <option value="#000">Black</option>
                        <option value="#f00">Red</option>
                        <option value="#0080ff">Blue</option>
                        <option value="#008000">Green</option>
                        <option value="#ff0">Yellow</option>
                        
                    </select>
                </td>
            </tr>


            <tr>
                <td> <label for="tshirt-custompicture" style="font-size: 24px;">Upload your own design:</label>
                    <input type="file" name="upload" id="tshirt-custompicture" />
                </td>
            </tr>


            <table cellspacing="10" align="center">
                <tr align="center" bgcolor="darkblue">
                    <td colspan="2" style="font-size:35px;color:white;font-weight:bold">After Designing
                    </td>
                </tr>

                <tr>

                <tr>
                    <td>
                        <label for="tshirt-final" style="font-size: 24px;"> As final step,download your T-shirt:</label>
                    </td>
                </tr>
                </td>
                </td>

                <td colspan="2"><label style="font-size: 24px;">Delivery Address:</label>
                    <a href="AddImage.jsp">Click here for adding delivery details</a>
                </td>
            </table>

    </div>
    <script>
        function openForm() {
            document.getElementById("myForm").style.display = "block";
        }
        function closeForm() {
            document.getElementById("myForm").style.display = "none";
        }
    </script>

    </td>

    </form>

    <!-- Include DomToImage in the page -->
    <script src="./domtoimage.min.js"></script>
    <script>
        function myFunction() {
            console.log("new function");
            // Define as node the T-Shirt Div
            // Define as node the T-Shirt Div
            var node = document.getElementById('final-tshirt');

            domtoimage.toPng(node).then(function (dataUrl) {
                // Print the data URL of the picture in the Console
                console.log(dataUrl);

                // You can for example to test, add the image at the end of the document
                var img = new Image();
                img.src = dataUrl;
                //    document.body.appendChild(img);
                downloadImage(dataUrl)
            }).catch(function (error) {
                console.error('oops, something went wrong!', error);
            });
            // Print the data URL of the picture in the Console


            async function downloadImage(imageSrc) {
                const image = await fetch(imageSrc)
                const imageBlog = await image.blob()
                const imageURL = URL.createObjectURL(imageBlog)

                const link = document.createElement('a')
                link.href = imageURL
                link.download = 'tshirt'
                document.body.appendChild(link)
                link.click()
                document.body.removeChild(link)
            }
        }

    </script>

    <!-- Include Fabric.js in the page -->
    <script src="./fabric.min.js"></script>

    <script>
        let canvas = new fabric.Canvas('tshirt-canvas');

        function updateTshirtImage(imageURL) {
            fabric.Image.fromURL(imageURL, function (img) {
                img.scaleToHeight(300);
                img.scaleToWidth(300);
                canvas.centerObject(img);
                canvas.add(img);
                canvas.renderAll();
            });
        }

        // Update the TShirt color according to the selected color by the user
        document.getElementById("tshirt-color").addEventListener("change", function () {
            document.getElementById("tshirt-div").style.backgroundColor = this.value;
        }, false);

        // Update the TShirt color according to the selected color by the user
        document.getElementById("tshirt-design").addEventListener("change", function () {

            // Call the updateTshirtImage method providing as first argument the URL
            // of the image provided by the select
            updateTshirtImage(this.value);
        }, false);


        // When the user clicks on upload a custom picture
        document.getElementById('tshirt-custompicture').addEventListener("change", function (e) {
            var reader = new FileReader();

            reader.onload = function (event) {
                var imgObj = new Image();
                imgObj.src = event.target.result;

                // When the picture loads, create the image in Fabric.js
                imgObj.onload = function () {
                    var img = new fabric.Image(imgObj);

                    img.scaleToHeight(300);
                    img.scaleToWidth(300);
                    canvas.centerObject(img);
                    canvas.add(img);
                    canvas.renderAll();
                };
            };

            // If the user selected a picture, load it
            if (e.target.files[0]) {
                reader.readAsDataURL(e.target.files[0]);
            }
        }, false);

        // When the user selects a picture that has been added and press the DEL key
        // The object will be removed !
        document.addEventListener("keydown", function (e) {
            var keyCode = e.keyCode;

            if (keyCode == 46) {
                console.log("Removing selected element on Fabric.js on DELETE key !");
                canvas.remove(canvas.getActiveObject());
            }
        }, false);


    </script>


    <!-- Include DomToImage in the page -->


</body>

</html>