<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | Maker</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<link rel="shortcut icon"href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link href="resources/css/mainPage.css" rel="stylesheet">
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<style>
	ol{
		color: rgb(30,36,54);
	}
</style>
</head>
<body>
	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="header.jsp" />
		<!-- Page Banner Section -->
		<section class="page-banner" style="padding: 30px">
			<div class="image-layer lazy-image" data-bg=""></div>

			<div class="auto-container">
				<ul class="bread-crumb clearfix">
					<li><a href="info2.do">Info</a></li>
					<li class="active">The Creator</li>
				</ul>
			</div>
		</section>
		<!--End Banner Section -->
		<!--Team Carousel Section-->
		<section class="team-carousel-section "style="bottom: 0px; padding: 0px; margin:60px 0px; margin-bottom:200px;">
			<div class="auto-container">
				<div class="title-box clearfix">
					<div class="sec-title">
						<h2>만든사람</h2>
					</div>
				</div>
				<!--Team Carousel-->
				<div class="team-carousel love-carousel owl-theme owl-carousel">
					<div class="slide-item maker_div image wow fadeInDown">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#">
									<img src="resources/images/face/Developer_2.png" alt=""></a>
								</figure>
								<div class="lower-box" style="height:300px;">
									<div class="content">
										<h3>이지윤</h3>
										<div class="designation">
											<ol>
												<li><b>조장</b></li>
												<li>메인 페이지</li>
												<li>관리자 페이지</li>
												<li>기부 페이지</li>
												<li>소개 페이지</li>
											</ol>
										</div>
										<div class="social-links"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide-item maker_div image wow fadeInUp">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img src="resources/images/face/Developer_1.jpg" alt=""></a>
								</figure>
								<div class="lower-box" style="height:300px;">
									<div class="content">
										<h3>허영민</h3>
										<div class="designation">
											<ol>
												<li><b>조원</b></li>
												<li>공지사항 페이지</li>
												<li>이벤트 페이지</li>
												<li>파트너 페이지</li>
												<li>후기모음 페이지</li>
												<li>문의사항 페이지</li>
												<li>마이페이지>후기</li>
											</ol>
										</div>
										<div class="social-links"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide-item maker_div image wow fadeInDown">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img src="resources/images/face/Developer_3.png" alt=""></a>
								</figure>
								<div class="lower-box" style="height:300px;">
									<div class="content">
										<h3>김보람</h3>
										<div class="designation">
											<ol>
												<li><b>조원</b></li>
												<li>펀딩 페이지</li>
												<li>마이페이지>펀딩</li>
											</ol>
										</div>
										<div class="social-links">
											<ul class="clearfix"></ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide-item maker_div image wow fadeInUp">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img src="resources/images/face/Developer_4.png" alt=""></a>
								</figure>
								<div class="lower-box" style="height:300px;">
									<div class="content">
										<h3>서지현</h3>
										<div class="designation">
											<ol>
												<li><b>조원</b></li>
												<li>봉사 페이지</li>
												<li>마이페이지>봉사</li>
											</ol>
										</div>
										<div class="social-links">
											<ul class="clearfix"></ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide-item maker_div image wow fadeInDown">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img src="resources/images/face/Developer_5.png" alt=""></a>
								</figure>
								<div class="lower-box" style="height:300px;">
									<div class="content">
										<h3>차미지</h3>
										<div class="designation">
											<ol>
												<li><b>조원</b></li>
												<li>로그인 페이지</li>
												<li>회원가입 페이지</li>
												<li>마이페이지>회원정보</li>
											</ol>
										</div>
										<div class="social-links">
											<ul class="clearfix"></ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--End Team Carousel-->
			</div>
		</section>
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
	<script>
		$(function() {
			$(document).ready(function() {
				$(".owl-item").css("width", "250px");
			});
		})
	</script>
</body>
</html>