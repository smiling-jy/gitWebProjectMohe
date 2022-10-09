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
					<h1 class="text text-large">회원가입</h1>
					<span class="text text-normal">모해에 가입해 봉사와 펀딩 이용해 보세요 </span>
				</div>
				<form id="form_eamil_signUp" action="email/signUp.do" method="post" class="form">
					<div class="input-control">
							<label for="user_email" class="input-label" hidden>이메일</label> 
							<input
								type="user_email" name="user_email" id="user_email" class="input-field"
								onkeyup="onkeyupEmail()"
								placeholder="이메일">
							<div class="input-group-append">
								<button id="btn-email-check" class="btn btn-outline-secondary" type="button" onclick="btnEmailCheck()">중복확인</button>
							</div>
						</div>
					<div class="input-control">
						<label for="user_password" class="input-label" hidden>비밀번호</label> <input
							type="password" name="user_password" id="user_password" class="input-field"
							placeholder="비밀번호">
					</div>
					<div class="input-control">
						<label for="user_password_check" class="input-label" hidden>비밀번호
							확인</label> <input type="password" name="user_password_check"
							id="user_password_check" class="input-field" placeholder="비밀번호 확인">
					</div>
					<div class="input-control">
						<label for="user_name" class="input-label" hidden>이름</label> <input
							type="text" name="user_name" id="user_name" class="input-field"
							placeholder="이름">
					</div>
					<div class="input-control">
						<label for="user_phone" class="input-label" hidden>핸드폰 번호</label> <input
							type="tel" name="user_phone" id="user_phone" class="input-field"
							placeholder="핸드폰 번호">
					</div>
					<div class="my-4">
						<div class="custom-control custom-checkbox mb-3">
							<input type="checkbox" class="custom-control-input"
								id="agree_terms" name="agree_terms"> <label
								class="custom-control-label" for="agree_terms"><a
								href="/service/terms" target="_blank">이용약관</a> 동의 </label>
						</div>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="privacy_terms" name="privacy_terms"> <label
								class="custom-control-label" for="privacy_terms"><a
								href="/privacy/policy" target="_blank">개인정보 취급방침</a> 동의 </label>
						</div>
					</div>
					<div class="donate-link">
						<a id="submit_eamil_signUp" href="#" class="theme-btn btn-style-one btn-block"
						onclick="submit()">
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
						<a href="javascript:;" class="method-action"> <i
							class="ion ion-logo-apple"></i> <span>네이버로 회원가입</span>
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
	
	<script type="text/javascript">
		let emailCheck = false;
	
		function btnEmailCheck() {
			var user_email = $('#user_email');
			if (user_email.val() === "") {
				alert("이메일을 입력해 주세요.");
				user_email.focus();
				return;
			}
			var data = {'user_email' : user_email.val()}
			
			$.ajax({
				type: 'post',
				url : 'email/Check.do',
				data: data,
				async: true, // sumbit이 진행이 안되도록 하는 옵션(비동기 통신)
				contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 인코딩에 문제가 발생할까봐 추가하는 코드
				success: function(result){
					if (result === '사용 가능한 이메일입니다.') {
						emailCheck = true;
						document.getElementById("btn-email-check").innerText= "✓";
					} else {
						alert('중복된 이메일입니다.');
						document.getElementById("btn-email-check").innerText= "중복확인";
						emailCheck = false;
					}
				},
				error:function(){  
		            alert('error');
				}
			})
		}
		
		function onkeyupEmail() {
			document.getElementById("btn-email-check").innerText= "중복확인";
			emailCheck = false;
		}
	
		function submit() {
			var user_email = $('#user_email');
			
			if (!emailCheck) {
				alert("이메일 중복 확인을 해주세요.");
				user_email.focus();
				return;
			}
			
			if (user_email.val() === "") {
				alert("이메일을 입력해 주세요.");
				user_email.focus();
				return;
			}
			
			var user_password = $('#user_password');
			if (user_password.val() === "") {
				alert("비밀번호를 입력해 주세요.");
				user_password.focus();
				return;
			}
			if (user_password.val().length < 4) {
				alert("비밀번호를 4자리 이상 입력해 주세요.");
				user_password.focus();
				return;
			}
			
			var user_password_check = $('#user_password_check');
			if (user_password_check.val() === "") {
				alert("비밀번호 확인을 입력해 주세요.");
				user_password_check.focus();
				return;
			}
			if (user_password_check.val() !== user_password.val()) {
				alert("비밀번호와 비밀번호 확인이 다릅니다.");
				user_password_check.focus();
				return;
			}
			
			var user_name = $('#user_name');
			if (user_name.val() === "") {
				alert("이름을 입력해 주세요.");
				user_name.focus();
				return;
			}
			
			var user_phone = $('#user_phone');
			if (user_phone.val() === "") {
				alert("핸드폰 번호를 입력해 주세요.");
				user_phone.focus();
				return;
			}
			
			var agree_terms = $('#agree_terms');
			if (!agree_terms.prop('checked')) {
				alert("이용약관에 동의해 주세요.");
				agree_terms.focus();
				return;
			}
			
			var privacy_terms = $('#privacy_terms');
			if (!privacy_terms.prop('checked')) {
				alert("개인정보 취급방침에 동의해 주세요.");
				privacy_terms.focus();
				return;
			}
			
			document.getElementById('form_eamil_signUp').submit();
		}
		
		
	
	
	</script>


</body>
</html>