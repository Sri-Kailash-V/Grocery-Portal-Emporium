<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emporium logout</title>
    </head>
    <body>
         <%@include file="indexhead.jsp" %>
        <%
           session.invalidate();
           response.sendRedirect("usersSignIn.jsp");
        %>
    </body>
</html>