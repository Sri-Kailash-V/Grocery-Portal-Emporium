<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emporium</title>
        <style>
            a{color:white;text-decoration: none;}
            img{width:500px;height:200px;padding:10px;margin-left:10px;margin-top:10px;float: left;}
            .p1{width:90px;padding:5px;text-decoration:none;font-size:20px;margin-top:5px;color:green;}
            .div1i{ background-color: #ffbae0;height: 30px;color: blueviolet;padding: 3px;}
            .div11{float: left;width: 88%;}
            .div12{float: left;}
            .p1:hover {background-color: #555;color: white;padding: 3px;border-bottom: 3px;height: 100%;}
        </style>
    </head>
    <body>
        <img src="img/emporium.jpg" > <br/>
        <i><b><h1 style="color: #ec7063;font-size: 40px">Emporium
                    <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Online food store
                </h1>
                <h3 style="color: #ec7063;font-size: 40px"> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <% String un = session.getAttribute("uname").toString();
                        out.println("Welcome " + un);
                    %>
                </h3>
                <hr />
                <div class="div1i">
                    <div class="div11">
                        <a href="emporiumhome.jsp" class="p1">Home</a>
                        <a href="order.jsp" class="p1">Order Groceries</a>
                    </div>
                    <div class="div12"><a href="emporiumlogout.jsp" class="p1" >Logout</a>
                        <a href="emporiumsettings.jsp" class="p1" >Settings</a>
                    </div>
                </div>
            </b></i>