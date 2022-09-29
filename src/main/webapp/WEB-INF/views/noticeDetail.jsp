<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 공지사항 글 읽기</title>
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

		<!--Search Popup-->
		<div id="search-popup" class="search-popup">
			<div class="close-search theme-btn">
				<span class="flaticon-cancel"></span>
			</div>
			<div class="popup-inner">
				<div class="overlay-layer"></div>
				<div class="search-form">
					<form method="post" action="index.html">
						<div class="form-group">
							<fieldset>
								<input type="search" class="form-control" name="search-input"
									value="" placeholder="Search Here" required> <input
									type="submit" value="Search Now!" class="theme-btn">
							</fieldset>
						</div>
					</form>

					<br>
					<h3>Recent Search Keywords</h3>
					<ul class="recent-searches">
						<li><a href="#">Finance</a></li>
						<li><a href="#">Idea</a></li>
						<li><a href="#">Service</a></li>
						<li><a href="#">Growth</a></li>
						<li><a href="#">Plan</a></li>
					</ul>

				</div>

			</div>
		</div>


		<!-- Page Banner Section -->
		<section class="page-banner" id="new-banner">
			<div class="auto-container">
				<h1>공지 사항</h1>
				<ul class="bread-crumb clearfix">
					<li class="active"><h5>공지사항</h5>
						</a></li>
					<li><a href="faq.html"><h5>자주 묻는 질문</h5></a></li>
					<li><a href="event.html"><h5>이벤트</h5></a></li>
					<li><a href="partner.html"><h5>파트너</h5></a></li>
					<li><a href="review.html"><h5>후기 모음</h5></a></li>
				</ul>
			</div>

		</section>
		<!--End Banner Section -->


		<!--Sidebar Page Container-->
		<div class="sidebar-page-container">
			<div class="auto-container">
				<div class="row clearfix">

					<!--Content Side / Blog Sidebar-->
					<div class="content-side col-lg-13 col-md-12 col-sm-12"
						style="text-align: center;">
						<!--Blog Posts-->
						<div class="blog-post-detail">
							<div class="inner">
								<div class="post-meta">
									<ul class="clearfix">
										<li><a href="#"><span class="icon fa fa-user"></span>
												MOHE 관리자</a></li>
										<li><a href="#"><span class="icon fa fa-comments"></span>
												2022.03.21</a></li>
									</ul>
								</div>
								<h2>[ 공지 ] 2022 년도 지역별 봉사 매니저를 모집합니다.</h2>
								<hr style="border: solid 1px lightgrey">
								<br>
								<div class="content">
									<p class="big-text">Cupidatat non proident sunt culpa qui
										officia deserunt mollit anim idest laborum sed ux perspiciatis
										unde omnis iste natuserror sit voluptatem accusantium. dolore
										laudantium totam rem aperiam eaque.</p>
									<br>

									<p>Lorem ipsum dolor sit amet, consectetur pisicelit sed do
										eiusmod tempor incidie labore magna aliqua enim ad minim
										veniam quis nostrud exercitation ullamco laboris nisi aliquip
										ex ea commodo consequat. Repreh enderit in voluptate velit
										esse cillum dolore eu fugiat nulla pariatur.</p>
									<p>Excepteur sint occaecat cupidatat non proident, sunt in
										culpa qui officia deserunt mollit anim est laborum. Sed ut
										perspiciatis unde omnis iste natus error sit voluptatem
										accusantium doloremque laudantium, totam rem aperiam eaque
										ipsa quae ab illo inventore.</p>
									<br>
									<h3>Startups Are Still</h3>
									<p>Mollit anim id est laborum perspiciatis unde omnis iste
										natus error sit voluptatem accusantium doloremque laudantium,
										totam rem aperiam, eaque ipsa quae ab illo inventore veritatis
										et quasi architecto beatae vitae dicta sunt explicabo enim
										ipsam volupe.</p>
									<p>Aspernatur aut odit aut fugit, sed quia consequuntur
										magni dolores eos qui ratione voluptatem sequi sed nesciunt.
										neque porro quisquam est qui dolorem ipsum quia dolor sit amet
										consectetur adipisci velit quia non numquam eius modi tempora
										incidunt ut labore.</p>
								</div>
							</div>

							<div class="post-share-options clearfix">
								<div class="social-links pull-right">
									<p>Share:</p>
									<ul class="social-icons">
										<li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
										<li><a href="#"><span class="fab fa-twitter"></span></a></li>
										<li><a href="#"><span class="fab fa-vimeo-v"></span></a></li>
										<li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
									</ul>
								</div>
							</div>
							<hr style="border: solid 1px lightgrey">
							<br>
							<br>
							<div>
								<h5>[ 이전글 ]</h5>
								<h5 class="prev-next-post">
									<a style="color: black;" href="#">처음 여는 펀딩이라면? 여기를 주목하세요! </a>
								</h5>
								<span>2022. 08. 30</span>

							</div>
							<br>
							<hr
								style="border: solid 1px lightgrey; width: 50%; margin: auto;">
							<br>
							<div>
								<h5>[ 다음글 ]</h5>
								<h5 class="prev-next-post">
									<a style="color: black;" href="#">모해-공공기관 협력 후원 행사 설명회 참석
										신청 안내</a>
								</h5>
								<span>2022. 08. 06</span>
							</div>
							<br>
							<br>
							<div class="donate-link">
								<a href="notice.html" class="theme-btn btn-style-one"><span
									class="btn-title">목록으로</span></a>
							</div>

						</div>
					</div>
				</div>
			</div>

		</div>



		<!-- End Sidebar Page Container -->

		<!-- Call To Action Section -->

		<!--End Gallery Section -->

		<!-- Main Footer -->
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

</body>
</html>