<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv=F"Content-Type" content="text/html; charset=UTF-8">
        <title>Emporium</title>
    </head>
    <body>
        <style>
            .con{width:100%;background:url(img/ra1.jpg);height:100px;}
            .c1{width:40%;font-size:72px;color:white;float:left;padding:10px;}
            .c2{width:55%;color:white;float:right;text-align:right;padding:25px;}
            .p1{width:90px;padding:5px;text-decoration:none;font-size:25px;margin-top:5px;color:white;}
            .p1:hover{color:orange;}
        </style>
        <div class="con">
            <div class="c1"><b><i>Emporium</i></b></div>
            <div class="c2">
                <b><i><a href="index.jsp" class="p1">Home</a>
                        <a href="usersSignIn.jsp" class="p1">User</a>
                    </i></b>
            </div>            
        </div>