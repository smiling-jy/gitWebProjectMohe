<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 공지 사항</title>
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
				<h1>공지 사항</h1>
				<ul class="bread-crumb clearfix">
					<li class="active"><h5>공지사항</h5></li>
					<li><a href="faq.do"><h5>자주 묻는 질문</h5></a></li>
					<li><a href="event.do"><h5>이벤트</h5></a></li>
					<li><a href="partner.do"><h5>파트너</h5></a></li>
					<li><a href="review.do"><h5>후기 모음</h5></a></li>
				</ul>
			</div>
	</section>
	</div>
		<!--End Banner Section -->

		<!--FAQs Section-->
		<section class="faq-section" id="new-faq-section">

			<div class="auto-container" id="notice-container">
				<div class="tabs-box">
					

						<!--Title Column-->

						<!--공지사항 게시판!! 더보기 형식이 아닌 제목 클릭시 본문 페이지로 이동~~-->
				<div class="content-column col-lg-8 col-md-10 col-sm-10" id="notice-content">
						<!-- 검색창 -->
						<div class="search-box">
							<form name="search" action="notice.do" method="post">
									<select name="select">
										<option value="notice_title">제목</option>
										<option value="notice_text">내용</option>
									</select>
								<input type="search" name="stext" value="${page.stext}" placeholder="Search..." required>
								<button type="submit"><span class="icon flaticon-search-1"></span></button>
							</form>
						</div>
						<!-- 검색창 -->
	
								
							<!-- 게시글 시작 -->
							<c:forEach items="${noticeList}" var="notice">
								<div>							
									<table class="more-table">
									<tr>
										
										<td class="more-td1">
											<h4><a href="getNotice.do?notice_no=${notice.notice_no}" style="color:black;">
											${notice.notice_title}</a></h4>
										</td>
										<td>
										&nbsp;&nbsp;&nbsp;
										</td>
										<td>
											<div style="color:grey; font-size:13px; text-align:center;">
												<span class="icon fa fa-user"></span>&nbsp;&nbsp;${notice.adm_id}
												<fmt:formatDate value="${notice.notice_date}" pattern="yyyy-MM-dd"></fmt:formatDate>
											</div>
										</td>
										<td><div style="color:grey; font-size:13px;">${notice.notice_readcnt}</div></td>
									</tr>
									</table>
										<hr style="border: solid 1px lightgrey;">
								</div><!--class="inner" 끝-->	
							</c:forEach>	
						<!-- 페이징 시작 -->
						<div id="paging" style="text-align:center;">
							<c:choose>
								<c:when test="${page.groupNo-1 > 0 }">
									<c:choose>
										<c:when test="${page.stext ne null}">	
											<a href="?pageNum=${page.firstPageNo-1}&&groupNo=${page.groupNo-1}&&select=${page.select}&&stext=${page.stext}" > ◀ </a>
										</c:when>
										<c:otherwise>
											<a href="?pageNum=${page.firstPageNo-1}&&groupNo=${page.groupNo-1}" > ◀ </a>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<span class="notice-paging"> ◀  </span>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${page.stext ne null}">
									<c:forEach var="i" begin="${page.firstPageNo}" end="${page.endPageNo}">
										<a href="?pageNum=${i}&&groupNo=${page.groupNo}&&select=${page.select}&&stext=${page.stext}">${i}</a>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:forEach var="i" begin="${page.firstPageNo}" end="${page.endPageNo}">
										<a href="?pageNum=${i}&&groupNo=${page.groupNo}" style="font-size:20px;">[${i}]</a>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${page.endPageNo < page.pageTotalCount }">
									<c:choose>
										<c:when test="${page.stext ne null}">
											<a href="?pageNum=${page.endPageNo+1}&&groupNo=${page.groupNo+1}&&select=${page.select}&&stext=${page.stext}" > ▶ </a>
										</c:when>
										<c:otherwise>
											<a href="?pageNum=${page.endPageNo+1}&&groupNo=${page.groupNo+1}" > ▶ </a>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<span> ▶ </span>
								</c:otherwise>
							</c:choose>
						</div>
						<!-- 페이징 끝 -->
					</div>
				</div>
			</div>
					
	</section>


		<!-- footer include -->
		<jsp:include page="footer.jsp" />
		<!-- Main Footer -->
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