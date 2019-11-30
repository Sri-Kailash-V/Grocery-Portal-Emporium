<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<html>
    <style>
        body{background-color: #ffffa8;color: black}
        table {border-collapse: collapse;width: 40%;border: 1px solid black;}
        td {width: 20%;text-align: left;padding: 8px;}
        tr:nth-child(odd) {background-color: #f2f2f2;}
    </style>
    <body >
        <%try {
                String emailid = session.getAttribute("emailid").toString();
                MyCon x = new MyCon();
                Connection c = x.tcon();
                PreparedStatement pst = c.prepareStatement("select * from rest where emailid=?");
                pst.setString(1, emailid);
                ResultSet rs = pst.executeQuery();
                rs.next();
        %>
        <b><i><table><h2>Profile Details</h2>
                    <tr><td>Email id </td><td>:  <%out.print(rs.getString("emailid"));%></td></tr>
                    <tr><td>User Name </td><td>:  <%out.print(rs.getString("un"));%></td></tr>
                    <tr><td>Phone number </td><td>:  <%out.print(rs.getString("cno"));%></td></tr>
                    <tr><td>Details </td><td>:  <%out.print(rs.getString("details"));%></td></tr>
                </table>
            </i></b> 
            <%} catch (Exception e) {
                    out.print(e);}
            %>
    </body>
</html>