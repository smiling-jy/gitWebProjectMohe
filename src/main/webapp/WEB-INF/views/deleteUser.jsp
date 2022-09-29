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
					<h1 class="text-large">회원 탈퇴</h1>
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
					<div class="input-control" style="justify-content: end">
						<div class="donate-link">
							<a href="donate.html" class="theme-btn btn-style-one"> <span
								class="btn-title text-center">회원 탈퇴</span>
							</a>
						</div>
					</div>
				</form>
			
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