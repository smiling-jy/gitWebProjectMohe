<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

			<div class="auto-container" id="event-banner">
				<h1>이벤트</h1>
				<ul class="bread-crumb clearfix">
					<li><a href="notice.do"><h5>공지사항</h5></a></li>
					<li><a href="faq.do"><h5>자주 묻는 질문</h5></a></li>
					<li class="active"><h5>이벤트</h5></li>
					<li><a href="partner.do"><h5>파트너</h5></a></li>
					<li><a href="review.do"><h5>후기 모음</h5></a></li>
				</ul>
			</div>

		</section>
		</div>
		
	<section class="faq-section" id="new-faq-section">
		<div class="auto-container" id="notice-container">
				<div class="tabs-box">
	<div class="content-column col-lg-8 col-md-10 col-sm-10" id="event-content">
			<!-- 이벤트 시작 -->
			<c:forEach items="${eventList}" var="event">
				<div>							
					<table class="more-table">
						<tr>
										
						<td class="more-td1">
							<h5><a href="getEvent.do?event_no=${event.event_no}" style="color:black;">
								${event.event_title}</a></h5>
							<div class="event-date">
							이벤트 기간 <span class="icon far fa-clock"></span>
							<fmt:formatDate value="${event.event_stdate}" dateStyle="short"></fmt:formatDate>
							 ~ <fmt:formatDate value="${event.event_eddate}" dateStyle="short"></fmt:formatDate>
							</div>
						</td>
						<td>
							<img class="event-img-size" src="resources/images/event/${event.event_thumbnail}.png">
						</td>
						</tr>
					</table>
					<hr style="border: solid 1px lightgrey;">
				</div><!--class="inner" 끝-->	
			</c:forEach>
	  	</div>	
	  </div>
	 </div>
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