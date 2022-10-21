<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>MOHE 마이모해</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/mohe.fdzzim.css" rel="stylesheet">
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
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/maingPage.css" rel="stylesheet">
<link href="resources/css/cart.css" rel="stylesheet">
</head>

<body>

	<div class="page-wrapper new-font">
		<!-- header include -->
		<jsp:include page="header.jsp" />
		<!--Content Side / Blog Sidebar-->
		<!--Sidebar Page Container-->
		<div class="sidebar-page-container shop-page">
			<div class="auto-container">
				<div class="row clearfix">
					<div class="content-side col-xl-9 col-lg-8 col-md-12 col-sm-12">

						<div class="mixitup-gallery">
							<!--Filter-->
							<div class="filters clearfix text-start">
								<ul class="filter-tabs filter-btns clearfix">
									<li class="filter active" data-role="button"
										data-filter=".mix-1">펀딩</li>
									<li class="filter" data-role="button" data-filter=".mix-2">봉사</li>
								</ul>
							</div>

							<div class="filter-list">

								<main class="gallery-item-two mix mix-1 main">
									<section class="wrapper">
										<div class="row clearfix">
											<div class="our-shop">
												<div class="row clearfix">
													<c:forEach items="${pj_list}" var="pj">
														<div
															class="cause-block col-lg-4 col-md-6 col-sm-12 new-box">
															<div class="inner-box wow fadeInUp new-inner-box"
																data-wow-delay="0ms">
																<div class="image-box">
																	<figure class="image">
																		<a href="fundingSingle.do?fd_no=${pj.fd_no}"><img
																			class="lazy-image img-size"
																			src="resources/files/funding/${pj.fd_img_name}/title.png"
																			data-src="resources/files/funding/${pj.fd_img_name}/title.png"
																			alt="타이틀 이미지"></a>
																	</figure>
																</div>
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
																	<c:choose>
																			<c:when test="${pj.remain_day < 0}">
																				<span class="d-day">종료되었습니다.</span>
																			</c:when>
																			<c:otherwise>
																				<span class="d-day"><strong>${pj.remain_day}</strong>일남음</span>
																			</c:otherwise>
																		</c:choose>
																	</div>
																	<h5>
																		<a href="fundingSingle.do?fd_no=${pj.fd_no}"
																			class="new-font black-font fd_title">${pj.fd_title}</a>
																	</h5>
																</div>
															<a href="deleteFdCart.do?fd_no=${pj.fd_no}" class="del-btn">삭제</a>
															</div>
														</div>
													</c:forEach>

												</div>
											</div>

										</div>
									</section>
								</main>

								<main class="gallery-item-two mix mix-2 main">
									<section class="wrapper">
										<div class="our-shop">
											<div class="row clearfix">
												<c:forEach items="${bs_list}" var="bongsa">
													<div class="cause-block col-lg-4 col-md-6 col-sm-12">
														<div class="inner-box wow fadeInUp" data-wow-delay="0ms">
															<div class="image-box">
																<figure class="image">
																	<a href="bongsaDetail.do?bs_no=${bongsa.bs_no}"><img class="lazy-image"
																		src="resources/images/resource/image-spacer-for-validation.png"
																		data-src="resources/images/resource/cause-image-4.jpg" alt=""></a>
																</figure>
															</div>
															<div class="donate-info">
																<div class="progress-box">
																	<div class="bar">
																		<div class="bar-inner count-bar" data-percent="${bongsa.bs_rate}%">
																			<div class="count-text">${bongsa.bs_rate}%</div>
																		</div>
																	</div>
																</div>
																<div class="donation-count clearfix">
																	<span class="raised"><strong>모집인원:</strong><span
																		class="bs-goal-cnt">${bongsa.bs_goal_cnt}</span>명</span><span class="goal"><strong>현재
																			신청인원:</strong><span class="bs-success-cnt">${bongsa.bs_success_cnt}</span>명</span>
																</div>
															</div>
															<div class="lower-content ">
																<h3>
																	<a href="bongsaDetail.do" class="bs-title new-font">${bongsa.bs_title}</a>
																</h3>																									
															</div>
															<a href="deleteBsCart.do?bs_no=${bongsa.bs_no}" class="del-btn">삭제</a>
														</div>
													</div> 
												</c:forEach>
											</div>
										</div>
									</section>
								</main>
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
								<h3 class="sidebar-title new-font">
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
												<li><a href="myFundingList.do">펀딩참여목록</a></li>
												<li><a href="fundingHost.do">펀딩주최목록</a></li>											
											</ul>
										</li>
										<li>봉사
											<ul>
												<li><a href="myVolunList.do">봉사참여목록</a></li>
												<li><a href="bongsaRecruiterMypage.do">봉사주최목록</a></li>								
											</ul>
										</li>
										<li class="current"><a href="shoppingBasket.do" class="jjimlist">찜목록</a></li>
									</ul>
								</div>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</div>
		
		<!-- footer include -->
		<jsp:include page="footer.jsp" />
	</div>
	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="flaticon-up-arrow"></span>
	</div>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/mixitup.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery-ui.js"></script>
	<script src="resources/js/jquery.bootstrap-touchspin.js"></script>
	<script src="resources/js/jquery.fancybox.js"></script>
	<script src="resources/js/owl.js"></script>
	<script src="resources/js/appear.js"></script>
	<script src="resources/js/wow.js"></script>
	<script src="resources/js/lazyload.js"></script>
	<script src="resources/js/scrollbar.js"></script>
	<script src="resources/js/script.js"></script>

</body>

</html>