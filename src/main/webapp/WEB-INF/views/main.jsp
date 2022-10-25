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
/*네비 손잡이*/
.btn_div {
	width: 50px;
	height: 50px;
	margin-top:8px;
	position: absolute;
	cursor: pointer;
}
/*네비 포장지*/
.right_nav {
	width: 250px;
	height: 400px;
	/* 	background-color:blue; */
	position: fixed;
	z-index: 10;
	right: -200px;
	top: 30%;
	transition: all 1s ease;
}
/*네비 몸통*/
.click_right_menu {
	width: 200px;
	height: 400px;
	background-color: rgb(255,255,255,0.7);
	position: absolute;
	margin-left: 50px;
	cursor: pointer;
	border-radius: 10px;
}

.click_right_menu li{
	border-bottom: 1px solid rgb(229, 229, 229);
	border-radius: 10px;
}
.click_right_menu li, .click_right_menu a {
	width: 200px;
	height: 80px;
	text-align: center;
	padding-top: 30px;
	color: rgb(100, 100, 100);
	font-family: 'GmarketSansMedium';
	text-decoration: none;
	transition: all 1s ease;
}

#main_partenr_text {
	text-decoration: none;
	color: rgb(30, 30, 30);
	font-weight: bold;
}
.rating{
	position:absolute;
	z-index:5;
 	top:0px; 
 	left:20px; 
	width:100px;
}
.click_right_menu li:hover{
	background-color:rgb(112,191,187,0.5);
	color:white;
	border-radius: 10px;
}
.main_slide_toneDown{
	filter: brightness(75%)
}
</style>
<link href="resources/css/popup.css" rel="stylesheet">
</head>

<!-- <body onLoad="javascript:popupWindow()"> -->
<body>
	<!-- 우측 간편 메뉴 시작 -->
	<div class="right_nav">
		<div class="btn_div"><img class="image wow fadeInDown" id="navIMG" src="resources/images/icons/nav_openIcon1.png"></div>
		<div class="click_right_menu">
			<!-- 네비 카테고리 시작 -->
			<ul>
				<li><a href="myFundingList.do">My페이지</a></li>
				<li><a href="shoppingBasket.do">찜목록</a></li>
				<li><a href="donate.do">기부하기</a></li>
				<li><a href="review.do">리뷰보기</a></li>
				<li><a href="faq.do">Q&A</a></li>
			</ul>
		</div>
	</div>
	<!-- 우측 간편 메뉴 끝  -->

	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="header.jsp" />

		<!-- 캐러셀 섹션 -->
		<!-- Banner Section -->
		<section class="banner-section style-two slid_fix" id="header_bottom">
			<div class="banner-carousel love-carousel owl-theme owl-carousel"
				data-options='{"loop": true, "margin": 0, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true, "autoplayTimeout": 6000, "smartSpeed": 300, "responsive":{ "0" :{ "items": "1" }, "768" :{ "items" : "1" } , "1000":{ "items" : "1" }}}'>
				<!-- 슬라이드 내용 반복 시작 -->
				<c:forEach items="${eventList}" var="event">
					<!-- Slide Item -->
					<div class="slide-item slid_fix" onclick="location.href='getEvent.do?event_no=${event.event_no}';" style="cursor:pointer;">
					<div class="image-layer lazy-image"></div>
						<div class="image-layer lazy-image main_slide_toneDown" 
							data-bg="url('resources/files/event/title/${event.event_no}/eventTitleIMG.png')"></div>
							<!-- 임시 슬라이더이미지:'resources/images/main-slider/imsi-slider2.png' -->
						<div class="auto-container">
							<div class="content-box" style="top: -160px">
								<h2 style="text-shadow: 4px 4px 10px black;">${event.event_title}</h2>
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
						<a id="main_partenr_text" href="partner.do">함께하는<br>파트너
						</a>
					</h2>
				</div>
				<div id="gradation"></div>
				<div id="rotation_partner_div">
					<!-- a태그 안의 img , 파트너 로고 -->
					<c:forEach items="${partner}" var="partner">
						<a href="${partner.partner_url}"><img class="lazy-image"
							src="resources/files/partner/${partner.partner_no}/logoIMG.png"
							data-src="resources/files/partner/${partner.partner_no}/logoIMG.png"
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
											src="resources/files/funding/${bestFd.fd_img_name}/title.png" alt=""></a>
									</figure>
									<div class="lower-box">
										<div class="content">
											<h3>
												<a href="fundingSingle.do?fd_no=${bestFd.fd_no}">${bestFd.fd_title}</a>
											</h3>
											<div class="designation">${bestFd.fd_hostname}</div>
											<div class="social-links">
												<ul class="clearfix">
													<li>
														<input type="hidden" class="" value="${bestFd.fd_title}">
														<input type="hidden" value="${bestFd.fd_no}">
														<a class="gongu"><span class="fa fa-regular fa-comment"></span></a>
													</li>
		                                            <li>
		                                            	<a class="shareFacebook1"><span class="fab fa-facebook-f"></span></a>
		                                            </li>
		                                            <li><a class="shareTwitter1"><span class="fab fa-twitter"></span></a></li>
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
											src="resources/files/bongsa/${ddBs.bs_img_name}/title.png" alt=""></a>
									</figure>
									<div class="lower-box">
										<div class="content">
											<h3>
												<a href="bongsaDetail.do?bs_no=${ddBs.bs_no}">${ddBs.bs_title}</a>
											</h3>
											<div class="designation">${ddBs.bs_place}</div>
											<div class="social-links">
												<ul class="clearfix">
													<li>
														<input type="hidden" class="" value="${ddBs.bs_title}">
														<input type="hidden" value="${ddBs.bs_no}">
														<a class="gongu2"><span class="fa fa-regular fa-comment"></span></a>
													</li>
		                                            <li>
		                                            	<a class="shareFacebook2"><span class="fab fa-facebook-f"></span></a>
		                                            </li>
		                                            <li><a class="shareTwitter2"><span class="fab fa-twitter"></span></a></li>
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
											<span class="count-text" data-speed="3000" data-stop="${status.fdJoinCnt}">0</span>
										</div>
										<div class="counter-title">펀딩 참여인원 <br></div>
									</div>
								</div>
							</div>

							<!--Column-->
							<div class="column counter-column col-lg-3 col-md-6 col-sm-12">
								<div class="inner wow fadeInLeft" data-wow-delay="300ms"
									data-wow-duration="1500ms">
									<div class="content">
										<div class="count-outer count-box alternate">
											<span class="count-text" data-speed="3000" data-stop="${status.bsJoinCnt}">0</span>
										</div>
										<div class="counter-title">봉사 참여인원  <br></div>
									</div>
								</div>
							</div>

							<!--Column-->
							<div class="column counter-column col-lg-3 col-md-6 col-sm-12">
								<div class="inner wow fadeInLeft" data-wow-delay="600ms"
									data-wow-duration="1500ms">
									<div class="content">
										<div class="count-outer count-box">
											<span class="count-text" data-speed="3000" data-stop="${status.allDonate}">0</span>
										</div>
										<div class="counter-title">총 기부 금액<br></div>
									</div>
								</div>
							</div>

							<!--Column-->
							<div class="column counter-column col-lg-3 col-md-6 col-sm-12">
								<div class="inner wow fadeInLeft" data-wow-delay="900ms"
									data-wow-duration="1500ms">
									<div class="content">
										<div class="count-outer count-box">
											<span class="count-text" data-speed="3000" data-stop="${status.allFdPrice}">0</span>
										</div>
										<div class="counter-title">참여 금액<br><span style="font-size:10px; color:rgb(120,130,140);">※기부금액과 참여금액은 만 단위로 표기됩니다</span></div>
										
									</div>
								</div>
							</div>
							<!-- 수치 div끝 -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Funfacts Section -->
		
		<!-- 리뷰 섹션1 -->
		<!--Team Carousel Section-->
		<section class="team-carousel-section "
			style="bottom: 0px; padding: 0px; padding-top: 100px; margin-bottom:100px;">

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
										<a href="getReview.do?review_no=${bestRv.review_no}">
										<img src="resources/files/review/${bestRv.review_no}/reviewIMG.png"  style="width:370px;height:300px"alt=""></a>
									</figure>
									<div class="rating">
										<c:choose>
											<c:when test="${bestRv.user_rating eq '시민'}">
												<img src="resources/images/user_rating/rating_1_100.png" style="width:80px;height:80px">
											</c:when>
											<c:when test="${bestRv.user_rating eq '고수'}">
												<img src="resources/images/user_rating/rating_2_100.png" style="width:80px;height:80px">
											</c:when>
											<c:otherwise>
												<img src="resources/images/user_rating/rating_3_100.png" style="width:80px;height:80px">
											</c:otherwise>
										</c:choose>
									</div>
									<div class="lower-box">
										<div class="content">
											<h3>
												<a href="getReview.do?review_no=${bestRv.review_no}">${bestRv.review_title}</a>
											</h3>
											<div class="designation"><span class="icon fa fa-user"></span> ${bestRv.user_name}</div>
											<div class="social-links">
												<ul class="clearfix">
													<li>
														<input type="hidden" class="" value="${bestRv.review_title}">
														<input type="hidden" value="${bestRv.review_no}">
														<a class="gongu3"><span class="fa fa-regular fa-comment"></span></a>
													</li>
		                                            <li>
		                                            	<a class="shareFacebook3"><span class="fab fa-facebook-f"></span></a>
		                                            </li>
		                                            <li><a class="shareTwitter3"><span class="fab fa-twitter"></span></a></li>
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
	


		<!-- footer include -->
		<jsp:include page="footer.jsp" />
	</div>
	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="flaticon-up-arrow"></span>
	</div>

	<!-- 팝업 시작 -->
	<form id="pop_form" name="notice_form">
		<div id="divpop1" class="divpop">
			<div class="popImgDiv">
				<a href="getEvent.do?event_no=${popup.pop_url_no}"><img class="popImg" src="resources/files/popup/${popup.pop_no}/popupIMG.png" /></a>
				<input type="hidden" id="pop_no" value="${popup.pop_no}">
			</div>
			<div class="checkDiv">
				<input type='checkbox' name='chkbox' id='todaycloseyn' value='Y'>
				<label for="todaycloseyn"> 오늘 하루 이 창을 열지 않음</label> <a href='#'
					onclick="javascript:closeWin(1);" id="closeBtn"><B>[닫기]</B></a>
			</div>
		</div>
	</form>

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
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js" integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
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
		
		$(function() {
			$(".btn_div").click(function() {
				if ($(".right_nav").css("right") == "0px") {
					$(".right_nav").css("right", "-200px");
				} else {
					$(".right_nav").css("right", "0px");
				}
			});
		});
	</script>
	<script src="resources/js/popup.js"></script>
	<script>
		$(function(){
			// 만약 팝업 띄울게 없다면 팝업창을 비활성화시킨다
			if($('#pop_no').val() == ""){
				$('#pop_form').css('display','none');
			}
			$('#navIMG').click(function(){
				if($('#navIMG').attr("src") == "resources/images/icons/nav_closeIcon2.png"){
					$('#navIMG').attr("src","resources/images/icons/nav_openIcon1.png");
				}else{
					$('#navIMG').attr("src","resources/images/icons/nav_closeIcon2.png");
				}
			});
			
		})
		// 카카오톡 공유하기 api 펀딩
		Kakao.init('d979258f63314ea5bad35903ff604cbf');
		$('.gongu').click(function(){
			 Kakao.Share.sendDefault({
			      objectType: 'text',
			      text:$(this).prev().prev().val(),  
			      link: {
			        webUrl: 'http://localhost:8080/mohe/fundingSingle.do?fd_no='+$(this).prev().val(),
			      },
			    });
		});
		// 카카오톡 공유하기 api 봉사
		$('.gongu2').click(function(){
			 Kakao.Share.sendDefault({
			      objectType: 'text',
			      text:$(this).prev().prev().val(),  
			      link: {
			        webUrl: 'http://localhost:8080/mohe/bongsaDetail.do?bs_no='+$(this).prev().val(),
			      },
			    });
		});
		// 카카오톡 공유하기 api 리뷰
		$('.gongu3').click(function(){
			 Kakao.Share.sendDefault({
			      objectType: 'text',
			      text:$(this).prev().prev().val(),  
			      link: {
			        webUrl: 'http://localhost:8080/mohe/getReview.do?review_no='+$(this).prev().val(),
			      },
			    });

		});
		
		$('document').ready(function(){
			// 페이스북 공유하기 펀딩
			$('.shareFacebook1').click(function(){
				var url = $(this).parent().prev().children('input:nth-child(2)').val();
	 		  	window.open("http://www.facebook.com/sharer/sharer.php?u=http://localhost:8080/mohe/fundingSingle.do?fd_no=" + url);
			});
			// 페이스북 공유하기 봉사
			$('.shareFacebook2').click(function(){
				var url = $(this).parent().prev().children('input:nth-child(2)').val();
	 		  	window.open("http://www.facebook.com/sharer/sharer.php?u=http://localhost:8080/mohe/bongsaDetail.do?bs_no=" + url);
			});
			// 페이스북 공유하기 리뷰
			$('.shareFacebook3').click(function(){
				var url = $(this).parent().prev().children('input:nth-child(2)').val();
	 		  	window.open("http://www.facebook.com/sharer/sharer.php?u=http://localhost:8080/mohe/getReview.do?review_no=" + url);
			});
			
			// 트위터 공유하기 펀딩
			$('.shareTwitter1').click(function(){
				var url = $(this).parent().prev().prev().children('input:nth-child(2)').val();
				var text = $(this).parent().prev().prev().children('input:nth-child(1)').val();
	 		  	window.open("https://twitter.com/intent/tweet?text=" + text + "&url=http://localhost:8080/mohe/fundingSingle.do?fd_no=" +  url);
			});
			// 트위터 공유하기 봉사
			$('.shareTwitter2').click(function(){
				var url = $(this).parent().prev().prev().children('input:nth-child(2)').val();
				var text = $(this).parent().prev().prev().children('input:nth-child(1)').val();
	 		  	window.open("https://twitter.com/intent/tweet?text=" + text + "&url=http://localhost:8080/mohe/bongsaDetail.do?bs_no=" +  url);
			});
			// 트위터 공유하기 리뷰
			$('.shareTwitter3').click(function(){
				var url = $(this).parent().prev().prev().children('input:nth-child(2)').val();
				var text = $(this).parent().prev().prev().children('input:nth-child(1)').val();
	 		  	window.open("https://twitter.com/intent/tweet?text=" + text + "&url=http://localhost:8080/mohe/getReview.do?review_no=" +  url);
			});
			
		})
	</script>
</body>
</html>