<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<%@include file="userhead.jsp" %>
<style>
    .main{width:100%;height:500px;}
    .btn{width:150px;font-size:20px;color:black;margin-left: 15%;margin-bottom:10px;border-radius:4px;padding:2px;}
</style>
<%  try {
        if (request.getParameter("msg") != null) {
%> <b><i><h2 style="color: #ec7063 ;text-indent: 8%;">
            <%out.print(request.getParameter("msg"));%>
        </h2> </i> </b>
        <% }
            MyCon x = new MyCon();
            Connection c = x.tcon();
            PreparedStatement pst = c.prepareStatement("select * from list");
            ResultSet rs = pst.executeQuery();
        %>
<div class="main">
    <b><i><h1 style="color: #ec7063 ;text-indent: 8%">Select Grocery items</h1></i></b><br/>
    <form action="selectquantity.jsp?">
        <% while (rs.next()) {%>
        <input type="checkbox" name="slist" value="<%=rs.getString(1)%>" style="margin-left: 10%;margin-bottom: 10px;"/><lable style="font-size: 20px;margin-left: 3%"><%=rs.getString(1)%></lable><br/>
            <%}
            %>
        <br/>
        <input type="submit" value="submit" class="btn"/>
    </form>
    <%} catch (Exception e) {
        }%>
</div>
</div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@include file="footer.jsp" %>
<style>footer{position:static  }</style>
</body>
</html>