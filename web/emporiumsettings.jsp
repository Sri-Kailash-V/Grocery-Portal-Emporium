<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<%@include file="userhead.jsp" %>
<style>
    ul {list-style-type: none;margin: 0;padding: 0;width: 25%;background-color: lightgoldenrodyellow;position:absolute;height: 56%;overflow: auto;}
    li a {display: block;color: #000;padding: 8px 16px;text-decoration: none;}
    li a.active {background-color: #4CAF50;color: white;}
    li a:hover:not(.active) {background-color: #555;color: white;}
    .hh2{padding: 1px 30%;background-color: coral;color: aqua;}
</style>
</head>
<body height="600">
    <ul>
        <li class="hh2"><i><b><h2>Settings</h2></b></i></li>
        <li><a href="profile.jsp" target="frame">Profile</a></li>
        <li><a href="update.jsp"target="frame">Update Profile</a></li>
        <li><a href="about.jsp" target="frame">About</a></li>
    </ul>
    <iframe src="profile.jsp" style="border: none;margin-left:25%;width:75%;" height="477" name="frame"></iframe>
    <%@include file="footer.jsp" %>
</body>
</html>