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
									href="signUp.do" target="_blank">가입하기</a></label></span>
						</p>
					</div>
					<form id="form_email_login" method="post" name="signin" class="form">
						<div class="input-control">
							<label for="user_email" class="input-label" hidden>이메일</label> <input
								type="text" name="user_email" id="user_email"
								class="input-field" placeholder="이메일">
						</div>
						<div class="input-control">
							<label for="user_password" class="input-label" hidden>비밀번호</label>
							<input type="password" name="user_password" id="user_password"
								class="input-field" placeholder="비밀번호">
						</div>
						<div class="input-control">
							<label class="" for="agree-terms"><a href="findData.do"
								target="_blank">로그인 정보를 잊으셨나요?</a></label>
							<div class="donate-link">

								<a id="submit_eamil_signUp" href="#"
									class="theme-btn btn-style-one btn-block"
									onclick="btnEamillogin()"> <span
									class="btn-title text-center">로그인</span>
								</a>
							</div>
						</div>
					</form>
	
					<div class="method">
						<!-- <div class="method-control">
							<a href="javascript:void(0)" class="method-action" id="gogleLogin"> <i
								class="fab fa-brands fa-google" style="color: red"></i> <span
								style="margin-left: 0.3rem;">구글로 로그인</span>
							</a>
						</div> -->
						<div class="method-control">
							<a href="javascript:void(0)" class="method-action" id="kakaoLogin"> <i
								class="ion ion-logo-facebook" ></i> <span>카카오로 로그인</span>
							</a>
						</div>
				<!-- 		<div class="method-control">
							<a href="#" class="method-action"> <i
								class="ion ion-logo-apple"></i> <span>네이버로 로그인</span>
							</a>
						</div> -->
						<div>
							<form action="apiLogin.do" id="api-form" method="post">
								<input type="hidden" name="user_intype" id="api_intype">
								<input type="hidden" name="user_email" id="api_emali">
								<input type="hidden" name="user_password" id="api_pass">
								<input type="hidden" name="user_name" id="api_name">
							</form>
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
	
	<!-- API 로그인 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
	<script src="resources/js/apiLogin.js"></script>

	<script type="text/javascript">
		function btnEamillogin() {
			if ($("#user_email").val() == "") {
				alert("이메일을 입력하세요.")
				$("#user_email").focus();
				return false;
			}

			if ($("#user_password").val() == "") {
				alert("패스워드를 입력하세요.")
				$("#user_password").focus();
				return false;
			}

			var data = {
				'user_email' : $("#user_email").val(),
				'user_password' : $("#user_password").val()
			}

			$
					.ajax({
						type : 'post',
						url : 'email/loginCheck.do',
						data : data,
						async : true,
						contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
						success : function(result) {
							if (result === 'true') {
								location.href = "/mohe/main.do";
							} else {
								alert('이메일 또는 패스워드가 틀립니다.');
							}
						},
						error : function() {
							alert('error');
						}
					})
		}
	</script>
	



</body>


</html>