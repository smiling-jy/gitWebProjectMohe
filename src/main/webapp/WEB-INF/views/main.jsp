<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style-2.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">

<link href="resources/shortcut icon"
	href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
<link href="resources/css/mainPage.css" rel="stylesheet">
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<style>
.table_div::-webkit-scrollbar {
	width: 10px; /* 스크롤바의 너비 */
}

.table_div::-webkit-scrollbar-thumb {
	height: 20%; /* 스크롤바의 길이 */
	background: #ff6b70; /* 스크롤바의 색상 */
	border-radius: 10px;
}

.table_div::-webkit-scrollbar-track {
	background: rgba(255, 107, 112, .2); /*스크롤바 뒷 배경 색상*/
}
/* .page-wrapper { */
/*     overflow: visible; */
/* } */
</style>
</head>

<body>

	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="header.jsp"/>

		<!-- 캐러셀 섹션 -->
		<!-- Banner Section -->
		<section class="banner-section style-two slid_fix" id="header_bottom">
			<div class="banner-carousel love-carousel owl-theme owl-carousel"
				data-options='{"loop": true, "margin": 0, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true, "autoplayTimeout": 6000, "smartSpeed": 300, "responsive":{ "0" :{ "items": "1" }, "768" :{ "items" : "1" } , "1000":{ "items" : "1" }}}'>
				
				<!-- 슬라이드 내용 반복 시작 -->
				<c:forEach items="${eventList}" var="event">
					<!-- Slide Item -->
					<div class="slide-item slid_fix">
						<div class="image-layer lazy-image"></div>
						<div class="image-layer lazy-image"
							data-bg="url('resources/images/main-slider/imsi-slider2.png')"></div>
						<div class="auto-container">
							<div class="content-box" style="top: -150px">
								<h2>
									${event.event_title}
								</h2>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 반복 종료 -->
			</div>
		</section>
		<!--End Banner Section -->

		<!-- 함께하는 파트너 -->
		<div class="image wow fadeInDown" id="partner_section">
			<div id="main_Partner_div">
				<div id="Partner_text">
					<h2>
						<a>함께하는</a><br> <a>파트너 ></a>
					</h2>
				</div>
				<div id="gradation"></div>
				<div id="rotation_partner_div">
					<!-- a태그 안의 img , 파트너 로고 -->
					<c:forEach items="${partner}" var="partner">
						<a href="${partner.partner_url}"><img class="lazy-image"
										src="resources/images/resource/image-spacer-for-validation.png"
										data-src="resources/images/mohe_logo/partnerLogo/${partner.partner_logo}.png"
										style="height: 360px;" alt=""></a>
					</c:forEach>
				</div>
				<div id="gradation2"></div>
			</div>
		</div>

		<!-- 베스트 펀딩 섹션 -->
		<!--Team Carousel Section-->
		<section class="team-carousel-section " style="padding-top: 80px">

			<div class="auto-container">

				<div class="title-box clearfix">
					<div class="sec-title">
						<h2>인기펀딩</h2>
					</div>
				</div>
				
				<!--Team Carousel-->
				<div class="team-carousel love-carousel owl-theme owl-carousel"
					data-options='{"loop": true, "margin": 30, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true, "autoplayTimeout": 5000, "smartSpeed": 500, "responsive":{ "0" :{ "items": "1" },"600" :{ "items": "1" }, "800" :{ "items" : "2" }, "1024":{ "items" : "3" }, "1366":{ "items" : "3" }}}'>
					<!-- 펀딩 리스트 반복 시작 -->
					<c:forEach items="${bestFdList}" var="bestFd">
						<div class="slide-item">
							<!--Team Block-->
							<div class="team-block">
								<div class="inner-box">
									<figure class="image-box">
										<a href="fundingSingle.do?fd_no=${bestFd.fd_no}"><img
											src="resources/images/mohe_logo/logo_mint_big.png" alt=""></a>
									</figure>
									<div class="lower-box">
										<div class="content">
											<h3>
												<a href="fundingSingle.do?fd_no=${bestFd.fd_no}">${bestFd.fd_title}</a>
											</h3>
											<div class="designation">${bestFd.fd_hostname}</div>
											<div class="social-links">
												<ul class="clearfix">
													<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
													<li><a href="#"><span class="fab fa-twitter"></span></a></li>
													<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<!--End Team Carousel-->
			</div>
		</section>
		
		<!-- 마감 임박 봉사 섹션 -->
		<!--Team Carousel Section-->
		<section class="team-carousel-section "
			style="bottom: 0px; padding: 0px">

			<div class="auto-container">

				<div class="title-box clearfix">
					<div class="sec-title">
						<h2>마감 임박 봉사</h2>
					</div>
				</div>

				<!--Team Carousel-->
				<div class="team-carousel love-carousel owl-theme owl-carousel"
					data-options='{"loop": true, "margin": 30, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true, "autoplayTimeout": 5000, "smartSpeed": 500, "responsive":{ "0" :{ "items": "1" },"600" :{ "items": "1" }, "800" :{ "items" : "2" }, "1024":{ "items" : "3" }, "1366":{ "items" : "3" }}}'>
					<!-- 마감임박 봉사 리스트 반복시작 -->
					<c:forEach items="${deadlineBs}" var="ddBs">
						<div class="slide-item">
							<!--Team Block-->
							<div class="team-block">
								<div class="inner-box">
									<figure class="image-box">
										<a href="bongsaDetail.do?bs_no=${ddBs.bs_no}"><img
											src="resources/images/mohe_logo/logo_mint_big.png" alt=""></a>
									</figure>
									<div class="lower-box">
										<div class="content">
											<h3>
												<a href="bongsaDetail.do?bs_no=${ddBs.bs_no}">${ddBs.bs_title}</a>
											</h3>
											<div class="designation">${ddBs.bs_place}</div>
											<div class="social-links">
												<ul class="clearfix">
													<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
													<li><a href="#"><span class="fab fa-twitter"></span></a></li>
													<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>	
					</c:forEach>
					<!-- 반복끝 -->
				</div>
				<!--End Team Carousel-->
			</div>
		</section>

		<!-- 기부하기 페이지에 사용할 부분 -->
		<!--Mission Vision Section-->
		<section class="donate_section">
			<div class="auto-container">
				<div class="donate_div image wow fadeInUp">
					<img src="resources/images/mohe_logo/gibubener_1.png">
					<div class="mission">
						<div class="row clearfix">
							<div class="text-column col-lg-6 col-md-12 col-sm-12">
								<div class="inner">
									<div class="sec-title" style="margin-top: 80px">
										<h2 class="color_white">기부하기</h2>
										<div class="text">당신의 기부가 누군가에겐 한 줄기 빛으로 다가옵니다</div>
										<div class="link-box">
											<a href="donate.do" class="theme-btn btn-style-three"><span
												class="btn-title">Donate</span></a>
										</div>
									</div>
								</div>
							</div>
							<div class="image-column col-lg-6 col-md-12 col-sm-12">
								<div class="inner">
									<div class="row clearfix">
										<div class="image wow fadeInDown" data-wow-delay="0ms">
											<div class="table_div" style="height: 300px; overflow: auto;">
												<table class="donate_table_style">
													<c:forEach items="${donation}" var="dnt">
														<tr>
															<td>${dnt.dnt_name}</td>
															<td>${dnt.dnt_amount}</td>
														</tr>
													</c:forEach>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

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
								<div class="inner wow fadeInLeft" data-wow-delay="0ms"
									data-wow-duration="1500ms">
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
								<div class="inner wow fadeInLeft" data-wow-delay="300ms"
									data-wow-duration="1500ms">
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
								<div class="inner wow fadeInLeft" data-wow-delay="600ms"
									data-wow-duration="1500ms">
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
								<div class="inner wow fadeInLeft" data-wow-delay="900ms"
									data-wow-duration="1500ms">
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


		<!-- 리뷰 섹션1 -->
		<!--Team Carousel Section-->
		<section class="team-carousel-section "
			style="bottom: 0px; padding: 0px; margin-top: 100px">

			<div class="auto-container">

				<div class="title-box clearfix">
					<div class="sec-title">
						<h2>Best 후기</h2>
					</div>
				</div>

				<!--Team Carousel-->
				<div class="team-carousel love-carousel owl-theme owl-carousel"
					data-options='{"loop": true, "margin": 30, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true, "autoplayTimeout": 5000, "smartSpeed": 500, "responsive":{ "0" :{ "items": "1" },"600" :{ "items": "1" }, "800" :{ "items" : "2" }, "1024":{ "items" : "3" }, "1366":{ "items" : "3" }}}'>
					<!-- 베스트 리뷰 반복시작 -->
					<c:forEach items="${bestReview}" var="bestRv">
						<div class="slide-item">
							<!--Team Block-->
							<div class="team-block">
								<div class="inner-box">
									<figure class="image-box">
										<a href="getReview.do?review_no=${bestRv.review_no}"><img
											src="resources/images/mohe_logo/logo_mint_big.png" alt=""></a>
									</figure>
									<div class="lower-box">
										<div class="content">
											<h3>
												<a href="getReview.do?review_no=${bestRv.review_no}">${bestRv.review_title}</a>
											</h3>
											<div class="designation">${bestRv.user_name}</div>
											<div class="social-links">
												<ul class="clearfix">
													<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
													<li><a href="#"><span class="fab fa-twitter"></span></a></li>
													<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					<!-- 반복종료 -->
				</div>
				<!--End Team Carousel-->
			</div>
		</section>

		<!-- 리뷰 섹션2 -->
		<!--Team Carousel Section-->
		<section class="team-carousel-section "
			style="bottom: 0px; padding: 0px; margin-top: 100px; margin-bottom: 100px;">

			<div class="auto-container">

				<div class="title-box clearfix">
					<div class="sec-title">
						<h2>SNS 후기</h2>
					</div>
				</div>

				<!--Team Carousel-->
				<div class="team-carousel love-carousel owl-theme owl-carousel"
					data-options='{"loop": true, "margin": 30, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true, "autoplayTimeout": 5000, "smartSpeed": 500, "responsive":{ "0" :{ "items": "1" },"600" :{ "items": "1" }, "800" :{ "items" : "2" }, "1024":{ "items" : "3" }, "1366":{ "items" : "3" }}}'>
					<div class="slide-item">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img
										src="resources/images/mohe_logo/logo_mint_big.png" alt=""></a>
								</figure>
								<div class="lower-box">
									<div class="content">
										<h3>
											<a href="#">Catherine Jones</a>
										</h3>
										<div class="designation">Engineer</div>
										<div class="social-links">
											<ul class="clearfix">
												<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
												<li><a href="#"><span class="fab fa-twitter"></span></a></li>
												<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide-item">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img
										src="resources/images/mohe_logo/logo_mint_big.png" alt=""></a>
								</figure>
								<div class="lower-box">
									<div class="content">
										<h3>
											<a href="#">Catherine Jones</a>
										</h3>
										<div class="designation">Engineer</div>
										<div class="social-links">
											<ul class="clearfix">
												<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
												<li><a href="#"><span class="fab fa-twitter"></span></a></li>
												<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide-item">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img
										src="resources/images/mohe_logo/logo_mint_big.png" alt=""></a>
								</figure>
								<div class="lower-box">
									<div class="content">
										<h3>
											<a href="#">Catherine Jones</a>
										</h3>
										<div class="designation">Engineer</div>
										<div class="social-links">
											<ul class="clearfix">
												<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
												<li><a href="#"><span class="fab fa-twitter"></span></a></li>
												<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide-item">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img
										src="resources/images/mohe_logo/logo_mint_big.png" alt=""></a>
								</figure>
								<div class="lower-box">
									<div class="content">
										<h3>
											<a href="#">Catherine Jones</a>
										</h3>
										<div class="designation">Engineer</div>
										<div class="social-links">
											<ul class="clearfix">
												<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
												<li><a href="#"><span class="fab fa-twitter"></span></a></li>
												<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide-item">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img
										src="resources/images/mohe_logo/logo_mint_big.png" alt=""></a>
								</figure>
								<div class="lower-box">
									<div class="content">
										<h3>
											<a href="#">Catherine Jones</a>
										</h3>
										<div class="designation">Engineer</div>
										<div class="social-links">
											<ul class="clearfix">
												<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
												<li><a href="#"><span class="fab fa-twitter"></span></a></li>
												<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="slide-item">
						<!--Team Block-->
						<div class="team-block">
							<div class="inner-box">
								<figure class="image-box">
									<a href="#"><img
										src="resources/images/mohe_logo/logo_mint_big.png" alt=""></a>
								</figure>
								<div class="lower-box">
									<div class="content">
										<h3>
											<a href="#">Catherine Jones</a>
										</h3>
										<div class="designation">Engineer</div>
										<div class="social-links">
											<ul class="clearfix">
												<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
												<li><a href="#"><span class="fab fa-twitter"></span></a></li>
												<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
											</ul>
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
 		setInterval(fnSlide, 2000);
 		function fnSlide() {
 			$("#rotation_partner_div").animate(
 					{
 						"margin-left" : "-300px"
 					},
 					1000,
 					function() {
 						$("#rotation_partner_div").css({
 							"margin-left" : "0px"
 						});
 						$("#rotation_partner_div a:first-child").insertAfter(
 								"#rotation_partner_div a:last-child");
 					});
 		};
 	</script> 
 	<script>
//  		$(function(){
//  			$('.drop_more').hover(function(){
//  				$('#header_event').css({'height':'250px'});
//  			},function(){
//  				$('#header_event').css({'height':'0px'});
//  			});
//  		});
 	</script>
</body>
</html>