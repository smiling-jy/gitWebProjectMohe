<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<link href="resources/css/header1.css" rel="stylesheet">
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
		<jsp:include page="header.jsp" />

		<!--Sidebar Page Container-->
		<div class="sidebar-page-container shop-page">
			<div class="auto-container">
				<div class="row clearfix">

					<!--Content Side / Blog Sidebar-->
					<div class="content-side col-xl-9 col-lg-8 col-md-12 col-sm-12">
						<div class="our-shop new-font">
							<div>
								<c:if test="${not empty success_list}">
									<h3>성공한 프로젝트</h3>
								</c:if>
								<!-- 펀딩 블럭 -->
								<c:forEach items="${success_list}" var="pj">
									<div class="cause-block col-lg-4 col-md-6 col-sm-12 new-box">
										<div class="inner-box wow fadeInUp new-inner-box" data-wow-delay="0ms">
				
											<div class="lower-content new-font new-con-box">
												<div class="progress-box">
													<div class="bar">
														<div class="bar-inner count-bar" data-percent="100%">
															<div class="count-text">${pj.rate}%</div>
														</div>
													</div>
												</div>
												<div class="donation-count clearfix">
													<span class="goal">달성금액:<strong>${pj.total_sum}원</strong></span>
												</div>
												<h5>
													<a href="patronList.do?fd_no=${pj.fd_no}&fd_title=${pj.fd_title}" class="new-font black-font">${pj.fd_title}</a>
												</h5>
											</div>
										</div>
									</div>
								</c:forEach>
								<!-- 펀딩 블럭 끝 -->
							</div>
							<c:if test="${not empty success_list}">
								<hr/>
							</c:if>
							<div>
								<h3>진행중인 프로젝트</h3>
								<!-- 펀딩 블럭 -->
								<c:forEach items="${ongoing_list}" var="pj">
									<div class="cause-block col-lg-4 col-md-6 col-sm-12 new-box">
										<div class="inner-box wow fadeInUp new-inner-box" data-wow-delay="0ms">			
											<div class="lower-content new-font new-con-box">
												<div class="progress-box">
													<div class="bar">
													<c:choose>
														<c:when test="${pj.rate > 100}">
															<div class="bar-inner count-bar" data-percent="100%">
																<div class="count-text">${pj.rate}%</div>
															</div>
														</c:when>
														<c:otherwise>
															<div class="bar-inner count-bar" data-percent="${pj.rate}%">													
																<div class="count-text">${pj.rate}%</div>
															</div>
														</c:otherwise>
													</c:choose>
													</div>
												</div>
												<div class="donation-count clearfix">
													<span class="goal">현재금액:<strong>
															${pj.total_sum}원</strong></span><br />
													<span><strong>${pj.remain_day}</strong>일남음</span>
												</div>
												<h5>
													<a href="fundingSingle.do?fd_no=${pj.fd_no}" class="new-font black-font fd_title_qna">${pj.fd_title}</a>
												</h5>
											</div>
												<input type="button" class="a-btn" value="Q&A">
												<input type="hidden" value="${pj.fd_no}" class="fd_no">
										</div>
									</div>
								</c:forEach>
								<!-- 펀딩 블럭 끝 -->
							</div>
							<div>
								<h3 class="fd_title_qna"></h3>
								<div class="tab active-tab">
									<ul class="accordion-box clearfix" id="qna-in"></ul>
								</div>
							</div>
						</div>
					</div>

					<!--Sidebar Side-->
					<div class="sidebar-side col-xl-3 col-lg-4 col-md-12 col-sm-12 text-center">
						<aside class="sidebar shop-sidebar">
							<div class="sidebar-widget price-filters rangeslider-widget">
								<div class="input-control d-block">
									<label for="userName" class="input-label"></label>
									<div class="profile-user-img margin-auto">
										<img class="margin-auto profile-user-img-img"
											src="resources/images/mohe_logo/img_no_profile.png"
											alt="profile-user-img" style="max-width: 130px">
									</div>
								</div>
								<h3 class="sidebar-title">
									<c:out value="${sessionScope.user.user_name}" />
									님(
									<c:out value="${sessionScope.user.user_rating}" />
									)
								</h3>
								<div class="range-slider-one clearfix">
									<div class="clearfix">
										<div class="text-center">
											<a href="modifyInfo.do" class="theme-btn btn-style-one"><span
												class="btn-title">회원 수정</span></a><br /> <a href="#"
												class="theme-btn btn-style-one"><span
												class="btn-title bg-red">회원 탈퇴</span></a>
										</div>
									</div>
								</div>
							</div>
							<!-- Category Widget -->
							<div class="sidebar-widget categories">
								<div class="widget-content">
									<ul id="cart-ul">
										<li><a href="details.do">펀딩참여내역</a></li>
										<li><a href="details.do">봉사참여내역</a></li>
										<li><a href="shoppingBasket.do">찜목록</a></li>
										<li class="current"><a href="fundingHost.do">펀딩주최MyPage</a></li>
										<li><a href="bongsaRecruiterMypage.do">봉사주최MyPage</a></li>
									</ul>
								</div>
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