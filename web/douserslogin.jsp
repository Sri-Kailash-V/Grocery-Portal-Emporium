<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Emporium</title>
    </head>
    <body>
        <%try {
                int y = 0;
                MyCon x = new MyCon();
                Connection c = x.tcon();
                String emailid, ps;
                emailid = request.getParameter("emailid");
                ps = request.getParameter("ps");
                if ((emailid.equalsIgnoreCase(""))) {
                    response.sendRedirect("usersSignIn.jsp?msg=Enter Valid Details");
                }
                if ((ps.equalsIgnoreCase(""))) {
                    response.sendRedirect("usersSignIn.jsp?msg=Enter Valid Details");
                }
                PreparedStatement pst = c.prepareStatement("select * from rest where emailid=? and ps=?");
                pst.setString(1, emailid);
                pst.setString(2, ps);
                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    session.setAttribute("emailid", emailid);
                    session.setAttribute("uname", rs.getString("un"));
                    response.sendRedirect("emporiumhome.jsp");
                } else {
                    response.sendRedirect("usersSignIn.jsp?msg=Invalid Login Details");
                }
            } catch (Exception e) {
                response.sendRedirect("usersSignIn.jsp?msg=Enter Valid Details");
            }
        %>
    </body> 
</html>