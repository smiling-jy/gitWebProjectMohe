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
</head>

<body>

	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="header.jsp" />

		<!--Sidebar Page Container-->
		<div class="sidebar-page-container shop-page">
			<div class="auto-container">
				<div class="row clearfix" style="transform: translate(140px, 10px)";>
					<!--Content Side / Blog Sidebar-->
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
														<!-- 펀딩 블럭 -->
														<div class="cause-block col-lg-4 col-md-6 col-sm-12 ">
															<div class="inner-box wow fadeInUp" data-wow-delay="0ms">
																<div class="image-box">
																	<figure class="image">
																		<a href="fundingSingle.do?fd_no=${pj.fd_no}"><img
																			class="lazy-image"
																			src="resources/files/funding/${pj.fd_img_name}/title.png"
																			data-src="resources/files/funding/${pj.fd_img_name}/title.png"
																			alt=""></a>
																	</figure>
																</div>
																<div class="lower-content new-font">
																	<div class="progress-box">
																		<div class="bar">
																			<div class="bar-inner count-bar" data-percent="${pj.rate}%">
																				<div class="count-text">${pj.rate}%</div>
																			</div>
																		</div>
																	</div>
																	<div class="donation-count clearfix">
																		<span class="goal"><strong>목표금액:</strong>
																			${pj.fd_goals }원</span>
																	</div>
																	<h3>
																		<a href="cause-single.html" class="new-font font">${pj.fd_title }</a>
																	</h3>
																</div>
															</div>
														</div>
													</c:forEach>

												</div>

												<div class="pagination-box">
													<ul class="styled-pagination text-center">
														<li><a href="#" class="active">1</a></li>
														<li><a href="#">2</a></li>
														<li><a href="#">3</a></li>
														<li><a href="#"><span class="fa fa-angle-right"></span></a></li>
													</ul>
												</div>

											</div>



										</div>
									</section>
								</main>

								<main class="gallery-item-two mix mix-2 main">
									<section class="wrapper">
										<div class="row clearfix">


											<div class="our-shop">


												<div class="row clearfix">
													<!-- 펀딩 블럭 -->
													<div class="cause-block col-lg-4 col-md-6 col-sm-12 ">
														<div class="inner-box wow fadeInUp" data-wow-delay="0ms">
															<div class="image-box">
																<figure class="image">
																	<a href="cause-single.html"><img class="lazy-image"
																		src="resources/images/resource/image-spacer-for-validation.png"
																		data-src="resources/images/resource/cause-image-4.jpg"
																		alt=""></a>
																</figure>
															</div>
															<div class="lower-content new-font">
																<div class="progress-box">
																	<div class="bar">
																		<div class="bar-inner count-bar" data-percent="70%">
																			<div class="count-text">70%</div>
																		</div>
																	</div>
																</div>
																<div class="donation-count clearfix">
																	<span class="goal"><strong>목표금액:</strong>
																		8,000,000원</span>
																</div>
																<h3>
																	<a href="cause-single.html" class="new-font font">저소득층
																		여성을 돕는 유기농 생리대</a>
																</h3>
															</div>
														</div>
													</div>

													<!-- 펀딩 블럭 -->
													<div class="cause-block col-lg-4 col-md-6 col-sm-12 ">
														<div class="inner-box wow fadeInUp" data-wow-delay="0ms">
															<div class="image-box">
																<figure class="image">
																	<a href="cause-single.html"><img class="lazy-image"
																		src="resources/images/resource/image-spacer-for-validation.png"
																		data-src="resources/images/resource/cause-image-4.jpg"
																		alt=""></a>
																</figure>
															</div>
															<div class="lower-content new-font">
																<div class="progress-box">
																	<div class="bar">
																		<div class="bar-inner count-bar" data-percent="70%">
																			<div class="count-text">70%</div>
																		</div>
																	</div>
																</div>
																<div class="donation-count clearfix">
																	<span class="goal"><strong>목표금액:</strong>
																		8,000,000원</span>
																</div>
																<h3>
																	<a href="cause-single.html" class="new-font font">저소득층
																		여성을 돕는 유기농 생리대</a>
																</h3>
															</div>
														</div>
													</div>

													<!-- 펀딩 블럭 -->
													<div class="cause-block col-lg-4 col-md-6 col-sm-12 ">
														<div class="inner-box wow fadeInUp" data-wow-delay="0ms">
															<div class="image-box">
																<figure class="image">
																	<a href="cause-single.html"><img class="lazy-image"
																		src="resources/images/resource/image-spacer-for-validation.png"
																		data-src="resources/images/resource/cause-image-4.jpg"
																		alt=""></a>
																</figure>
															</div>
															<div class="lower-content new-font">
																<div class="progress-box">
																	<div class="bar">
																		<div class="bar-inner count-bar" data-percent="70%">
																			<div class="count-text">70%</div>
																		</div>
																	</div>
																</div>
																<div class="donation-count clearfix">
																	<span class="goal"><strong>목표금액:</strong>
																		8,000,000원</span>
																</div>
																<h3>
																	<a href="cause-single.html" class="new-font font">저소득층
																		여성을 돕는 유기농 생리대</a>
																</h3>
															</div>
														</div>
													</div>

												</div>

												<div class="pagination-box">
													<ul class="styled-pagination text-center">
														<li><a href="#" class="active">1</a></li>
														<li><a href="#">2</a></li>
														<li><a href="#">3</a></li>
														<li><a href="#"><span class="fa fa-angle-right"></span></a></li>
													</ul>
												</div>

											</div>



										</div>
									</section>
								</main>

							</div>

						</div>






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