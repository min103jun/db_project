<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.8.7, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.7, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/title_logo.jpg" type="image/x-icon">
  <meta name="description" content="">
  <title>Home</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
    
</head>
<body>
<section class="menu cid-raFTFy3Zrx" once="menu" id="menu2-t">
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="index.jsp">
                        <img src="assets/images/16-3-463x124.jpg" title="" style="height: 3.8rem;">
                    </a>
                </span>

            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <%
             if(session.getAttribute("userID") == null) {
          %>
            <div class="navbar-buttons mbr-section-btn"><a class="btn btn-sm btn-primary display-4" href="login.jsp"><span class="mbri-users mbr-iconfont mbr-iconfont-btn"></span>로그인</a></div>
         <%
            } 
            else {
         %>
            <h2 class="nav-item">
             <%=session.getAttribute("userID")%>님 
            </h2>
             <div class="navbar-buttons mbr-section-btn"><a class="btn btn-sm btn-primary display-4" href="logoutPro.jsp"><span class="mbri-users mbr-iconfont mbr-iconfont-btn"></span>로그아웃</a></div>
             <div class="navbar-buttons mbr-section-btn"><a class="btn btn-sm btn-primary display-4" href="myPage.jsp"><span class="mbri-users mbr-iconfont mbr-iconfont-btn"></span>대여목록</a></div>
       <%
          }
       %>        
        </div>
    </nav>
</section>

<section class="engine"><a href="https://mobirise.info/t">amp template</a></section><section class="cid-r9EOYQMr4N mbr-parallax-background" id="header15-8">
    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(7, 59, 76);"></div>

    <div class="container align-center">
        <div class="row">
            <div class="mbr-white col-lg-12 col-md-11 center-block" >
                <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1" style="text-align:center">
                    경북대학교 도서관</h1>
                <p class="mbr-text pb-3 mbr-fonts-style display-5">
                    KNU Library Service<br>꿈을 클릭하고 미래를 터치하는<br>경북대학교 도서관에 오신 것을 환영합니다</p>
            </div>
        </div>
    </div>
    <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
        <a href="#next">
            <i class="mbri-down mbr-iconfont"></i>
        </a>
    </div>
</section>

<section class="mbr-section form3 cid-r9ESfQ4DRl" id="form3-9">
    <div class="container">
        <div class="row justify-content-center">
            <div class="title col-12 col-lg-8 ">
                <h2 class="align-center pb-2 mbr-fonts-style display-2">
                    소장 검색
                </h2>
                <h3 class="mbr-section-subtitle align-center pb-5 mbr-light mbr-fonts-style display-5">
                    소장자료 통합검색 및 전자자원 검색
                </h3>
            </div>
        </div>
		<form action="search.jsp" method="post">
        <div class="row py-2 justify-content-center">
            <div class="col-11" data-form-type="formoid">
                    <div class="mbr-subscribe input-group">
                        <div style="padding-left:0px; padding-right:0px" >
                            <select id="search" class="selectpicker form-control" style="width:150px; background-color:#ffffff" name="filter">
                            
                            <option value="1">도서명</option>
                            <option value="2">저자</option>
                            <option value="3">출판사</option>
                            </select>
                        </div>
                        <input class="form-control" type="text" name="name" placeholder="소장자료 검색">
                        <span class="input-group-btn"><button type="submit" class="btn btn-primary display-4">검색</button></span>
                    </div>
            </div>
        </div>
		</form>
    </div>
</section>

<section class="cid-r9KAnjqNNq" id="footer2-l">
    <div class="container">
        <div class="media-container-row content mbr-white">
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <p class="mbr-text" >
                    <strong>Address</strong>
                    <br>
                    <br>(우)41566 <br>대구광역시 북구 대학로80(산격동 1370) 경북대학교 도서관<br>
                    <br>
                    <br><strong>Contacts</strong>
                    <br>
                    <br>Email: support@gmail.com
                    <br>Phone: +1 (0) 000 0000 001
                    <br>Fax: +1 (0) 000 0000 002
                </p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <p class="mbr-text">
                    <strong>Links</strong>
                    <br>
                    <br><a class="text-white" href="https://www.knu.ac.kr/">경북대학교</a>
                    <br><a class="text-white" href="https://computer.knu.ac.kr/">경북대학교 컴퓨터공학부</a>
                    <br><a class="text-white" href="http://kudos.knu.ac.kr/">경북대학교 도서관</a>
                    <br>
                </p>
            </div>
            <div class="col-12 col-md-6">
                <div class="google-map"><iframe frameborder="0" style="border:0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3232.32512514762!2d128.60913951526447!3d35.890052080146134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565e19e1c03ddbd%3A0xdc40a75efbd7103c!2z6rK967aB64yA7ZWZ6rWQIOuMgOq1rOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v1545051631626" allowfullscreen=""></iframe></div>
            	</div>
        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="mbr-white" style='align-content:left'>
                <div class="col-sm-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7" >
                        @ DB_TEAM4 Website 2018. All Rights Reserved.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/parallax/jarallax.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/formoid/formoid.min.js"></script>
  
  
</body>
</html>