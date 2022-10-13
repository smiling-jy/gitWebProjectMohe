<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 이벤트</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 추가된 css-->
<link href="resources/css/more.css" rel="stylesheet">

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
</head>

<body>

	<div class="page-wrapper">

		<!-- header include -->
		<jsp:include page="header.jsp" />
		<!-- Page Banner Section -->
		<section class="page-banner" id="new-banner">

			<div class="auto-container">
				<h1>이벤트</h1>
				<ul class="bread-crumb clearfix">
					<li><a href="notice.html"><h5>공지사항</h5></a></li>
					<li><a href="faq.html"><h5>자주 묻는 질문</h5></a></li>
					<li class="active"><h5>이벤트</h5>
						</a></li>
					<li><a href="partner.html"><h5>파트너</h5></a></li>
					<li><a href="review.html"><h5>후기 모음</h5></a></li>
				</ul>
			</div>

		</section>
		
	<section class="gallery-page-section">
			<div class="tabSet">
				<!-- 이벤트 탭 버튼 -->
					<table id="event-table">
						<tr>
								<td class="event-btn">
									<a href="#panel-1" class="on">
									<button class="event-tab">EVENT 1</button></a>
								</td>
							
								<td class="event-btn">
									<a href="#panel-2">
									<button class="event-tab">EVENT 2</button></a>
								</td>
								<td class="event-btn">
									<a href="#panel-3">
									<button class="event-tab">EVENT 3</button></a>
								</td>
								<td class="event-btn">
									<a href="#panel-4">
									<button class="event-tab">EVENT 4</button></a>
								</td>
								<td class="event-btn">
									<a href="#panel-5">
									<button class="event-tab">EVENT 5</button></a>
								</td>
						</tr>
					
						<!-- 이벤트 탭 화면 -->
						<!-- db뿌리기 다시 생각해봐야함... -->
						<tr class="table-gap">
							
						</tr>
				
						<tr>
							<td colspan="5" class="eventView-td">
								<div class="panel" id="panel-1">
									<img src="resources/images/event/EventThumbnail_1.PNG">
									<br><br>
									<img src="resources/images/event/EVENTIMG1.png">
								</div>
								<div class="panel" id="panel-2">
									<img src="resources/images/event/EventThumbnail_2.PNG">
									<br><br>
									<img src="resources/images/event/EVENTIMG2.png">
								</div>
								<div class="panel" id="panel-3">
									<img src="resources/images/event/EventThumbnail_3.PNG">
									<br><br>
									<img src="resources/images/event/EVENTIMG3.png">
									<img src="resources/images/event/EVENTIMG3-2.png">
								</div>
								<div class="panel" id="panel-4">
									<img src="resources/images/event/EventThumbnail_4.PNG">
									<br><br>
									<img src="resources/images/event/EVENTIMG4.png">
								</div>
								<div class="panel" id="panel-3">
									이벤트 view TEST 5
								</div>
							</td>
						</tr>
					</table>
					
				</div><!-- end class="tabSet" -->
	</section><!-- end class="event-section"  -->


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
	<script src="resources/js/event.js"></script>

</body>
</html>