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
					<h4 class="text text-large">회원정보 변경</h4>
				</div>
				<form name="signin" class="form">
					<div class="input-control d-block">
						<label for="userName" class="input-label">프로필 사진</label>

						<div class="profile-user-img margin-auto">
							<img class="margin-auto profile-user-img-img"
								src="resources/images/mohe_logo/img_no_profile.png"
								alt="profile-user-img">
						</div>
					</div>
					<div class="input-control d-block">
						<label for="userName" class="input-label">이름</label> <input
							type="userName" name="userName" id="userName" class="input-field"
							placeholder="이름">
					</div>
					<div class="input-control d-block">
						<label for="userPhone" class="input-label">휴대폰번호</label> <input
							type="userPhone" name="userPhone" id="userPhone"
							class="input-field" placeholder="핸드폰 번호">
					</div>
					<div class="input-control d-block">
						<label for="userInfo" class="input-label">소개</label>
						<textarea type="userInfo" name="userInfo" id="userInfo"
							class="input-field" placeholder="소개"></textarea>
					</div>
					<div class="donate-link">
						<a href="donate.html" class="theme-btn btn-style-one btn-block">
							<span class="btn-title text-center">변경하기</span>
						</a>
					</div>
				</form>
			</section>
		</div>
	</main>

	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="flaticon-up-arrow"></span>
	</div>
	<!-- footer include -->
	<jsp:include page="footer.jsp" />

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