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

		<!-- Page Banner Section -->
		<!-- <section class="page-banner"> -->
		<!-- <div class="image-layer lazy-image" data-bg="url('resources/images/background/bg-banner-1.jpg')"></div> -->
		<!-- <div class="bottom-rotten-curve"></div> -->
		<!-- </section> -->
		<!--End Banner Section -->


		<!--Sidebar Page Container-->
		<div class="sidebar-page-container">
			<div class="page-banner no-banner">
				<div class="auto-container new-font">
					<h1>${pj.fd_title}</h1>
					<ul class="bread-crumb clearfix new-font info-qna">
						<li><a href="fundingSingle.do">소개</a></li>
						<li class="active">문의</li>
					</ul>
				</div>
			</div>
			<div class="auto-container">
				<div class="row clearfix">

					<!--Content Side / Blog Sidebar-->
					<div class="content-side col-lg-8 col-md-12 col-sm-12 new-font">
						<!--Cause Details-->
						<div class="cause-details">
							<div class="inner-box donate-form">
								<form action="questionSave.do" method="post">
									<input type="hidden" name="fd_no" value="${pj.fd_no}">
									<textarea id="question-box" name="qna_question"></textarea>
									<button class="new-btn">질문하기</button>
								</form>
								<div class="tab active-tab">
									<ul class="accordion-box clearfix">
										<!--Block-->
										<c:forEach items="${qna_list}" var="qna">
											<li class="accordion block active-block f-size">
												<div class="acc-btn">
													<span><strong>Q. </strong> ${qna.qna_question}</span>
													<!-- 조건문으로 본인 글만 삭제 가능하게... -->
													<c:if test="${sessionScope.user_no eq qna.user_no}">
														<button class="x-btn">x</button>
													</c:if>
												</div>
												<div class="acc-content">
													<div class="content">
														<!-- 조건문으로 답변있없 -->
														<div class="text">
															<c:choose>
																<c:when test="${qna.qna_answer eq null }">
																	<span>아직 답변이 없습니다.</span>
																</c:when>
																<c:otherwise> <span><strong>A.
																	</strong>${qna.qna_answer}</span>
																</c:otherwise>
															</c:choose>
														</div>
													</div>
												</div>
											</li>
										</c:forEach>
									</ul>
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
								<a href="fundingPay.do?fd_no=${pj.fd_no}" class="theme-btn btn-style-one link-box"><span
									class="btn-title new-font new-btn-title">펀딩하기</span></a>
								<button class="funding-btn" id="jjim">♥</button>
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