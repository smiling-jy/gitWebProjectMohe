<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 자주 묻는 질문</title>
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

</head>

<body>

	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="header.jsp" />
		<!-- Page Banner Section -->
		<section class="page-banner" id="new-banner">

			<div class="auto-container">
				<h1>자주 묻는 질문</h1>
				<ul class="bread-crumb clearfix">
					<li><a href="notice.html"><h5>공지사항</h5></a></li>
					<li class="active"><h5>자주 묻는 질문</h5></li>
					<li><a href="event.html"><h5>이벤트</h5></a></li>
					<li><a href="partner.html"><h5>파트너</h5></a></li>
					<li><a href="review.html"><h5>후기 모음</h5></a></li>
				</ul>
			</div>

		</section>
		<!--End Banner Section -->

		<!--FAQs Section-->
		<section class="faq-section">
			<div class="auto-container">
				<div class="tabs-box">
					<div class="row clearfix">
						<!--Title Column-->
						<div class="title-column">

							<div class="inner">

								<ul class="tab-buttons">
									<li class="tab-btn active-btn" style="font-size: 20px"
										data-tab="#tab-1">펀딩</li>
									<li class="tab-btn" style="font-size: 20px" data-tab="#tab-2">봉사</li>
									<li class="tab-btn" style="font-size: 20px" data-tab="#tab-3">후원</li>
									<li class="tab-btn" style="font-size: 20px" data-tab="#tab-4">기타사항</li>
								</ul>
							</div>
						</div>

						<!--Content Column-->
						<div class="content-column col-lg-10 col-md-12 col-sm-12">
							<div id="new-search-box">
								<input type="search" name="search-field" value=""
									placeholder="검색" required>
							</div>
							<div class="inner">
								<div class="tabs-content">
									<!--Tab-->
									<div class="tab active-tab" id="tab-1">
										<ul class="accordion-box clearfix">
											<!--Block-->
											<li class="accordion block active-block">
												<div class="acc-btn active">Q. 추석 연휴기간 펀딩상품 배송은 어떻게
													되나요?</div>
												<div class="acc-content current">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 취소된 프로젝트의 펀딩금 반환은 어떻게 이루어 지나요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Minim veniam, quis nostrud
															exercitation ullamco laboris nisi ut aliquip ex ea
															commodo consequat. Duis aute irure dolor in in voluptate
															velit esse cillum dolore eu fugiat nulla pariatur.
															Excepteur sint occaecat cupidatat non proident, sunt in
															culpa qui officia deserunt.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 후원금은 펀딩금액의 몇 퍼센트 비율인가요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 펀딩 상품 교환은 어떻게 이루어지나요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Minim veniam, quis nostrud
															exercitation ullamco laboris nisi ut aliquip ex ea
															commodo consequat. Duis aute irure dolor in in voluptate
															velit esse cillum dolore eu fugiat nulla pariatur.
															Excepteur sint occaecat cupidatat non proident, sunt in
															culpa qui officia deserunt.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is the main cause in your
													list?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

										</ul>
									</div>

									<!--Tab-->
									<div class="tab" id="tab-2">
										<ul class="accordion-box clearfix">
											<!--Block-->
											<li class="accordion block active-block">
												<div class="acc-btn active">Q. What is the Cancelation
													Period?</div>
												<div class="acc-content current">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is minimum amount to
													donate?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Minim veniam, quis nostrud
															exercitation ullamco laboris nisi ut aliquip ex ea
															commodo consequat. Duis aute irure dolor in in voluptate
															velit esse cillum dolore eu fugiat nulla pariatur.
															Excepteur sint occaecat cupidatat non proident, sunt in
															culpa qui officia deserunt.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is the main cause in your
													list?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

										</ul>
									</div>

									<!--Tab-->
									<div class="tab" id="tab-3">
										<ul class="accordion-box clearfix">
											<!--Block-->
											<li class="accordion block active-block">
												<div class="acc-btn active">Q. What is the Cancelation
													Period?</div>
												<div class="acc-content current">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is minimum amount to
													donate?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Minim veniam, quis nostrud
															exercitation ullamco laboris nisi ut aliquip ex ea
															commodo consequat. Duis aute irure dolor in in voluptate
															velit esse cillum dolore eu fugiat nulla pariatur.
															Excepteur sint occaecat cupidatat non proident, sunt in
															culpa qui officia deserunt.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is minimum amount to
													donate?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Minim veniam, quis nostrud
															exercitation ullamco laboris nisi ut aliquip ex ea
															commodo consequat. Duis aute irure dolor in in voluptate
															velit esse cillum dolore eu fugiat nulla pariatur.
															Excepteur sint occaecat cupidatat non proident, sunt in
															culpa qui officia deserunt.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is the main cause in your
													list?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

										</ul>
									</div>

									<!--Tab-->
									<div class="tab" id="tab-4">
										<ul class="accordion-box clearfix">
											<!--Block-->
											<li class="accordion block active-block">
												<div class="acc-btn active">Q. What is the Cancelation
													Period?</div>
												<div class="acc-content current">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is minimum amount to
													donate?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Minim veniam, quis nostrud
															exercitation ullamco laboris nisi ut aliquip ex ea
															commodo consequat. Duis aute irure dolor in in voluptate
															velit esse cillum dolore eu fugiat nulla pariatur.
															Excepteur sint occaecat cupidatat non proident, sunt in
															culpa qui officia deserunt.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is the main cause in your
													list?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

										</ul>
									</div>

									<!--Tab-->
									<div class="tab" id="tab-5">
										<ul class="accordion-box clearfix">
											<!--Block-->
											<li class="accordion block active-block">
												<div class="acc-btn active">Q. What is the Cancelation
													Period?</div>
												<div class="acc-content current">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is minimum amount to
													donate?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Minim veniam, quis nostrud
															exercitation ullamco laboris nisi ut aliquip ex ea
															commodo consequat. Duis aute irure dolor in in voluptate
															velit esse cillum dolore eu fugiat nulla pariatur.
															Excepteur sint occaecat cupidatat non proident, sunt in
															culpa qui officia deserunt.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is the main cause in your
													list?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Lorem ipsum dolor amet consectetur
															adipisicing sed do eiusmod tempor incididunt ut labore
															magna aliqua enim minim veniam quis nostrud.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. What is minimum amount to
													donate?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">Minim veniam, quis nostrud
															exercitation ullamco laboris nisi ut aliquip ex ea
															commodo consequat. Duis aute irure dolor in in voluptate
															velit esse cillum dolore eu fugiat nulla pariatur.
															Excepteur sint occaecat cupidatat non proident, sunt in
															culpa qui officia deserunt.</div>
													</div>
												</div>
											</li>

										</ul>
									</div>

								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
			<br>
			<h5 style="text-align: center">◀ [1] [2] [3] [4] [5] ▶</h5>
			<br>
			<!--운영자에게 이메일 보내기-->
			<br>
			<div class="auto-container" id="admin-email">
				<div class="inner clearfix" id="admin-email-inner">
					<h4 style="text-align: center; color: white; display: inline;">무엇이든
						문의하세요</h4>
					<img src="resources/images/mohe_logo/main_logo.png">
					<h4 style="text-align: center; color: white; display: inline;">mohe@naver.com</h4>

				</div>
			</div>
			<!-- </section> -->
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

</body>
</html>