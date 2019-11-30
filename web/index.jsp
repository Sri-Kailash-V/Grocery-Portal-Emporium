<%@include file="indexhead.jsp" %>
<style>
    body{background:url(img/ra1.jpg);}
    mySlides {display:none}
    .w3-badge {height:13px;width:13px;padding:0;cursor:pointer}
    .w3-content{margin-left:auto;margin-right:auto;max-width:980px;position:relative}
    .imgg{position:relative;animation:animateright 0.4s}
    .w3-badge{background-color:#000;color:#fff;display:inline-block;padding-left:8px;padding-right:8px;text-align:center}.w3-badge{border-radius:50%}
    .w3-border{border:1px solid #ccc!important;background-color:transparent!important}
    .w3-hover-white:hover{color:#000!important;background-color:#fff!important}
    .w3-center{display:inline-block;width:auto;text-align:center;color:#fff!important;font-size:18px!important;position:absolute;left:50%;bottom:0;transform:translate(-50%,0%);-ms-transform:translate(-50%,0%)}
    .w3-container{padding:0.01em 16px}
    .w3-section{margin-top:16px!important;margin-bottom:16px!important}
    .w3-display-container{}
</style>       
<div class="w3-content w3-section" style="width:56%;">
    <img class="mySlides imgg"  alt="mySlides imgg" src="img/grocery1.jpg" style="width:100%">
    <img class="mySlides imgg" alt="mySlides imgg" src="img/grocery2.jpg" style="width:100%">
    <img class="mySlides imgg" alt="mySlides imgg" src="img/grocery3.jpg" style="width:100%">
    <img class="mySlides imgg" alt="mySlides imgg" src="img/grocery4.jpg" style="width:100%">
    <img class="mySlides imgg" alt="mySlides imgg" src="img/grocery5.jpg" style="width:100%">
    <div class="w3-center w3-container w3-section  " style="width:100%">
        <span class="w3-badge  w3-border  w3-hover-white" onclick="currentDiv(1)" ></span>
        <span class="w3-badge  w3-border  w3-hover-white" onclick="currentDiv(2)"></span>
        <span class="w3-badge  w3-border  w3-hover-white" onclick="currentDiv(3)"></span>
        <span class="w3-badge  w3-border  w3-hover-white" onclick="currentDiv(4)"></span>
        <span class="w3-badge  w3-border  w3-hover-white" onclick="currentDiv(5)"></span>
    </div>
</div>
<script>
    var slideIndex = 1;
    showDivs(slideIndex);
    function currentDiv(n) {
        showDivs(slideIndex = n);
    }
    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        if (n > x.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = x.length
        }
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" w3-white", "");
        }
        x[slideIndex - 1].style.display = "block";
    }
    var myIndex = 0;
    carousel();
    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) {
            myIndex = 1
        }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 2500);
    }
</script>
<%@include file="footer.jsp" %>
</body>
</html>