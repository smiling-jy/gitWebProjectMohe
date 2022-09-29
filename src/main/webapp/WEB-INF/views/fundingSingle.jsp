<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE |</title>
<link rel="shortcut icon"
	href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">
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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
</head>

<body>

	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="headerMint.jsp" />
		<!-- Page Banner Section -->
		<!-- <section class="page-banner"> -->
		<!-- <div class="image-layer lazy-image" data-bg="url('resources/images/background/bg-banner-1.jpg')"></div> -->
		<!-- <div class="bottom-rotten-curve"></div> -->
		<!-- </section> -->
		<!--End Banner Section -->


		<!--Sidebar Page Container-->
		<div class="sidebar-page-container">
			<div class="page-banner no-banner">
				<div class="auto-container new-font">
					<h1>저소득층 여성을 돕는 유기농 생리대</h1>
					<ul class="bread-crumb clearfix new-font info-qna">
						<li class="active">소개</li>
						<li><a href="fundingQna.html">문의</a></li>
					</ul>
				</div>
			</div>
			<div class="auto-container">
				<div class="row clearfix">

					<!--Content Side / Blog Sidebar-->
					<div class="content-side col-lg-8 col-md-12 col-sm-12">
						<!--Cause Details-->
						<div class="cause-details">
							<div class="inner-box">
								<!-- 타이틀 이미지 영역 -->
								<div class="image-box">
									<figure class="image">
										<img class="lazy-image"
											src="resources/images/resource/image-spacer-for-validation.png"
											data-src="resources/images/resource/cause-image-7.jpg" alt="">
									</figure>
								</div>
								<div class="donate-info">
									<div class="progress-box">
										<div class="bar">
											<div class="bar-inner count-bar" data-percent="70%">
												<div class="count-text">70%</div>
											</div>
										</div>
									</div>
									<div class="donation-count clearfix">
										<span class="raised"><strong>현재금액</strong> 6,000원</span> <span
											class="goal"><strong>목표금액:</strong> 8,000원</span>
									</div>
								</div>
								<!-- 첨부파일 영역 -->
								<div class="lower-content">
									<img src="resources/images/mohe_logo/logo_mint.png" alt="">
									<img src="resources/images/mohe_logo/logo_mint.png" alt="">
									<img src="resources/images/mohe_logo/logo_mint.png" alt="">
									<img src="resources/images/mohe_logo/logo_mint.png" alt="">
									<img src="resources/images/mohe_logo/logo_mint.png" alt="">
								</div>
							</div>
						</div>

					</div>

					<!--Sidebar Side-->
					<div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
						<aside class="sidebar" id="new-side">
							<!-- Search -->
							<div class="sidebar-widget new-font">
								<h5>
									모인금액
									<h5>
										<h1>00000000원</h1>
										<h5>
											남은시간
											<h5>
												<h1>00일</h1>
												<h5>
													참여자
													<h5>
														<h1>000명</h1>
							</div>
							<!-- 펀딩하기, 찜, 공유 영역 -->
							<div class="new-font" id="funding-div">
								<a href="fundingPay.html"
									class="theme-btn btn-style-one link-box"><span
									class="btn-title new-font new-btn-title">펀딩하기</span></a>
								<button class="funding-btn" id="jjim">♥</button>
								<button class="funding-btn" id="gongu">
									<span class="flaticon-share"></span>
								</button>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</div>
		<!-- End Sidebar Page Container -->
		<!-- footer include -->
		<jsp:include page="footer.jsp" />
	</div>
	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="flaticon-up-arrow"></span>
	</div>

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