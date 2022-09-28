<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title> 모해 MOHE | 공지 사항</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 추가된 css-->
<link href="resources/css/more.css" rel="stylesheet">
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">

<link rel="shortcut icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
</head>

<body>

<div class="page-wrapper">
 		<!-- header include -->
 		<jsp:include page="header.jsp"/>
    <!-- Page Banner Section -->
    <section class="page-banner" id="new-banner">
        <div class="auto-container">
            <h1>공지 사항</h1>
            <ul class="bread-crumb clearfix">
                <li class="active"><h5>공지사항</h5></a></li>
                <li><a href="faq.html"><h5>자주 묻는 질문</h5></a></li>
                <li><a href="event.html"><h5>이벤트</h5></a></li>
                <li><a href="partner.html"><h5>파트너</h5></a></li>
                <li><a href="review.html"><h5>후기 모음</h5></a></li>
            </ul>
        </div>

    </section>
    <!--End Banner Section -->
    
    <!--FAQs Section-->
    <section class="faq-section" id="new-faq-section">
        
        <div class="auto-container">
        	<div class="tabs-box">
                <div class="row clearfix">
                    
                    <!--Title Column-->
                    
                    <!--공지사항 게시판!! 더보기 형식이 아닌 제목 클릭시 본문 페이지로 이동~~-->
                    <div class="content-column col-lg-10 col-md-12 col-sm-12">
                        <div id="new-search-box">
                            <input type="search" name="search-field" value="" placeholder="검색" required>
                            </div>
                       <div class="inner">
                    	<div class="inner">
                        	<div class="tabs-content">
                            	<!--Tab-->
                                <div class="tab active-tab" id="tab-1">
                                    <ul class="accordion-box clearfix">
                                        <!--Block-->
                                        <li class="accordion block active-block">
                                            <div class="acc-btn active">[ 공지 ] 펀딩 후원 시스템 개편 안내 | 2022.09.01</div>
                                        </li> 
                                        <hr style="border: solid 1px lightgrey">
                                        <!--Block-->
                                        <li class="accordion block">
                                            <div class="acc-btn">[ 공지 ] 처음 여는 펀딩이라면? 여기를 주목하세요! | 2022.08.30</div>
                                            <div class="acc-content">
                                                <div class="content">
                                                    
                                                </div>
                                            </div>
                                        </li>
                                        <hr style="border: solid 1px lightgrey">
                                        <!--Block-->
                                        <li class="accordion block">
                                            <a href="noticeDetail.html"><div class="acc-btn">[ 클릭! ] 2022 년도 지역별 봉사 매니저를 모집합니다. | 2022.08.19 </a></div>
                                           
                                        </li>
                                        <hr style="border: solid 1px lightgrey">
                                        <!--Block-->
                                        <li class="accordion block">
                                            <div class="acc-btn">[ 공지 ] 모해-공공기관 협력 후원 행사 설명회 참석 신청 안내 | 2022.08.06</div>
                                            <div class="acc-content">
                                               
                                            </div>
                                        </li>
                                        <hr style="border: solid 1px lightgrey">
                                        <!--Block-->
                                        <li class="accordion block">
                                            <div class="acc-btn">[ 공지 ] 주최자 이용약관 개정 안내 | 2022.08.01</div>
                                           
                                        </li>
                                        <hr style="border: solid 1px lightgrey">
                                      </ul>
                                      <br>
                                      <h5 style="text-align:center"> ◀ [1] [2] [3] [4] [5] ▶</h5><br>
                                </div> <!--class="tab active-tab" 끝-->
                       </div>
        </div>
    </section>


    		<!-- footer include -->
 		<jsp:include page="footer.jsp"/>
<!-- Main Footer -->
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