<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
</head>

<body>

	<div class="page-wrapper" style="overflow:visible;">

		<!-- Main Header -->
		<header class="main-header">
			<!-- Header Upper -->
			<div class="header-upper">
				<div class="auto-container">
					<div class="inner-container clearfix">
						<!--Logo-->
						<div class="logo-box">
							<div class="logo">
								<a href="main.do"><img style="top: 20px;"
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
									<ul class="navigation clearfix" style="margin-right: 60px">
										<li><a href="info1.do"><h4>소개</h4></a></li>
										<li><a href="funding.do"><h4>펀딩</h4></a></li>
										<li><a href="bongsaMain.do"><h4>봉사</h4></a></li>
										<li class="dropdown dropdown_show"><a href="#"><h4>더보기</h4></a>
											<ul>
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
									<a href="loginCheck.do" class="theme-btn btn-style-one"><span
										class="btn-title">Login</span></a>
										<%} else { %>
										<a href="#" class="theme-btn btn-style-one" onclick="btnLogOut()">
										<span class="btn-title">LogOut
										</span>
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
						<a href="mainPage.html" title=""><img
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
						<a href="mainPage.html"><img
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

		<!--Search Popup-->
		<div id="search-popup" class="search-popup">
			<div class="close-search theme-btn">
				<span class="flaticon-cancel"></span>
			</div>
			<div class="popup-inner">
				<div class="overlay-layer"></div>
				<div class="search-form">
					<form method="post" action="mainPage.html">
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
	</div>
	<!--End pagewrapper-->
</body>
</html>