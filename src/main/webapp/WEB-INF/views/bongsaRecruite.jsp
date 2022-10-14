<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 봉사모집페이지</title>
<!-- Stylesheets -->
<link href="resources/css/bongsaRecruite.css" rel="stylesheet">
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">

<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 수정한 css-->
<link href="resources/css/funding.css" rel="stylesheet">

<link rel="shortcut icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
<link href="resources/css/header2.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">


</head>

<body>

<div class="page-wrapper newFont">

	<jsp:include page="headerRed.jsp" />
    <!-- Preloader -->
    <div class="preloader"><div class="icon"></div></div>

    

  

        <!-- Mobile Menu  -->
        <div class="mobile-menu">
            <div class="menu-backdrop"></div>
            <div class="close-btn"><span class="icon flaticon-cancel"></span></div>
            
            <nav class="menu-box">
                <div class="nav-logo"><a href="index.html"><img src="resources/images/logo.png" alt="" title=""></a></div>
                <div class="menu-outer"><!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header--></div>
				<!--Social Links-->
				<div class="social-links">
					<ul class="clearfix">
						<li><a href="#"><span class="fab fa-twitter"></span></a></li>
						<li><a href="#"><span class="fab fa-facebook-square"></span></a></li>
						<li><a href="#"><span class="fab fa-pinterest-p"></span></a></li>
						<li><a href="#"><span class="fab fa-instagram"></span></a></li>
						<li><a href="#"><span class="fab fa-youtube"></span></a></li>
					</ul>
                </div>
            </nav>
        </div><!-- End Mobile Menu -->
    </header>
    <!-- End Main Header -->
    
    <!--Search Popup-->
    <div id="search-popup" class="search-popup">
        <div class="close-search theme-btn"><span class="flaticon-cancel"></span></div>
        <div class="popup-inner">
            <div class="overlay-layer"></div>
            <div class="search-form">
                <form method="post" action="index.html">
                    <div class="form-group">
                        <fieldset>
                            <input type="search" class="form-control" name="search-input" value="" placeholder="Search Here" required >
                            <input type="submit" value="Search Now!" class="theme-btn">
                        </fieldset>
                    </div>
                </form>
                
                <br>
                <h3>Recent Search Keywords</h3>
                <ul class="recent-searches">
                    <li><a href="#">Finance</a></li>
                    <li><a href="#">Idea</a></li>
                    <li><a href="#">Service</a></li>
                    <li><a href="#">Growth</a></li>
                    <li><a href="#">Plan</a></li>
                </ul>
            
            </div>
            
        </div>
    </div>

    
    <!--Donate Section-->
    <section class="donate-section newfont">    
	    <!--Form Column-->
	    <div class="donate-form">
	    <div class="recuruit-header"><h1 class="newFont centersetting">봉사활동 모집하기</h1></div>
<!-- 	     <div class="form-column <!--col-lg-6 col-md-12 col-sm-12 new-font open-pj-form "> -->
			<div class="recuruit-Main">
	                 <form method="post" action="insertBongsa.do">
	                     <span>봉사활동명</span>
	                     <input type="text" name="bs_title" required><br/>
	                     <span>봉사 활동 소개</span>
	                     <textarea name="bs_content"></textarea><br/>
	                     <span>봉사 지역</span><br/>
	                     <select name="bs_region">
	                         <option>전국</option>
	                         <option>서울</option>
	                         <option>경기인천</option>
	                         <option>강원</option>
	                         <option>대구경북</option>
	                         <option>광주전라</option>
	                         <option>울산부산경남</option>
	                         <option>대전세종충남</option>
	                         <option>제주</option>
	                         <option>비대면</option>
	                     </select>
	                     <br/>
	
	                     <span>장소</span>
	                     <input type="text" name="bs_place" required><br/>
	
	                     <span>모집인원</span>
	                     <input type="text" name="bs_goal_cnt" required><br/>
	                     <hr>
	
						 <span>모집시작일</span>
	                     <input type="date" name="bs_recruit_start" required><br/>
	                     <hr>
	                     <span>모집종료일</span>
	                     <input type="date" name="bs_recruit_end" required><br/>
	                     <hr>
	                     <span>봉사시작 일시</span>
	                     <input type="datetime-local" name="bs_work_start" required><br/>
	                     <hr>
	                     <span>봉사종료 일시</span>
	                     <input type="datetime-local" name="bs_work_end" required><br/>
	                     <hr>
	                     <span>모집자(단체)</span><br/>
	                     <input type="text" name="bs_name" required><br/>
	                     
	                     <span>모집자 연락처</span>
	                     <input type="text" name="bs_phone" required><br/>
	                     
	                     <span>모집자 이메일</span>
	                     <input type="text" name="bs_email" required><br/>
	                     
						<span>타이틀 이미지</span><br />
						<input type="file" name="title_img" class="add-file" value="타이틀 이미지 첨부하기"><br/><br/>

						<span>내용 이미지</span><br />						
						<input type="file" name="file" multiple="multiple" class="add-file" value="내용 이미지 첨부하기"><br/>
	
	                     <br/><br/><br/><br/>
	                     <div class="form-group recruite-btn">
	                        <button type="submit" class="theme-btn btn-style-one"><span class="btn-title newFont">모집하기</span></button>
	                     </div>
	                 </form>
	             </div>
	           </div>
    </section>

		<!-- footer include -->
		<jsp:include page="footer.jsp" />

</div>
<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target="html"><span class="flaticon-up-arrow"></span></div>

<script src="resources/js/jquery.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<script src="resources/js/jquery.fancybox.js"></script>
<script src="resources/js/owl.js"></script>
<script src="resources/js/appear.js"></script>
<script src="resources/js/wow.js"></script>
<script src="resources/js/lazyload.js"></script>
<script src="resources/js/scrollbar.js"></script>
<script src="resources/js/script.js"></script>

</body>
</html>