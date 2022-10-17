<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


		<!--Sidebar Page Container-->
		<div class="sidebar-page-container">
			<div class="page-banner no-banner">
				<div class="auto-container new-font">
					<h1>${pj.fd_title}</h1>
					<ul class="bread-crumb clearfix new-font info-qna">
						<li class="active">소개</li>
						<li><a href="fundingQna.do?fd_no=${pj.fd_no}">문의</a></li>
					</ul>
				</div>
			</div>
			<div class="auto-container">
				<div class="row clearfix">

					<!--Content Side / Blog Sidebar-->
					<div class="content-side col-lg-8 col-md-12 col-sm-12">
						<!--Cause Details-->
						<div class="cause-details">
							<div class="inner-box">
								<!-- 타이틀 이미지 영역 -->
								<div class="image-box">
									<figure class="image">
										<img class="lazy-image"
											src="resources/files/funding/${pj.fd_img_name}/title.png"
											data-src="resources/files/funding/${pj.fd_img_name}/title.png" alt="타이틀 이미지">
									</figure>
								</div>
								<div class="donate-info">
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
										<span class="raised"><strong>현재금액</strong> ${pj.total_sum}</span> <span
											class="goal"><strong>목표금액:</strong> ${pj.fd_goals}</span>
									</div>
								</div>
								<!-- 첨부파일 영역 -->
								<div class="lower-content">
									<br/>
									<p class="contentp">
										이 프로젝트는 <strong>${pj.fd_receiver}</strong> 를 후원합니다.
									</p>
									<br/>
									<p class="contentp">
										${pj.fd_content}
									</p>
									<br/>
									<c:forEach var="cnt" begin="1" end="${pj.fd_img_cnt}">
										<img src="resources/files/funding/${pj.fd_img_name}/${cnt}.png">
									</c:forEach>
								</div>
							</div>
						</div>

					</div>

					<!--Sidebar Side-->
					<div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
						<aside class="sidebar" id="new-side">
							<!-- Search -->
							<div class="sidebar-widget new-font">
								<h5>모인금액</h5>
								<h1>${pj.total_sum}원</h1>
								<h5>남은시간</h5>
								<h1>${pj.remain_day}일</h1>
								<h5>참여자</h5>
								<h1>${pj.total_people}명</h1>
							</div>
							<!-- 펀딩하기, 찜, 공유 영역 -->
							<div class="new-font" id="funding-div">
								<a href="fundingPay.do?fd_no=${pj.fd_no}"
									class="theme-btn btn-style-one link-box"><span
									class="btn-title new-font new-btn-title">펀딩하기</span></a>
									<button class="funding-btn" id="jjim">♥</button>
									<input type="hidden" name="fd_no" value="${pj.fd_no}">
									<button class="funding-btn" id="gongu">
									<span class="flaticon-share"></span>
								</button>
							</div>
						</aside>
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