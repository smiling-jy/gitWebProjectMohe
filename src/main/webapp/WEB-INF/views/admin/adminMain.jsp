<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="icon" href="images/favicon.ico" type="image/ico" /> -->

<title>Admin Mohe</title>
<!-- AOS CSS파일 -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="../resources/css_ad/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../resources/css_ad/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="../resources/css_ad/custom.min.css" rel="stylesheet">
<link href="../resources/css_ad/newStyle.css" rel="stylesheet">

<!--Loveus Stylesheets -->
<link href="../resources/css_ad/style.css" rel="stylesheet">
<link href="../resources/css_ad/style-2.css" rel="stylesheet">
<!-- Responsive File -->
<link href="../resources/css_ad/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="../resources/css_ad/color.css" rel="stylesheet">
<link href="../resources/css_ad/flaticon.css" rel="stylesheet">

<link rel="shortcut icon"
	href="../resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">
<link rel="icon" href="../resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">
</head>

<body class="nav-md">
	<div class="container body">
		<!-- side include -->
		<jsp:include page="adSideMenu.jsp" />

		<!-- top navigation -->
		<div class="top_nav">
			<div class="nav_menu" style="margin-bottom: 0px;">
				<nav class="nav navbar-nav">
					<ul class=" navbar-right">
						<li class="nav-item dropdown open" style="padding-left: 15px;">
							<a href="javascript:;" class="user-profile dropdown-toggle"
							aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
							aria-expanded="false"> LOGIN </a>
							<div class="dropdown-menu dropdown-usermenu pull-right"
								aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="javascript:;"> Profile</a> <a
									class="dropdown-item" href="javascript:;"> <span
									class="badge bg-red pull-right">50%</span> <span>Settings</span>
								</a> <a class="dropdown-item" href="javascript:;">Help</a> <a
									class="dropdown-item" href="login.do"><i
									class="fa fa-sign-out pull-right"></i> Log Out</a>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- /top navigation -->
		<!-- 컨텐츠 section -->
		<div class="col-md-push-9 right_col content_right" role="main">
			<div class="">
				<div class="page-title">
					<div class="text_size_title">DashBoard</div>
					<hr>
					<div class="content2">
						<!-- 버튼박스 시작 -->
						<div class="content2_inner_div wow fadeInDown">
							<h2>승인 대기 펀딩</h2>
							<hr>
							<br>
							<h1>103개</h1>
							<br>
							<div class="link-box">
								<a href="adFdApproval.do" class="theme-btn btn-style-one"> <span
									class="btn-title"><h2>펀딩관리 이동</h2></span>
								</a>
							</div>
						</div>
						<!-- 버튼박스 끝 / -->
						<!-- 버튼박스 시작 -->
						<div class="content2_inner_div wow fadeInUp">
							<h2>승인 대기 봉사</h2>
							<hr>
							<br>
							<h1>213개</h1>
							<br>
							<div class="link-box">
								<a href="adVtApproval.do" class="theme-btn btn-style-three">
									<span class="btn-title"><h2>봉사관리 이동</h2></span>
								</a>
							</div>
						</div>
						<!-- 버튼박스 끝 / -->
						<!-- 버튼박스 시작 -->
						<div class="content2_inner_div wow fadeInDown">
							<h2>New 기부목록</h2>
							<hr>
							<br>
							<h1>103개</h1>
							<br>
							<div class="link-box">
								<a href="adDonationList.do" class="theme-btn btn-style-ten">
									<span class="btn-title"><h2>기부목록 이동</h2></span>
								</a>
							</div>
						</div>
						<!-- 버튼박스 끝 / -->
					</div>

					<!-- status 항목 시작 -->
					<div class="content3 wow fadeInDown">
						<h1>Status</h1>
						<div
							class="service-block col-xl-3 col-lg-4 col-md-6 col-sm-12 block_back status_div">
							<div class="inner-box">
								<div class="icon-box">
									<span class="flaticon-hand"></span>
								</div>
								<h3>펀딩</h3>
								<span>10,000명</span>
							</div>
						</div>
						<!-- status 항목 끝 -->
						<!-- status 항목 시작 -->
						<div
							class="service-block col-xl-3 col-lg-4 col-md-6 col-sm-12 block_back status_div">
							<div class="inner-box">
								<div class="icon-box">
									<span class="flaticon-adoption"></span>
								</div>
								<h3>봉사</h3>
								<span>10,000명</span>
							</div>
						</div>
						<!-- status 항목 끝 -->
						<!-- status 항목 시작 -->
						<div
							class="service-block col-xl-3 col-lg-4 col-md-6 col-sm-12 block_back status_div">
							<div class="inner-box">
								<div class="icon-box">
									<span class="flaticon-money"></span>
								</div>
								<h3>기부</h3>
								<span>10,000원</span>
							</div>
						</div>
						<!-- status 항목 끝 -->
						<!-- status 항목 시작 -->
						<div
							class="service-block col-xl-3 col-lg-4 col-md-6 col-sm-12 status_div">
							<div class="inner-box">
								<div class="icon-box">
									<span class="flaticon-group"></span>
								</div>
								<h3>참여</h3>
								<span>10,000명</span>
							</div>
						</div>
					</div>
					<!-- status 항목 끝 -->
					<!-- 그래프 시작 -->
					<div class="content wow fadeInDown">
						<h1>날짜별 그래프</h1>
						<canvas id="chart"></canvas>
					</div>
					<!-- 그래프 끝 -->

				</div>
			</div>
		</div>
		<!-- /page content -->
	</div>

	<!-- jQuery -->
	<script src="../resources/js_ad/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../resources/js_ad/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script src="../resources/js_ad/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../resources/js_ad/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="../resources/js_ad/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="../resources/js_ad/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script src="../resources/js_ad/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="../resources/js_ad/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="../resources/js_ad/skycons.js"></script>
	<!-- Flot plugins -->
	<script src="../resources/js_ad/jquery.flot.orderBars.js"></script>
	<script src="../resources/js_ad/jquery.flot.spline.min.js"></script>
	<script src="../resources/js_ad/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="../resources/js_ad/date.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="../resources/js_ad/moment.min.js"></script>
	<script src="../resources/js_ad/daterangepicker.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="../resources/js_ad/custom.min.js"></script>
	<!-- LoveUs Scripts -->
	<script src="../resources/js/popper.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/jquery-ui.js"></script>
	<script src="../resources/js/jquery.fancybox.js"></script>
	<script src="../resources/js/owl.js"></script>
	<script src="../resources/js/appear.js"></script>
	<script src="../resources/js/wow.js"></script>
	<script src="../resources/js/lazyload.js"></script>
	<script src="../resources/js/scrollbar.js"></script>
	<script src="../resources/js/script.js"></script>
	<!-- AOS 코드 링크 -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
	<script>
		const ctx = document.getElementById("chart").getContext('2d');
		const myChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [ "rice", "yam", "tomato", "potato", "beans", "maize",
						"oil" ],
				datasets : [ {
					label : 'food Items',
					backgroundColor : 'rgba(161, 198, 247, 1)',
					borderColor : 'rgb(47, 128, 237)',
					data : [ 300, 400, 200, 500, 800, 900, 200 ],
				} ]
			},
			options : {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true,
						}
					} ]
				}
			},
		});
	</script>
</body>
</html>
