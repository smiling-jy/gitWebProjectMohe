<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>LoveUs - Charity and Fundraising HTML Template | Make
	Donation</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">

<link rel="shortcut icon"
	href="resources/resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">
<link rel="icon"
	href="resources/resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
<link href="resources/css/mainPage.css" rel="stylesheet">
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
</head>

<body>

	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="header.jsp" />

		<!-- Page Banner Section -->
		<section class="donate_benner_section image wow fadeInUp">
			<!-- <div class="image-layer lazy-image" data-bg="url('resources/resources/images/background/bg-banner-1.jpg')"></div> -->

			<div class="auto-container benner_text">
				<img class="donation_img_fix"
					src="resources/images/mohe_logo/hand_donate.png">
				<h1>기부하기</h1>
				<ul class="bread-crumb clearfix">
					<li class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Make Donation</li>
				</ul>
			</div>

		</section>
		<!--End Banner Section -->

		<!--Donate Section-->
		<section class="donate-section">
			<div class="auto-container">
				<div class="tabs-box">
					<div>
						<!--Form Column-->
						<div class="form-column col-lg-6 col-md-12 col-sm-12"
							style="margin-left: 250px">
							<div class="inner">
								<div class="donate-form">
									<form method="post" action="contact.html">
										<h2>당신의 기부</h2>

										<div class="form-group">
											<div class="field-label">
												<hr>
											</div>
											<div class="select-amount clearfix">
												<div class="select-box">
													<input type="radio" name="payment-group" id="radio-one"><label
														for="radio-one">1만원</label>
												</div>
												<div class="select-box">
													<input type="radio" name="payment-group" id="radio-two"><label
														for="radio-two">3만원</label>
												</div>
												<div class="select-box">
													<input type="radio" name="payment-group" id="radio-three"
														checked><label for="radio-three">5만원</label>
												</div>
												<div class="select-box">
													<input type="radio" name="payment-group" id="radio-four"><label
														for="radio-four">10만원</label>
												</div>
											</div>
											<div class="input-box donate_price">
												<input type="text" name="other-payment" value=""
													placeholder="직접 입력하기">
											</div>
										</div>
										<br>
										<div class="method">
											<h3>기부 방식 선택</h3>
											<div class="form-group">
												<div class="clearfix">
													<div class="radio-block">
														<input type="radio" id="radio-1" name="method"><label
															for="radio-1"><img
															src="resources/images/payment/naver_pay_logo.PNG"></label>
													</div>
													<div class="radio-block">
														<input type="radio" id="radio-2" name="method"><label
															for="radio-2"><img
															src="resources/images/payment/kakao_pay_logo.PNG"></label>
													</div>
												</div>
											</div>
										</div>
										<br>
										<div class="personal-info donate_price">
											<h3>기부자 정보</h3>
											<br>
											<div class="row clearfix">
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">성함</div>
													<input type="text" name="field-name" value=""
														placeholder="Name" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">연락처</div>
													<input type="text" name="field-name" value=""
														placeholder="Phone Number" required>
												</div>
												<div
													class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
													<div class="field-label">Email</div>
													<input type="email" name="field-name" value=""
														placeholder="Email address" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12"
													style="text-align: right;">
													<div class="donation-total">
														Donation Total: <strong>$50.00</strong>
													</div>
												</div>
											</div>
										</div>
										<div class="form-group" style="text-align: center;">
											<button type="submit" class="theme-btn btn-style-one">
												<span class="btn-title btn_fix">기부 완료하기</span>
											</button>
										</div>
									</form>

								</div>

							</div>
						</div>

					</div>
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

</body>
</html>