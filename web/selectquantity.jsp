<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*,java.util.*"%>
<%@include file="userhead.jsp" %>
<style>
    body{height:100%}
    .main{width:100%;height:1500px;}
    .btn{width:190px;font-size:30px;color:black;margin-left: 15%;margin-bottom:10px;border-radius:4px;padding:2px;}
    label{margin-left:10px;display: inline-block;float: left;clear: left;width: 250px;text-align: center;}
    input {margin-right:30px;text-align: center;display : inline-block;float: left;width:200px;font-size:16px;color:green;margin-bottom:10px;border-radius:4px;padding:2px;}
    .a{text-align:center;border:none;color:crimson}
</style>
<div class="main">
    <b><i><h1 style="color: #ec7063 ;text-indent: 8%;">Select Quantity </h1></i></b><br/>
    <%try {
            String[] slist = request.getParameterValues("slist");
            int len = slist.length;
            MyCon x = new MyCon();
            Connection c = x.tcon();
            PreparedStatement pst1 = c.prepareStatement("Drop table selected");
            pst1.execute();
            PreparedStatement pst2 = c.prepareStatement("CREATE TABLE selected ( item VARCHAR(45) NOT NULL, PRIMARY KEY (item))");
            pst2.execute();
            int mrp[] = new int[len];
            int i = 0;
            PreparedStatement pst3 = c.prepareStatement("select * from list where name =?");
            while (i < len) {
                pst3.setString(1, slist[i]);
                ResultSet rs = pst3.executeQuery();
                rs.next();
                mrp[i] = rs.getInt("mrp");
                PreparedStatement pst4 = c.prepareStatement("insert into selected (item) values (?)");
                pst4.setString(1, slist[i]);
                pst4.executeUpdate();
                i++;}
    %>
    <label class="a">Product Name</label><lable class="a" >MRP</lable><lable class="a"><% out.print("\t\t\t\t\t");%>Quantity</lable> <br/><br/><br/>
    <form action="review.jsp">
        <% for (i = 0; i < len; i++) {%>
        <label><% out.print(slist[i]);%></label>
        <input type="text" value="<% out.print(mrp[i]);%>" style="background-color:white;border:none;" name="mrp" onfocus="this.blur();"/>
        <input type="number" min="0" max="20" value="0" name="qty" />
        <%}%><br/><br/><br/>
        <br/><br/>
        <input type="submit" value="submit" class="btn"/>
        <%
            } catch (Exception e) {
                response.sendRedirect("order.jsp?msg=select some items to proceed");
            }%>
    </form>
</div>
<%@include file="footer.jsp" %><style>footer{position:static}</style>
</body>
</html>