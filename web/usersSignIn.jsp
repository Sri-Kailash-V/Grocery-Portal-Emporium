<%@include file="indexhead.jsp" %>
<style>
    .txt{width:200px;font-size:16px;color:green;margin-bottom:10px;border-radius:4px;padding:2px;font-style: italic;}
    h1{color: hotpink;font-size:  40px;}
    .btn{width:160px;font-size:16px;color:red;margin-bottom:10px;border-radius:4px;padding:6px;}
    .txt:focus{width:200px;font-size:16px;color:green;margin-bottom:10px;border-radius:4px;border-color:red;size: 30px;}
    body{background:url(img/ra1.jpg);font-style: italic;font-weight: bold}
    .d21{float:   left;width:15%;height: 600px;color: aliceblue;font-size: 20px;line-height: 35px;position: relative;}
    .d22{float:  left;width:50%;height: 400px;color: aliceblue;font-size: 20px;}
    .ull {  width:70%;list-style-type: none;margin: 0;padding: 0;overflow: hidden;font-size: 30px;}
    .ll {float: left;}
    .ll a {display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;}
</style>
<div>
    <div>
        <ul class="ull">
            <li class="ll">
                <a href="usersSignUp.jsp?" style="width: 130px">SignUp</a>
            </li> 
            <li class="ll">
                <a  href="usersSignIn.jsp" style="width: 130px">SignIn</a>
            </li>
        </ul>
        <h1>User Login</h1>
    </div>
    <div>
        <div class="d21">
            Email id<br/>
            Password<br/>
        </div>
        <div class="d22"> 
            <form action="douserslogin.jsp" >
                :&nbsp;&nbsp;<input type="text" name="emailid" value="" placeholder="Email id" class="txt"/><br/>
                :&nbsp;&nbsp;<input type="password" name="ps" value="" placeholder="Password" class="txt"/><br/>
                <br/>
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
    <img src="img/grocery6.jpg" alt=" " style="position: absolute;right: 60px;float:right;width:700px;height:480px;"/>
</div>
</body>
<%@include file="footer.jsp" %>
</html>