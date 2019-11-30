<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emporium</title>
    </head>
    <body>
        <%try {
                int y = 0;
                MyCon x = new MyCon();
                Connection c = x.tcon();
                String  cno, emailid, un, rps, ps, details;
                cno = request.getParameter("cno");
                emailid = request.getParameter("emailid");
                un = request.getParameter("un");
                ps = request.getParameter("ps");
                rps = request.getParameter("rps");
                details = request.getParameter("details");
                    if (!(emailid.equalsIgnoreCase(""))) {
                        if (!(un.equalsIgnoreCase(""))) {
                            if (!(ps.equalsIgnoreCase(""))) {
                                if (ps.matches(rps)) {
                                    PreparedStatement pst = c.prepareStatement("insert into rest(cno,emailid,un,ps,details) values(?,?,?,?,?)");
                                    pst.setString(1, cno);
                                    pst.setString(2, emailid);
                                    pst.setString(3, un);
                                    pst.setString(4, ps);
                                    pst.setString(5, details);
                                    y = pst.executeUpdate();
                                }
                            }
                        }
                    }
                if (y > 0) {
                    session.setAttribute("emailid", emailid);
                    session.setAttribute("uname", un);
                    response.sendRedirect("emporiumhome.jsp");
                } else {
                    response.sendRedirect("usersSignUp.jsp?msg=Registration UnSuccessful");
                }

            } catch (Exception e) {
                response.sendRedirect("usersSignUp.jsp?msg=Registration UnSuccessful"+e);
            }
        %>
    </body>
</html>