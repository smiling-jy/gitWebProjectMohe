<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>MOHE 회원가입</title>
<!-- Stylesheets -->
<link href="resources/css/login.css" rel="stylesheet">
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/mohe.checkout.css" rel="stylesheet">
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

	<main class="main">
		<!-- header include -->
		<jsp:include page="header.jsp" />

		<div class="container">
			<section class="wrapper">
				<div class="heading">
					<h1 class="text text-large">회원가입</h1>
					<span class="text text-normal">모해에 가입해 기부와 펀딩을 이용해 보세요 </span>
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
						<label for="password_check" class="input-label" hidden>비밀번호
							확인</label> <input type="password_check" name="password_check"
							id="password_check" class="input-field" placeholder="비밀번호 확인">
					</div>
					<div class="input-control">
						<label for="name" class="input-label" hidden>이름</label> <input
							type="name" name="name" id="name" class="input-field"
							placeholder="이름">
					</div>
					<div class="input-control">
						<label for="phone" class="input-label" hidden>핸드폰 번호</label> <input
							type="phone" name="phone" id="phone" class="input-field"
							placeholder="핸드폰 번호">
					</div>
					<div class="my-4">
						<div class="custom-control custom-checkbox mb-3">
							<input type="checkbox" class="custom-control-input"
								id="agree-terms" name="agree-terms"> <label
								class="custom-control-label" for="agree-terms"><a
								href="/service/terms" target="_blank">이용약관</a> 동의 </label>
						</div>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="privacy-terms" name="privacy-terms"> <label
								class="custom-control-label" for="privacy-terms"><a
								href="/privacy/policy" target="_blank">개인정보 취급방침</a> 동의 </label>
						</div>
					</div>
					<div class="donate-link">
						<a href="donate.html" class="theme-btn btn-style-one btn-block">
							<span class="btn-title text-center">회원가입</span>
						</a>
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
							style="margin-left: 0.3rem;">구글로 회원가입</span>
						</a>
					</div>
					<div class="method-control">
						<a href="#" class="method-action"> <i
							class="ion ion-logo-facebook"></i> <span>카카오로 회원가입</span>
						</a>
					</div>
					<div class="method-control">
						<a href="#" class="method-action"> <i
							class="ion ion-logo-apple"></i> <span>네이버로 회원가입</span>
						</a>
					</div>
				</div>
			</section>
		</div>
	</main>
	<!-- footer include -->
	<jsp:include page="footer.jsp" />
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