<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE |</title>
<link rel="shortcut icon"
	href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 수정한 css-->
<link href="resources/css/funding.css" rel="stylesheet">
<link href="resources/css/header3.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">

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
		<jsp:include page="headerMint.jsp" />

		<!--Causes Section-->
		<section class="causes-section">
			<div class="page-banner no-banner" id="category">
				<!-- 카테고리 -->
				<div class="auto-container">
					<ul class="bread-crumb clearfix new-font boder">
						<li><a href="funding.do">전체</a></li>
						<li><a href="funding.do?fd_category=디자인문구"><img src="resources/images/fd-category/identification.png"><span>문구</span></a></li>
						<li><a href="funding.do?fd_category=식품"><img src="resources/images/fd-category/sandwich.png"><span>식품</span></a></li>
						<li><a href="funding.do?fd_category=패션잡화"><img src="resources/images/fd-category/clothes.png"><span>패션잡화</span></a></li>
						<li><a href="funding.do?fd_category=홈리빙"><img src="resources/images/fd-category/tent.png"><span>홈 리빙</span> </a></li>
						<li><a href="funding.do?fd_category=반려동물"><img src="resources/images/fd-category/animal.png"><span>반려동물</span></a></li>
					</ul>
				</div>
			</div>
			<!-- 검색창 -->

			<div class="auto-container">
				<div class=" new-font funding-search-box">
					<a href="openfunding.do" class="theme-btn btn-style-one link-box">
						<span class="btn-title new-btn-title">주최하기</span>
					</a>
					<div class="search">
						<form action="funding.do" method="post">
							<input type="search" name="search" value="" placeholder="Search..." required>
							<button type="submit">
								<span class="icon flaticon-search-1"></span>
							</button>
							<select name="select">
								<option value="pj.fd_no">최신순</option>
								<option value="rate">인기순</option>
							</select>
						</form>
					</div>	
				</div>
				<div class="row clearfix">

					<!-- 펀딩 블럭 -->
					<c:forEach items="${pj_list}" var="pj">
						<div class="cause-block col-lg-4 col-md-6 col-sm-12 ">
							<div class="inner-box wow fadeInUp" data-wow-delay="0ms">
								<div class="image-box">
									<figure class="image">
										<a href="fundingSingle.do?fd_no=${pj.fd_no}"><img
											class="lazy-image img-size"
											src="resources/files/funding/${pj.fd_img_name}/title.png"
											data-src="resources/files/funding/${pj.fd_img_name}/title.png"
											alt="타이틀 이미지"></a>
									</figure>
								</div>
								<div class="lower-content new-font">
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
										<span class="goal">목표금액:<strong>
												${pj.fd_goals}</strong></span><span class="d-day"><strong>${pj.remain_day}</strong>일남음</span>
									</div>
									<h3>
										<a href="fundingSingle.do?fd_no=${pj.fd_no}" class="new-font">${pj.fd_title}</a>
									</h3>
								</div>
							</div>
						</div>
					</c:forEach>
					<!-- 펀딩 블럭 끝 -->

				</div>
			</div>
		</section>
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
	<script src="resources/js/funding.js"></script>

</body>
</html>