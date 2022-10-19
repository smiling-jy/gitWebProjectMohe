<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


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
					<li><a href="notice.do"><h5>공지사항</h5></a></li>
					<li><a href="faq.do"><h5>자주 묻는 질문</h5></a>
					<li><a href="event.do"><h5>이벤트</h5></a></li>
					<li><a href="partner.do"><h5>파트너</h5></a></li>
					<li class="active"><a href="review.do"><h5>후기 모음</h5></a></li>
				</ul>
			</div>

		</section>
		<!--End Banner Section -->

		<!--Events Section-->
		<section class="events-section">
				
			<div class="auto-container">
			<!-- 후기 작성 임시 링크 !! 나중에 마이페이지에서 제대로 이어주기 (10.04 영민) -->
					
					<a href="reviewInsertForm.do" class="theme-btn btn-style-one link-box">
						<span class="btn-title new-btn-title">후기 작성</span></a>
					<!-- 검색창 -->
			<div class="search-box">
					<form action="review.do" method="post">
						<select name="select">
							<option value="review_title">제목</option>
							<option value="review_text">내용</option>
						</select>
						<input type="search" name="search" placeholder="Search..." required>
						<button type="submit">
							<span class="icon flaticon-search-1"></span>
						</button>
					</form>
			</div>
					
				<div class="row clearfix">
					
					<!--review Block-->
					<c:forEach items="${reviewList}" var="review">
					<div class="event-block-three col-lg-4 col-md-6 col-sm-12">
						<div class="inner-box wow fadeInUp" data-wow-delay="0ms">
							<div class="image-box">
								<figure class="image">
									<a href="getReview.do?review_no=${review.review_no}"><img class="lazy-image img-size"
										src="resources/images/resource/image-spacer-for-validation.png"
										data-src="resources/reviewUploadFile/ReviewIMG_${review.review_no}.png"
										onerror="this.src='resources/images/mohe_logo/logo_mint_big.png'"
										alt="review IMG"></a>
								</figure>
								<div class="date">
									<fmt:formatDate value="${review.review_date}" pattern="dd"></fmt:formatDate>
									<span class="month">${review.review_date}</span>
								</div>
							</div>
							<div class="lower-content">
								<h3>
									<a href="getReview.do?review_no=${review.review_no}"> ${review.review_title} </a>
								</h3>
								<ul class="info clearfix">
									<li><span class="icon fa fa-user"></span>${review.user_name}</li>
									<li><span class="icon far fa-clock"></span>
										<fmt:formatDate value="${review.review_date}" dateStyle="short"></fmt:formatDate></li>
									<li> 조회수 : ${review.review_read_cnt}</li>
								</ul>
								<div class="link-box">
									<a href="getReview.do?review_no=${review.review_no}" class="theme-btn btn-style-two"><span
										class="btn-title">더보기</span></a>
								</div>
							 </div>
						 </div>
					  </div>
					 
					</c:forEach>
				</div>
			</div>
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