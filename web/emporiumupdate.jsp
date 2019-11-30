<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <body>
        <%try {
                int y = 0;
                MyCon x = new MyCon();
                Connection c = x.tcon();
                String rname, cno, emailid, un, rps, ps, details;
                cno = request.getParameter("cno");
                emailid = session.getAttribute("emailid").toString();
                un = request.getParameter("un");
                ps = request.getParameter("ps");
                rps = request.getParameter("rps");
                details = request.getParameter("details");
                if (!(emailid.equalsIgnoreCase(""))) {
                    if (!(un.equalsIgnoreCase(""))) {
                        if (!(ps.equalsIgnoreCase(""))) {
                            if (ps.matches(rps)) {
                                PreparedStatement pst = c.prepareStatement("update rest SET cno=?,un=?,ps=?,details=? where emailid=?");
                                pst.setString(1, cno);
                                pst.setString(2, un);
                                pst.setString(3, ps);
                                pst.setString(4, details);
                                pst.setString(5, emailid);
                                y = pst.executeUpdate();
                            }
                        }
                    }
                }
                if (y > 0) {
                    session.setAttribute("uname", un);
                    response.sendRedirect("update.jsp?msg=Update sucessful");
                } else {
                    response.sendRedirect("update.jsp?msg=Update UnSuccessful");
                }
            } catch (Exception e) {
                response.sendRedirect("update.jsp?msg=Update UnSuccessful" + e);
            }
        %>
    </body>
</html>
