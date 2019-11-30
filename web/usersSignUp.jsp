<%@include file="indexhead.jsp" %>
<style>
    .txt{width:200px;font-size:16px;color:green;margin-bottom:10px;border-radius:4px;padding:2px;font-style: italic;}
    h1{color: hotpink;font-size:  40px;}
    .btn{width:160px;font-size:16px;color:red;margin-bottom:10px;border-radius:4px;padding:6px;}
    .txt:focus{width:200px;font-size:16px;color:green;margin-bottom:10px;border-radius:4px;border-color:red;size: 30px;}
    body{background:url(img/ra1.jpg);font-style: italic;font-weight: bold}
    .d21{float:left;width:15%;height: 600px; color: aliceblue;font-size: 20px;line-height: 35px;position: relative;}
    .d22{float:  left;width:50%;height: 400px;color: aliceblue;font-size: 20px;float: center;}
    .ull {  width:70%;list-style-type: none;padding: 0;overflow: hidden;font-size: 30px;}
    .ll {float: left;}
    .ll a {display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;}
</style>
<div>
    <div>
        <ul class="ull">
            <li class="ll">
                <a href="usersSignUp.jsp" style="width: 130px">SignUp</a>
            </li> 
            <li class="ll">
                <a  href="usersSignIn.jsp" style="width: 130px">SignIn</a>
            </li>
        </ul>
        <h1>User Register Form</h1>
    </div>
    <div>
        <div class="d21">
            Email id<br/>
            User Name<br/>
            Password<br/>
            Re Password<br/>
            Contact no<br/>
            Detail<br/>
        </div>
        <div class="d22"> 
            <form action="dousersregister.jsp?" >
                :&nbsp;&nbsp;<input type="text" name="emailid" value="" placeholder="Email id" class="txt"/><br/>
                :&nbsp;&nbsp;<input type="text" name="un" value="" placeholder="User Name" class="txt"/><br/>
                :&nbsp;&nbsp;<input type="password" name="ps" value="" placeholder="Password" class="txt"/><br/>
                :&nbsp;&nbsp;<input type="password" name="rps" value="" placeholder="rePassword" class="txt"/><br/>
                :&nbsp;&nbsp;<input type="text" name="cno" value="" placeholder="Contact no" class="txt"/><br/>
                :&nbsp;&nbsp;<input type="text" name="details" value="" placeholder="Details" class="txt"/><br/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit"  class="btn" style="size: 30px;font-style: italic"/><br/>
            </form>
            <p style="color: red;font-size: 30px">
                <%try {
                        if (request.getParameter("msg") != null) {
                            out.print(request.getParameter("msg"));
                        }
                    } catch (Exception e) {
                    }
                %></p>
        </div>
    </div>
    <img src="img/grocery7.jpg" alt=" " style="position: absolute;right: 60px;float:right;width:700px;height:480px;"/>
</div>
<%@include file="footer.jsp" %>
</body>
</html>