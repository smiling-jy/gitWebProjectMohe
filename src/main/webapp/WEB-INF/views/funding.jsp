<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE |  </title>
<link rel="shortcut icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 수정한 css-->
<link href="resources/css/funding.css" rel="stylesheet">
<link href="resources/css/header3.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
</head>

<body>
<div class="page-wrapper">
	<!-- header include -->
 	<jsp:include page="headerMint.jsp"/>

   
    <!-- 메인 페이지 -->
    <!-- <section class="page-banner"> -->
        <!-- <div class="image-layer lazy-image" data-bg="url('resources/images/background/bg-banner-1.jpg')"></div> -->
        <!-- 한지스러움 삭제 -->
        <!-- <div class="bottom-rotten-curve"></div> -->
    <!-- </section> -->
    <!--End Banner Section -->
    
    <!--Causes Section-->
    <section class="causes-section">
        <div class="page-banner no-banner" id="category">
            <!-- 카테고리 -->
            <div class="auto-container">  
                <ul class="bread-crumb clearfix new-font boder">
                    <li><a href="#">전체</a></li>
                    <li><a href="#"><img src="resources/images/fd-category/identification.png"><span>문구</span></a></li>
                    <li><a href="#"><img src="resources/images/fd-category/sandwich.png"><span>식품</span></a></li>
                    <li><a href="#"><img src="resources/images/fd-category/clothes.png"><span>패션잡화</span></a></li>
                    <li><a href="#"><img src="resources/images/fd-category/tent.png"><span>홈 리빙</span> </a></li>
                    <li><a href="#"><img src="resources/images/fd-category/animal.png"><span>반려동물</span></a></li>
                </ul>
            </div>
        </div>
        <!-- 검색창 -->
        <div class=" new-font funding-search-box">
            
            <a href="openfunding.html" class="theme-btn btn-style-one link-box"><span class="btn-title new-btn-title">주최하기</span></a>
            <input type="search" id="search"  name="search-field" value="" placeholder="Search..." required>
            <button type="submit"><span class="icon flaticon-search-1"></span></button>
            <select>
                <option value="">최신순</option>
                <option value="">인기순</option>
            </select>
        </div>

        <div class="auto-container">
        	<div class="row clearfix">

                <!-- 펀딩 블럭 -->
                <div class="cause-block col-lg-4 col-md-6 col-sm-12 ">
                    <div class="inner-box wow fadeInUp" data-wow-delay="0ms">
                        <div class="image-box">
                            <figure class="image"><a href="fundingSingle.html"><img class="lazy-image" src="resources/images/resource/image-spacer-for-validation.png" data-src="resources/images/resource/cause-image-4.jpg" alt=""></a></figure>
                        </div>
                        <div class="lower-content new-font">
                            <div class="progress-box">
                                <div class="bar">
                                    <div class="bar-inner count-bar" data-percent="70%"><div class="count-text">70%</div></div>
                                </div>
                            </div>
                            <div class="donation-count clearfix"><span class="goal">목표금액:<strong> 8,000,000원</strong></span><span class="d-day"><strong>3</strong>일남음</span></div>
                            <h3><a href="fundingSingle.html" class="new-font">저소득층 여성을 돕는 유기농 생리대</a></h3>
                        </div>
                    </div>
                </div>
                
                <!--Cause Block-->
                <div class="cause-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box wow fadeInUp" data-wow-delay="300ms">
                        <div class="image-box">
                            <figure class="image"><a href="fundingSingle.html"><img class="lazy-image" src="resources/images/resource/image-spacer-for-validation.png" data-src="resources/images/resource/cause-image-2.jpg" alt=""></a></figure>
                        </div>
                        <div class="lower-content">
                            <div class="progress-box">
                                <div class="bar">
                                    <div class="bar-inner count-bar" data-percent="70%"><div class="count-text">70%</div></div>
                                </div>
                            </div>
                            <div class="donation-count clearfix"><span class="goal"><strong>목표금액:</strong> 8,000,000원</span></div>
                            <h3><a href="cause-single.html" class="new-font">생분해 원단으로 만든 친환경 데일리 백</a></h3>
                        </div>
                    </div>
                </div>

                 <!--Cause Block-->
                <div class="cause-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box wow fadeInUp" data-wow-delay="300ms">
                        <div class="image-box">
                            <figure class="image"><a href="cause-single.html"><img class="lazy-image" src="resources/images/resource/image-spacer-for-validation.png" data-src="resources/images/resource/cause-image-2.jpg" alt=""></a></figure>
                        </div>
                        <div class="lower-content">
                            <div class="progress-box">
                                <div class="bar">
                                    <div class="bar-inner count-bar" data-percent="70%"><div class="count-text">70%</div></div>
                                </div>
                            </div>
                            <div class="donation-count clearfix"><span class="goal"><strong>목표금액:</strong> 8,000,000원</span></div>
                            <h3><a href="cause-single.html" class="new-font">북극곰을 위하는 고체 샴푸바&린스바 세트</a></h3>
                        </div>
                    </div>
                </div>

                 <!--Cause Block-->
                 <div class="cause-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box wow fadeInUp" data-wow-delay="300ms">
                        <div class="image-box">
                            <figure class="image"><a href="cause-single.html"><img class="lazy-image" src="resources/images/resource/image-spacer-for-validation.png" data-src="resources/images/resource/cause-image-2.jpg" alt=""></a></figure>
                        </div>
                        <div class="lower-content">
                            <div class="progress-box">
                                <div class="bar">
                                    <div class="bar-inner count-bar" data-percent="70%"><div class="count-text">70%</div></div>
                                </div>
                            </div>
                            <div class="donation-count clearfix"><span class="goal"><strong>목표금액:</strong> 8,000,000원</span></div>
                            <h3><a href="cause-single.html" class="new-font">농부가 직접 만드는 영양만점 인절미 3종</a></h3>
                        </div>
                    </div>
                </div>

                 <!--Cause Block-->
                 <div class="cause-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box wow fadeInUp" data-wow-delay="300ms">
                        <div class="image-box">
                            <figure class="image"><a href="cause-single.html"><img class="lazy-image" src="resources/images/resource/image-spacer-for-validation.png" data-src="resources/images/resource/cause-image-2.jpg" alt=""></a></figure>
                        </div>
                        <div class="lower-content">
                            <div class="progress-box">
                                <div class="bar">
                                    <div class="bar-inner count-bar" data-percent="70%"><div class="count-text">70%</div></div>
                                </div>
                            </div>
                            <div class="donation-count clearfix"><span class="goal"><strong>목표금액:</strong> 8,000,000원</span></div>
                            <h3><a href="cause-single.html" class="new-font">북극곰을 위하는 고체 샴푸바&린스바 세트</a></h3>
                        </div>
                    </div>
                </div>
                 <!--Cause Block-->
                 <div class="cause-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box wow fadeInUp" data-wow-delay="300ms">
                        <div class="image-box">
                            <figure class="image"><a href="cause-single.html"><img class="lazy-image" src="resources/images/resource/image-spacer-for-validation.png" data-src="resources/images/resource/cause-image-2.jpg" alt=""></a></figure>
                        </div>
                        <div class="lower-content">
                            <div class="progress-box">
                                <div class="bar">
                                    <div class="bar-inner count-bar" data-percent="70%"><div class="count-text">70%</div></div>
                                </div>
                            </div>
                            <div class="donation-count clearfix"><span class="goal"><strong>목표금액:</strong> 8,000,000원</span></div>
                            <h3><a href="cause-single.html" class="new-font">농부의 내년 농사를 돕는 두유 긴급 SOS</a></h3>
                        </div>
                    </div>
                </div>             
    </section>
		<!-- footer include -->
 		<jsp:include page="footer.jsp"/>
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
<script src="resources/js/funding.js"></script>

</body>
</html>