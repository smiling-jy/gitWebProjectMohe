<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 봉사페이지</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/bongsaMain.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">

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
<!--[if lt IE 9]><script src="resources/resources/js/respond.js"></script><![endif]-->
<link href="resources/css/header2.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">
</head>

<body>
	<!--확인-->
	<div class="page-wrapper newFont">

		<!-- header include -->
		<jsp:include page="headerRed.jsp" />
		<!-- Page Banner Section -->
		<!-- <section class="page-banner">
    </section> -->
		<!--End Banner Section -->
		<!--Causes Section-->
		<section class="causes-section">
			<!-- 지역별 선택 -->
			<div class="auto-container" id="bs-regeion-container">
				<!-- <h1>Our Causes</h1> -->
				<!-- <div> -->
				<ul class="bs-regeion">
					<li><a href="bongsaMain.do">전국</a></li>
					<li><a href="bongsaMain.do?bs_region=서울">서울</a></li>
					<li><a href="bongsaMain.do?bs_region=경기인천">경기•인천</a></li>
					<li><a href="bongsaMain.do?bs_region=강원">강원</a></li>
					<li><a href="bongsaMain.do?bs_region=대구경북">대구•경북</a></li>
					<li><a href="bongsaMain.do?bs_region=광주전라">광주•전라</a></li>
					<li><a href="bongsaMain.do?bs_region=울산부산경남">울산•부산•경남</a></li>
					<li><a href="bongsaMain.do?bs_region=대전세종충남">대전•세종•충남</a></li>
					<li><a href="bongsaMain.do?bs_region=제주도">제주</a></li>
					<li><a href="bongsaMain.do?bs_region=비대면">비대면</a></li>
				</ul>
				
			</div> <!-- 지역 카테고리 끝 -->

			<div class="auto-container">
				
			<!-- 검색창 , 모집하기-->
			<!-- 검색창 위치 css로 이동 필요-->
			<div class=" new-font bongsa-search-box">
				<a href="bongsaRecruite.do" class="theme-btn btn-style-one link-box">
				<span class="btn-title new-btn-title">모집하기</span></a>
				
	
					<form action="bongsaMain.do" method="post" class="bs-search-main">
			               <select name="searchCondition">
			                  <option value='bs_title'>봉사명</option>
			                  <option value='bs_content'>내용</option>
			                  <option value='bs_name'>주최 </option>                                    
			               </select> 
			               <input name="searchKeyword" type="text" placeholder="Search..."/> 
			               <button type="submit">
								<span class="icon flaticon-search-1"></span>
							</button>
					</form>
			</div>

				<div class="row clearfix">	
					<!--Cause Block-->
					<!-- 반복문 봉사 블럭  -->
					<c:forEach items="${bs_list}" var="bongsa">
						<div class="cause-block col-lg-4 col-md-6 col-sm-12">
							<div class="inner-box wow fadeInUp" data-wow-delay="0ms">
								<div class="image-box">
									<figure class="image">
										<a href="bongsaDetail.do?bs_no=${bongsa.bs_no}">
										<img class="lazy-image img_size" src="resources/files/bongsa/${bongsa.bs_img_name}/title.png"
											data-src="resources/files/bongsa/${bongsa.bs_img_name}/title.png"
											alt="타이틀이미지"></a>
									</figure>
								</div>
								<div class="donate-info">
									<div class="progress-box">
										<div class="bar">
											<c:choose>
												<c:when test="${bongsa.bs_rate > 100}">
													<div class="bar-inner count-bar" data-percent="100%">
														<div class="count-text">${bongsa.bs_rate}%</div>
													</div>
												</c:when>
												<c:otherwise>
													<div class="bar-inner count-bar" data-percent="${bongsa.bs_rate}%">													
														<div class="count-text">${bongsa.bs_rate}%</div>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
									<div class="donation-count clearfix">
										<span class="raised"><strong>모집인원 : </strong><span
											class="bs-goal-cnt">${bongsa.bs_goal_cnt}</span>명</span><span class="goal"><strong>현재
												신청인원 : </strong><span class="bs-success-cnt">${bongsa.bs_success_cnt}</span>명</span>
									</div>
								</div>
								<div class="lower-content">
									<h3>
										<a href="bongsaDetail.do?bs_no=${bongsa.bs_no}" class="bs-title newFont">${bongsa.bs_title}</a>
									</h3>
									<div class="donation-count clearfix">
										<span class="raised"><strong>주최 :</span><span
											class="bs-name">${bongsa.bs_name}</span></strong>
									</div>
									<div class="bs-content-box">
										<span class="bs-content">${bongsa.bs_content}</span>
									</div>
									<br>
								</div>
							</div>
						</div> 
					</c:forEach>
					<!-- 봉사 썸네일 반복문 -->
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
	<script src="resources/js/bongsa.js"></script>
</body>
</html>