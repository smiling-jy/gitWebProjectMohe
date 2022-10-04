<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>MOHE 마이모해</title>
<!-- Stylesheets -->
<link href="resources/css/login.css" rel="stylesheet">
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/style2.css" rel="stylesheet">
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
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/maingPage.css" rel="stylesheet">
</head>

<body>

	<div class="page-wrapper">
		<!-- Preloader -->

		<!-- header include -->
		<jsp:include page="header.jsp" />

		<!-- Gallery Page Section -->
		<main class="main gallery-page-section" style="padding: 0">
		<div class="container">
			<section class="wrapper">
				<div class="heading">
					<h1 class="text text-large">로그인</h1>
					<p class="text text-normal">
						처음 오셨나요? <span><label class="" for="agree-terms"><a
								href="/signup" target="_blank">가입하기</a></label></span>
					</p>
				</div>
				<form name="signin" class="form">
					<div class="input-control">
						<label for="email" class="input-label" hidden>이메일</label> <input
							type="email" name="email" id="email" class="input-field"
							placeholder="이메일">
					</div>
					<div class="input-control">
						<label for="password" class="input-label" hidden>비밀번호</label> <input
							type="password" name="password" id="password" class="input-field"
							placeholder="비밀번호">
					</div>
					<div class="input-control">
						<label class="" for="agree-terms"><a href="/find/account"
							target="_blank">로그인 정보를 잊으셨나요?</a></label>
						<div class="donate-link">
							<a href="donate.html" class="theme-btn btn-style-one"> <span
								class="btn-title text-center">로그인</span>
							</a>
						</div>
					</div>
				</form>
				<div class="striped">
					<span class="striped-line"></span> <span class="striped-text">Or</span>
					<span class="striped-line"></span>
				</div>
				<div class="method">
					<div class="method-control">
						<a href="#" class="method-action"> <i
							class="fab fa-brands fa-google" style="color: red"></i> <span
							style="margin-left: 0.3rem;">구글로 로그인</span>
						</a>
					</div>
					<div class="method-control">
						<a href="#" class="method-action"> <i
							class="ion ion-logo-facebook"></i> <span>카카오로 로그인</span>
						</a>
					</div>
					<div class="method-control">
						<a href="#" class="method-action"> <i
							class="ion ion-logo-apple"></i> <span>네이버로 로그인</span>
						</a>
					</div>
				</div>
			</section>
		</div>
	</main>


		<!-- End Gallery Page Section -->
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
	<script src="resources/js/mixitup.js"></script>
	<script src="resources/js/owl.js"></script>
	<script src="resources/js/appear.js"></script>
	<script src="resources/js/wow.js"></script>
	<script src="resources/js/lazyload.js"></script>
	<script src="resources/js/scrollbar.js"></script>
	<script src="resources/js/script.js"></script>

</body>
</html>