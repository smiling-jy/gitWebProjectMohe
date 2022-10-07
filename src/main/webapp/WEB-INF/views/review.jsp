<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 후기 모음</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 추가된 css-->
<link href="resources/css/more.css" rel="stylesheet">
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">

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
</head>

<body>

	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="header.jsp" />

		<!-- Page Banner Section -->
		<section class="page-banner" id="new-banner">
			<div class="auto-container">
				<h1>후기 모음</h1>
				<ul class="bread-crumb clearfix">
					<li><a href="notice.html"><h5>공지사항</h5></a></li>
					<li><a href="faq.html"><h5>자주 묻는 질문</a>
					<h5></h5></li>
					<li><a href="event.html"><h5>이벤트</h5></a></li>
					<li><a href="partner.html"><h5>파트너</h5></a></li>
					<li class="active"><h5>후기 모음</h5>
						</a></li>
				</ul>
			</div>

		</section>
		<!--End Banner Section -->

		<!--Events Section-->
		<section class="events-section">
			<div id="new-search-box" style="margin-left: 1070px;">
				<input type="search" name="search-field" value="" placeholder="검색"
					required>
				
			</div>
			<div class="auto-container">
			
			
			<!-- 후기 작성 임시 링크 !! 나중에 마이페이지에서 제대로 이어주기 (10.04 영민) -->
					<br>
					<a href="reviewInsertForm.do">[ 후기작성하기 ]</a>
					<br>

				<div class="row clearfix">
					
					<!--Event Block-->
					<c:forEach items="${reviewList}" var="review">
					<div class="event-block-three col-lg-4 col-md-6 col-sm-12">
						<div class="inner-box wow fadeInUp" data-wow-delay="0ms">
							<div class="image-box">
								<figure class="image">
									<a href="event-single.html"><img class="lazy-image"
										src="resources/images/resource/image-spacer-for-validation.png"
										data-src="resources/images/mohe_logo/review01.png" alt=""></a>
								</figure>
								<div class="date">
									25 <span class="month">Aug</span>
								</div>
							</div>
							<div class="lower-content">
								<h3>
									<a href="getReview.do?review_no=${review.review_no}"> ${review.review_title} </a>
								</h3>
								<ul class="info clearfix">
									<li><span class="icon far fa-clock">${review.user_name}</span></li>
									<li><span class="icon fa fa-map-marker-alt"></span> 천안
										포해피니스</li>
								</ul>
								<div class="link-box">
									<a href="event-single.html" class="theme-btn btn-style-two"><span
										class="btn-title">더보기</span></a>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>

					

		</section>


		<!-- footer include -->
		<jsp:include page="footer.jsp" />
		<!-- Main Footer -->
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

</body>
</html>