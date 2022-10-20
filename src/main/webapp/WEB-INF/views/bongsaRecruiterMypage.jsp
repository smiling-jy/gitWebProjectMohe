<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- jsp에서 substring 쓸때 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 봉사모집자 마이페이지</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/bongsaRecruiterMypage.css" rel="stylesheet">

<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">

<link rel="shortcut icon"
	href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">
</head>

<body>

	<div class="page-wrapper newFont">

		<!-- header include -->
		<jsp:include page="header.jsp" />

		<!--Sidebar Page Container-->
		<div class="sidebar-page-container shop-page">
			<div class="auto-container">
				<div class="row clearfix">

					<!--Content Side / Blog Sidebar-->
					<div class="content-side col-xl-9 col-lg-8 col-md-12 col-sm-12">
						<div class="our-shop">
							<c:if test="${not empty success_list}">
								<div class="shop-upper-box clearfix">
									<span class="items-label newFont" id="recruiting-list">모집완료한 봉사활동</span>
								</div>
							</c:if>
							<div class="row clearfix">
								<c:forEach items="${success_list}" var="bongsa">
									<!--Shop Item-->
								<div class="cause-block col-lg-4 col-md-6 col-sm-12 new-box">
										<div class="inner-box wow fadeInUp new-inner-box" data-wow-delay="0ms">			
											<div class="lower-content new-font new-con-box">
												<div class="progress-box">
													<div class="bar">
													<c:choose>
														<c:when test="${bongsa.bs_rate > 100}">
															<div class="bar-inner count-bar" data-percent="100%">
																<div class="count-text">${bongsa.bs_rate}%</div>
															</div>
														</c:when>
														<c:otherwise>
															<div class="bar-inner count-bar" data-percent="${bongsa.bs_rate}%">													
																<div class="count-text">${bongsa.bs_rate}%</div>
															</div>
														</c:otherwise>
													</c:choose>
													</div>
												</div>
												<div class="donation-count clearfix">
													<span class="goal">참여인원 : ${bongsa.bs_success_cnt}</span><br>
													<span>${fn:substring(bongsa.bs_work_start,0,16)} ~ </span><br>
													<span> ${fn:substring(bongsa.bs_work_end,0,16)}</span><br>
												</div>
												<h5>
													<a href="bongsaParticipateList.do?bs_no=${bongsa.bs_no}" class="new-font black-font fd_title_qna newFont">${bongsa.bs_title}</a>
												</h5>
											</div>
										</div>
									</div><!-- shop아이템 종료 -->
								</c:forEach>	
							</div>


							<div class="shop-upper-box clearfix">
								<span class="items-label newFont" id="recruited-list">모집중인
									봉사활동</span>
							</div>

							<div class="row clearfix">
								<c:forEach items="${ongoing_list}" var="bongsa">
								<!--Shop Item-->
								<div class="cause-block col-lg-4 col-md-6 col-sm-12 new-box">
										<div class="inner-box wow fadeInUp new-inner-box" data-wow-delay="0ms">			
											<div class="lower-content new-font new-con-box">
												<div class="progress-box">
													<div class="bar">
													<c:choose>
														<c:when test="${bongsa.bs_rate > 100}">
															<div class="bar-inner count-bar" data-percent="100%">
																<div class="count-text">${bongsa.bs_rate}%</div>
															</div>
														</c:when>
														<c:otherwise>
															<div class="bar-inner count-bar" data-percent="${bongsa.bs_rate}%">													
																<div class="count-text">${bongsa.bs_rate}%</div>
															</div>
														</c:otherwise>
													</c:choose>
													</div>
												</div>
												<div class="donation-count clearfix">
													<span class="goal">모집인원 : ${bongsa.bs_goal_cnt}</span><br>
													<span class="goal">참여인원 : ${bongsa.bs_success_cnt}</span><br>
													<span>${fn:substring(bongsa.bs_work_start,0,16)} ~ </span><br>
													<span> ${fn:substring(bongsa.bs_work_end,0,16)}</span><br>
												</div>
												<h5>
													<a href="bongsaDetail.do?bs_no=${bongsa.bs_no}" class="new-font black-font fd_title_qna newFont">${bongsa.bs_title}</a>
												</h5>
											</div>
										</div>
									</div><!-- shop아이템 종료 -->
								</c:forEach>
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
									<ul class="cart-ul">
										<li>펀딩
											<ul>
												<li><a href="details.do">펀딩참여목록</a></li>
												<li class="current"><a href="fundingHost.do">펀딩주최목록</a></li>											
											</ul>
										</li>
										<li>봉사
											<ul>
												<li><a href="details.do">봉사참여목록</a></li>
												<li><a href="bongsaRecruiterMypage.do">봉사주최목록</a></li>								
											</ul>
										</li>
										<li><a href="shoppingBasket.do" class="jjimlist">찜목록</a></li>
									</ul>
								</div>
							</div>
						</aside>
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
	<script src="resources/js/bongsa.js"></script>


</body>
</html>