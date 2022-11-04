<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>

<body>
	<div class="page-wrapper" style="overflow:visible;">
		<!-- Preloader -->
		<div class="preloader">
			<div class="icon"></div>
		</div>

		<!-- Main Header -->
		<header class="main-header">
			<!-- Header Upper -->
			<div class="header-upper">
				<div class="auto-container">
					<div class="inner-container clearfix" style="width: 1160px;">
						<!--Logo-->
						<div class="logo-box">
							<div class="logo">
								<a href="main.do" title="모해공지상세"><img style="top: 20px;"
									src="resources/images/mohe_logo/main_logo.png"></a>
							</div>
						</div>


						<!--Nav Box-->
						<div class="nav-outer clearfix">
							<!--Mobile Navigation Toggler-->
							<div class="mobile-nav-toggler">
								<span class="icon flaticon-menu-1"></span>
							</div>

							<!-- Main Menu -->
							<nav class="main-menu navbar-expand-md navbar-light">
								<div class="collapse navbar-collapse show clearfix"
									id="navbarSupportedContent">
									<ul class="navigation clearfix" style="margin-right: 60px" >
										<li><a href="info1.do"><h4>소개</h4></a></li>
										<li><a href="funding.do"><h4>펀딩</h4></a></li>
										<li><a href="bongsaMain.do"><h4>봉사</h4></a></li>
										<li class="dropdown dropdown_show"><a href="#"><h4>더보기</h4></a>
											<ul style="top: 72px;">
												<li><a href="event.do">이벤트</a></li>
												<li><a href="review.do">후기 모아보기</a></li>
												<li><a href="notice.do">공지사항</a></li>
												<li><a href="faq.do">문의하기 (Q&A)</a></li>
												<li><a href="partner.do">파트너</a></li>
											</ul>
										</li>
									</ul>
								</div>
							</nav>
							<!-- Main Menu End-->

							<div class="link-box clearfix">
								<div class="donate-link">
									<%if(request.getSession().getAttribute("user") == null) {%>
										<a href="loginCheck.do" class="theme-btn btn-style-two">
											<span class="btn-title">Login</span>
										</a>
										<%} else { %>
										<a href="shoppingBasket.do" class="theme-btn btn-style-five" style="display: inline-block; width: 100px;height: 55px;">
											<span class="btn-title" id="myPg_btn_text" style="padding: 13px 15px;">MyPage</span>
										</a>
										<a href="#"class="theme-btn btn-style-three" style="display: inline-block; width:55px" onclick="btnLogOut()">
											<span class="btn-title material-symbols-outlined" style="padding: 15px 20px;">Logout</span>
										</a>
									<%} %>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--End Header Upper-->

			<!-- Sticky Header  -->
			<div class="sticky-header">
				<div class="auto-container clearfix">
					<!--Logo-->
					<div class="logo pull-left">
						<a href="main.do" title=""><img
							src="resources/images/mohe_logo/logo_garo_color_small.png" alt=""
							title=""></a>
					</div>
					<!--Right Col-->
					<div class="pull-right">
						<!-- Main Menu -->
						<nav class="main-menu clearfix">
							<!--Keep This Empty / Menu will come through Javascript-->
						</nav>
						<!-- Main Menu End-->
					</div>
				</div>
			</div>
			<!-- End Sticky Menu -->

			<!-- Mobile Menu  -->
			<div class="mobile-menu">
				<div class="menu-backdrop"></div>
				<div class="close-btn">
					<span class="icon flaticon-cancel"></span>
				</div>

				<nav class="menu-box">
					<div class="nav-logo">
						<a href="main.do"><img
							src="resources/images/mohe_logo/main_logo.png" alt="" title=""></a>
					</div>
					<div class="menu-outer">
						<!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
					</div>
					<!--Social Links-->
					<div class="social-links">
						<ul class="clearfix">
							<li><a href="#"><span class="fab fa-twitter"></span></a></li>
							<li><a href="#"><span class="fab fa-facebook-square"></span></a></li>
							<li><a href="#"><span class="fab fa-pinterest-p"></span></a></li>
							<li><a href="#"><span class="fab fa-instagram"></span></a></li>
							<li><a href="#"><span class="fab fa-youtube"></span></a></li>
						</ul>
					</div>
				</nav>
			</div>
			<!-- End Mobile Menu -->
		</header>
		<!-- End Main Header -->
	</div>
	<!--End pagewrapper-->
	<script type="text/javascript">
		function btnLogOut() {
			if (confirm("로그아웃 하시겠습니까?")) {
				location.href = "/mohe/logOut.do";
			}
		}
	</script>
</body>
</html>