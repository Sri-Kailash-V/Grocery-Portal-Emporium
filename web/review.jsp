<%@page import="javax.persistence.criteria.CriteriaBuilder.In"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*,java.util.*"%>
<%@include file="userhead.jsp" %>
<style>
    body{height:95%}
    .main{width:100%;height:500px;}
    .btn{width:190px;font-size:30px;color:black;margin-left: 15%;margin-bottom:10px;border-radius:4px;padding:2px;}
    body{background-color: #ffffa8;color: black}
    table {border-collapse: collapse;width: 40%;border: 1px solid black;}
    td {width: 20%;text-align: left;padding: 8px;}
    tr:nth-child(odd) {background-color: #f2f2f2;}
</style>
<body>
    <div class="main">
        <b><i><h1 style="color: #ec7063 ;text-indent: 8%;">Review Order </h1></i></b><br/>
        <%            String[] qtyy = request.getParameterValues("qty");
            String[] mrpp = request.getParameterValues("mrp");
            int len = qtyy.length;
            int i = 0, qt = 0, pr = 0,item=0;
            int qty[] = new int[len];
            int mrp[] = new int[len];
            int price[] = new int[len];
            MyCon x = new MyCon();
            Connection c = x.tcon();
            PreparedStatement pst = c.prepareStatement("select * from selected");
            ResultSet rs = pst.executeQuery();
            for (i = 0; i < len; i++) {
                qty[i] = Integer.parseInt(qtyy[i]);
                mrp[i] = Integer.parseInt(mrpp[i]);
                price[i] = mrp[i] * qty[i];
                if (price[i] > 0) {
                    qt += qty[i];
                    pr += price[i];
                    item++;
                }
            }
            if (pr <= 0) {
                response.sendRedirect("order.jsp?msg=select some quantity to be placed");
            }
        %>
        <table>
            <tr><td>Product Name</td><td>Quantity</td><td>MRP</td><td>price</td></tr>
            <% for (i = 0; i < len; i++) {
                    rs.next();%>
            <tr><td><%=rs.getString(1)%></td><td><%=qtyy[i]%></td><td><%=mrp[i]%></td><td><%=price[i]%></td></tr>
            <% }%>
        </table>
        <br/><br/><br/><br/>
        <table>
            <tr><td>Total Quantity</td><td><%=qt%></td></tr>
            <tr><td>Total Price</td><td><%=pr%></td></tr>
        </table>
        <a href="placed.jsp?items=<%=item%>&quantity=<%out.print(qt);%>&price=<%out.print(pr);%>">
            <br/><br/><br/>
            <button class="btn">submit</button>
        </a> 
    </div>
    <%@include file="footer.jsp" %><style>footer{position:static}</style>
</body>
</html>