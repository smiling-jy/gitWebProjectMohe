<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | INFO</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">

<link rel="shortcut icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
<link href="resources/css/mainPage.css" rel="stylesheet">
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
</head>

<body>

<div class="page-wrapper">

		<!-- header include -->
 		<jsp:include page="header.jsp"/>
    <!-- Page Banner Section -->
    <section class="page-banner" style="height:550px">
        <div class="image-layer lazy-image" data-bg="url('resources/images/mohe_logo/info/info_main_img.jpg')"></div>

        <div class="auto-container">
            <h1 style="text-align:left;">모두가 함께하는<br>모두의 봉사<br>모해</h1>
            <div style="left:0px; width:370px; margin-top:50px;">
                <a href="mainPage.html" class="theme-btn btn-style-one" style="margin-right:50px">
                    <span class="btn-title">메인으로</span>
                </a>
                <a href="cause-single.html" class="theme-btn btn-style-one">
                    <span class="btn-title">My페이지</span>
                </a>
            </div>
        </div>

    </section>
    <!--End Banner Section -->
        <!-- 웹 사이트 수치 표기 섹션 -->
    <!-- Funfacts Section -->
	<section class="facts-section">
		<div class="auto-container">
			<div class="inner-container">
			
				<!-- Fact Counter -->
				<div class="fact-counter">
					<div class="row clearfix">

						<!--Column-->
						<div class="column counter-column col-lg-3 col-md-6 col-sm-12">
							<div class="inner wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
								<div class="content">
									<div class="count-outer count-box">
										<span class="count-text" data-speed="3000" data-stop="90">0</span>
									</div>
									<div class="counter-title">Project Complate</div>
								</div>
							</div>
						</div>

						<!--Column-->
						<div class="column counter-column col-lg-3 col-md-6 col-sm-12">
							<div class="inner wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
								<div class="content">
									<div class="count-outer count-box alternate">
										<span class="count-text" data-speed="3000" data-stop="216">0</span>
									</div>
									<div class="counter-title">Satisfied Clients</div>
								</div>
							</div>
						</div>

						<!--Column-->
						<div class="column counter-column col-lg-3 col-md-6 col-sm-12">
							<div class="inner wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
								<div class="content">
									<div class="count-outer count-box">
										<span class="count-text" data-speed="2000" data-stop="35">0</span>
									</div>
									<div class="counter-title">Experienced Staff</div>
								</div>
							</div>
						</div>
						
						<!--Column-->
						<div class="column counter-column col-lg-3 col-md-6 col-sm-12">
							<div class="inner wow fadeInLeft" data-wow-delay="900ms" data-wow-duration="1500ms">
								<div class="content">
									<div class="count-outer count-box">
										<span class="count-text" data-speed="2000" data-stop="15">0</span>
									</div>
									<div class="counter-title">Awards Win</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Funfacts Section -->

       <!--What We Do Section-->
       <section class="what-we-do what_div" style="margin-bottom:0px; padding-bottom: 100px;">
        <div class="auto-container" style="margin:0 auto; width:620px;">
            <h1 style="text-align:center">모해?</h1>
            <ul class="bread-crumb clearfix" style="text-align:center">
                <li><a href="mainPage.html">모해에서는 이런 기능을 제공합니다</a></li>
            </ul>
            <hr><br><br>
        </div>
        <div class="auto-container">
            <div class="row clearfix">
                <!--Service Block-->
                <div class="service-block col-xl-3 col-lg-4 col-md-6 col-sm-12 block_back image wow fadeInUp service_fix">
                    <div class="inner-box">
                        <div class="icon-box"><span class="flaticon-hand"></span></div>
                        <h3>기부펀딩</h3>
                        <div class="text">재능기부와 기부모금을 동시에 할 수 있는 펀딩 시스템을 제공합니다</div>
                        <div style="left:0px; width:370px; margin-top:50px; margin-left:45px;">
                            <a href="cause-single.html" class="theme-btn btn-style-one" style="margin-right:50px">
                                <span class="btn-title">펀딩</span>
                            </a>
                        </div>
                    </div>
                </div>

                <!--Service Block-->
                <div class="service-block col-xl-3 col-lg-4 col-md-6 col-sm-12 block_back image wow fadeInDown service_fix2">
                    <div class="inner-box">
                        <div class="icon-box"><span class="flaticon-adoption"></span></div>
                        <h3>봉사</h3>
                        <div class="text">내가 할수있는 봉사가 있을까?<br>지역별 봉사모임이 궁금하다면</div>
                        <div style="left:0px; width:370px; margin-top:50px; margin-left:45px;">
                            <a href="cause-single.html" class="theme-btn btn-style-three" style="margin-right:50px">
                                <span class="btn-title">봉사</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <!--Service Block-->
                <div class="service-block col-xl-3 col-lg-4 col-md-6 col-sm-12 block_back image wow fadeInUp service_fix">
                    <div class="inner-box">
                        <div class="icon-box"><span class="flaticon-collaboration"></span></div>
                        <h3>파트너쉽</h3>
                        <div class="text">모해와 함께하는 기업에게 제공하는 다양한 해택 알아보기</div>
                        <div style="left:0px; width:370px; margin-top:50px; margin-left:45px;">
                            <a href="cause-single.html" class="theme-btn btn-style-one" style="margin-right:50px">
                                <span class="btn-title">파트너쉽</span>
                            </a>
                        </div>
                    </div>
                </div>
                
                <!--Service Block-->
                <div class="service-block col-xl-3 col-lg-4 col-md-6 col-sm-12 block_back image wow fadeInDown service_fix2">
                    <div class="inner-box">
                        <div class="icon-box"><span class="flaticon-group"></span></div>
                        <h3>리뷰</h3>
                        <div class="text">SNS연동으로 다양해진 펀딩과 봉사 후기를 확인하고 싶다면</div>
                        <div style="left:0px; width:370px; margin-top:50px; margin-left:45px;">
                            <a href="cause-single.html" class="theme-btn btn-style-three" style="margin-right:50px">
                                <span class="btn-title">리뷰</span>
                            </a>
                        </div>
                    </div>
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

</body>
</html>