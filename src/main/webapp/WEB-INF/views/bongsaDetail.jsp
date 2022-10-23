<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- jsp에서 substring 쓸때 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 봉사상세페이지 너무 짜증나느....</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/bongsaDetail.css" rel="stylesheet">

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
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
<link href="resources/css/header2.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">
</head>

<body>

	<div class="page-wrapper newFont">

		<!-- header include -->
		<jsp:include page="headerRed.jsp" />
		<!--End Banner Section -->
		<div class="auto-container bs-detail-name">
			<h1 class="newFont" id="titleBs">${bongsa.bs_title}</h1>
		</div>

		<!--Sidebar Page Container-->
		<div class="sidebar-page-container">
			<div class="auto-container">
				<div class="row clearfix">

					<!--Content Side / Blog Sidebar-->
					<div class="content-side col-lg-8 col-md-12 col-sm-12">
						<!--Cause Details-->
						<div class="cause-details">
							<div class="inner-box">
								<div class="image-box">
									<figure class="image">
										<img class="lazy-image"
											src="resources/files/bongsa/${bongsa.bs_img_name}/title.png" alt="타이틀 이미지">
									</figure>
								</div>
								<div class="donate-info">
									<div class="progress-box">
										<div class="bar">
											<div class="bar-inner count-bar" data-percent="${bongsa.bs_rate}%">
												<div class="count-text">${bongsa.bs_rate}%</div>
											</div>
										</div>
									</div>
									<div class="donation-count clearfix">
										<span class="raised"><strong>모집인원: </strong>${bongsa.bs_goal_cnt}명</span>
										<span class="goal"><strong>현재 신청인원: </strong>${bongsa.bs_success_cnt}명</span>
									</div>
								</div>
								<div class="lower-content">
<!-- 									<div class="text-content"> -->
<%-- 										<h6 class="newFont">${bongsa.bs_content}</h6> --%>
<!-- 										<br> -->
<!-- 									</div> -->
																	<br/>
									<br/>
									<h6 class="newFont">
										${bongsa.bs_content}
									</h6>
									<br/>
									<c:forEach var="cnt" begin="0" end="${bongsa.bs_img_cnt}">
										<img src="resources/files/bongsa/${bongsa.bs_img_name}/${cnt}.png">
									</c:forEach>
								
								
								
								</div>
							</div>
						</div>

					</div>
					<!--Sidebar Side-->
					<div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
						<aside class="sidebar" id="new-side">
							<!-- Category Widget -->
							<div class="sidebar-widget categories">
										<span>주최 :<span class="bs-name">${bongsa.bs_name}</span></span><br>
										<span>일시 :<span class="bs-work-start">${fn:substring(bongsa.re_bs_work_start,0,16)}</span> ~ <br>
										<span class="bs-work-end" style="margin-left: 50px;">${fn:substring(bongsa.re_bs_work_end,0,16)}
										</span></span><br>
										<span>장소 :<span class="bs-place">${bongsa.bs_place}</span></span><br>
										<span>문의번호 :<span class="bs-phone">${bongsa.bs_phone}</span></span><br>
										<span>이메일 :<span class="bs-email">${bongsa.bs_email}</span></span><br>
							</div>
								<!-- 참여하기, 찜, 공유 영역 -->
								<div class="new-font" id="bongsa-div">
								<c:choose>
									<c:when test="${bongsa.bs_recruit_end < sysdate}">					
										<span class="btn-title new-font new-btn-title">모집종료된 봉사입니다.</span>
									</c:when>
									<c:otherwise>
										<a href="bongsaParticipate.do?bs_no=${bongsa.bs_no}"
											class="theme-btn btn-style-one link-box">
										<span class="btn-title new-font new-btn-title">참여하기</span></a>
										<button class="bongsa-btn" id="bsJjim">♥</button>
										<input type="hidden" name="bs_no" value="${bongsa.bs_no}">
										<button class="bongsa-btn" id="bsGongu">
											<span class="flaticon-share"></span>
										</button>
									</c:otherwise>
								</c:choose>	
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
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js" integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
	<script src="resources/js/bongsa.js"></script>
</body>
</html>