<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
						<div class="cart-outer m-auto">
							<div class="table-column">
								<div class="inner-column">
									<div class="table-outer">
										<div class="table-box">
											<table class="cart-table">
												<thead class="cart-header">
													<tr>
														<th class="prod-column">후기 제목</th>
														<th>&nbsp;</th>
														<th>작성날짜</th>
														<th>조회수</th>
														<th>수정&nbsp;/&nbsp;삭제</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${myReviewList}" var="review">
														<tr>
															<td colspan="2" class="prod-column">
																<a href="getReview.do?review_no=${review.review_no}" style="color:black;">
																	<h5 class="prod-title">${review.review_title}</h5>
																</a>
															</td>
															<td><fmt:formatDate value="${review.review_date}" dateStyle="short"></fmt:formatDate></td>
															<td>${review.review_read_cnt}</td>
															<td>
																<a href="goUpdate.do?review_no=${review.review_no}" class="remove-btn"> <span
																			class="flaticon-check"></span>
																</a>&nbsp;&nbsp;&nbsp; <a href="myReviewDelete.do?review_no=${review.review_no}">
																<span class="flaticon-delete-1"></span></a>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
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
												<li><a href="details.do">봉사참여목록</a></li>
												<li><a href="bongsaRecruiterMypage.do">봉사주최목록</a></li>								
											</ul>
										</li>
										<li><a href="shoppingBasket.do" class="jjimlist">찜목록</a></li>
										<li>후기
											<ul>
												<li class="current"><a href="myReviewList.do">나의후기목록</a></li>
											</ul>
										</li>
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