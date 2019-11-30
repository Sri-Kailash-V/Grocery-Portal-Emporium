<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<%@include file="userhead.jsp" %>
<%String price = request.getParameter("price");
    String items = request.getParameter("items");
    String quantity = request.getParameter("quantity");
    int pr = Integer.parseInt(price);
%>
<BR>
<p style="font-size: 40px;color: #f83523;">order places sucessfully at<br/>
    Time=<%="\t\t\t\"" + (new java.util.Date()).toLocaleString()%>"</p>
<br/>
<p style="font-size: 30px;color: #f83523;">
    items=<%=items%><br/>quantity=<%=quantity%><br/>price=<%=pr%>
</p>
<br/>
<a href="emporiumhome.jsp?">
    <button class="btn" style="width:190px;
            font-size:30px;
            color:black;
            margin-left: 15%;
            margin-bottom:10px;
            border-radius:4px;
            padding:2px;">home</button>
</a> 
<%@include file="footer.jsp" %>
</body>
</html>