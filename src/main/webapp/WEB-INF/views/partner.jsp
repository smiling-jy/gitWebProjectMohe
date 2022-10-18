<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 파트너</title>
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
				<h1>참여 단체</h1>
				<ul class="bread-crumb clearfix">
					<li><a href="notice.do"><h5>공지사항</h5></a></li>
					<li><a href="faq.do"><h5>자주 묻는 질문</h5></a></li>
					<li><a href="event.do"><h5>이벤트</h5></a></li>
					<li class="active"><h5>파트너</h5>
			
					<li><a href="review.do"><h5>후기 모음</h5></a></li>
				</ul>
			</div>

		</section>
		<!--End Banner Section -->

		<!-- Gallery Page Section -->
		<section class="gallery-page-section" id="contact-partner">
			<h3>contact our partner</h3>
			<img src="resources/images/mohe_logo/logo_hart.png"><br>
			<br>
			<div class="auto-container">
				<!--MixitUp Galery-->
	
					 <div class="filter-list row">
						<!-- Gallery Item Two -->
					<c:forEach items="${partnerList}" var="partner">
						<div class="gallery-item-two mix all volunteer children col-lg-4 col-md-6 col-sm-12">
							<div class="image-box">
								<figure class="image">
									<img class="lazy-image"
										src="resources/images/resource/image-spacer-for-validation.png"
										data-src="resources/images/mohe_logo/partnerLogo/${partner.partner_logo}.png"
										style="height: 340px;" alt="">
								</figure>
								<div class="overlay-box">
									<a href="${partner.partner_url}"><span
										class="icon flaticon-cross-1"></span></a>
								</div>
							</div>
						</div>
					</c:forEach>

						
					</div>
				</div>
			</section>
		</div>
				

		<!-- footer include -->
		<jsp:include page="footer.jsp" />

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
	<script src="resources/js/mixitup.js"></script>
	<script src="resources/js/owl.js"></script>
	<script src="resources/js/appear.js"></script>
	<script src="resources/js/wow.js"></script>
	<script src="resources/js/lazyload.js"></script>
	<script src="resources/js/scrollbar.js"></script>
	<script src="resources/js/script.js"></script>

</body>
</html>