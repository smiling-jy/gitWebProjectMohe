<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<!-- 한지스러움 삭제 -->
		<!-- <div class="bottom-rotten-curve"></div> -->
		<!-- </section> -->
		<!--End Banner Section -->

		<section class="cart-section">
			<div class="auto-container">
				<!--Cart Outer-->
				<div class="cart-outer">
					<div class="table-column">
						<div class="inner-column">
							<div class="table-outer">
								<div class="table-box">
									<table class="cart-table new-font">
										<thead class="cart-header">
											<tr>
												<th class="prod-column">상품이름</th>
												<th>&nbsp;</th>
												<th class="price">금액</th>
												<th>수량</th>
												<th>총금액</th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<td colspan="2" class="prod-column">
													<div class="column-box">
														<figure class="prod-thumb">
															<a href="#"><img class="lazy-image"
																src="resources/images/resource/image-spacer-for-validation.png"
																data-src="resources/images/resource/products/prod-thumb-1.jpg"
																alt=""></a>
														</figure>
														<h4 class="prod-title">Woven Crop Cami</h4>
													</div>
												</td>
												<td class="price">$50.00</td>
												<td class="qty"><input class="quantity-spinner"
													type="text" value="1" name="quantity"></td>
												<td class="sub-total">$50.00</td>
											</tr>
										</tbody>
									</table>
								</div>

								<div class="coupon-outer">
									<div class="content-box clearfix">
										<div class="apply-coupon clearfix donate-form pay-form">
											<span>받는 사람</span><br />
											<div>
												<span>연락처</span><br /> <input type="text" name="#" required>
											</div>
											<div>
												<span>이메일</span><br /> <input type="text" name="#" required>
											</div>

											<span>배송지</span><br />
											<div>
												<span>주소</span><br /> <input type="text" name="#" required>
											</div>
											<div>
												<span>상세주소</span><br /> <input type="text" name="#" required>
											</div>
										</div>
									</div>
									<div class="link-box">
										<button type="button" class="theme-btn btn-style-one cart-btn">
											<span class="btn-title new-btn-title">펀딩하기</span>
										</button>
									</div>
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
	<script src="resources/js/jquery.bootstrap-touchspin.js"></script>
	<script src="resources/js/jquery.fancybox.js"></script>
	<script src="resources/js/owl.js"></script>
	<script src="resources/js/appear.js"></script>
	<script src="resources/js/wow.js"></script>
	<script src="resources/js/lazyload.js"></script>
	<script src="resources/js/scrollbar.js"></script>
	<script src="resources/js/script.js"></script>

</body>
</html>