<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <style>
        body{background-color: #ffffa8;color: black}
        .txt{width:200px;font-size:16px;color:green;margin-bottom:10px;border-radius:4px;padding:2px;font-style: italic;}
        h1{color: hotpink;font-size:  40px;}
        .btn{width:160px;font-size:16px;color:red;margin-bottom:10px;border-radius:4px;padding:6px;}
        .txt:focus{width:200px;font-size:16px;color:green;margin-bottom:10px;border-radius:4px;border-color:red;size: 30px;}
        .d21{float:left;width:15%;height: 600px;color: red;font-size: 20px;line-height: 35px;position: relative;}
        .d22{float:  left;width:50%;height: 400px;color: aliceblue;font-size: 20px;}
    </style>
    <body>
        <br/>
        <i><b><h1>Update Profile</h1>
                <%try {
                        int y = 0;
                        MyCon x = new MyCon();
                        Connection c = x.tcon();
                        String rname, emailid, cno, un, rps, nps, ps, details;
                        emailid = session.getAttribute("emailid").toString();
                        PreparedStatement pst = c.prepareStatement("select * from rest where emailid=?");
                        pst.setString(1, emailid);
                        ResultSet rs = pst.executeQuery();
                        rs.next();
                        cno = rs.getString("cno");
                        un = rs.getString("un");
                        ps = rs.getString("ps");
                        details = rs.getString("details");
                %>
                <div>
                    <div class="d21">
                        User Name<br/>
                        Password<br/>
                        Re Password<br/>
                        Contact no<br/>
                        Detail<br/>
                    </div>
                    <div class="d22"> 
                        <form action="emporiumupdate.jsp?" >
                            :&nbsp;&nbsp;<input type="text" name="un" value="<%=un%>" placeholder="User Name" class="txt"/><br/>
                            :&nbsp;&nbsp;<input type="password" name="ps" value="" placeholder="Password" class="txt"/><br/>
                            :&nbsp;&nbsp;<input type="password" name="rps" value="" placeholder="rePassword" class="txt"/><br/>
                            :&nbsp;&nbsp;<input type="text" name="cno" value="<%=cno%>" placeholder="Contact no" class="txt"/><br/>
                            :&nbsp;&nbsp;<input type="text" name="details" value="<%=details%>" placeholder="Details" class="txt"/><br/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit"  class="btn" style="size: 30px;font-style: italic"/><br/>
                        </form>
                        <p style="color: red;font-size: 30px">
                            <%
                                    if (request.getParameter("msg") != null) {
                                        out.print(request.getParameter("msg"));
                                    } 
                                } catch (Exception e) {
                                }
                            %></p>
                    </div>
                </div></b></i>
    </body>
</html>