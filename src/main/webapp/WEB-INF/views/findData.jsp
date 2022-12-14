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
	
<link href="resources/css/cart.css" rel="stylesheet">

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
		<section class="gallery-page-section">
			<div class="auto-container">
				<!--MixitUp Galery-->
				
				<div class="">
					<ul class="nav nav-tabs" id="myTab" role="tablist">
					  <li class="nav-item">
					    <button class="nav-link active" id="home-tab" data-toggle="tab" data-target="#home" type="button" role="tab">이메일</button>
					  </li>
					  <li class="nav-item">
					    <button class="nav-link" id="profile-tab" data-toggle="tab" data-target="#profile" type="button" role="tab">비밀번호</button>
					  </li>
					</ul>
<!-- 					<div class="filters clearfix"> -->
<!-- 						<ul class="filter-tabs filter-btns clearfix"> -->
<!-- 							<li class="filter active" data-role="button" data-filter=".mix-1">이메일 -->
<!-- 								찾기</li> -->
<!-- 							<li class="filter" data-role="button" data-filter=".mix-2">비밀번호 -->
<!-- 								찾기</li> -->
<!-- 						</ul> -->
<!-- 					</div> -->

<!-- 					<div class="filter-list"> -->
					<div class="main tab-content">
						<div class="wrapper tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">
<!-- 						<main class="gallery-item-two mix mix-1 main"> -->
<!-- 							<section class="wrapper"> -->
								<div class="heading">
									<span class="text text-normal">모해는 이메일을 아이디로 사용합니다. 소유하고
										계신 계정을 입력해보세요. 가입여부를 확인해드립니다. </span>
								</div>
								<form name="signin" class="form">
									<div class="input-control">
										<label for="email" class="input-label" hidden>이메일</label> <input
											type="email" name="user_email" id="email" class="input-field"
											placeholder="이메일">
									</div>
									<div class="donate-link">
										<a href="javascript:void(0)"
											class="theme-btn btn-style-one btn-block"> <span
											class="btn-title text-center">이메일 찾기</span>
										</a>
									</div>
								</form>
<!-- 							</section> -->
<!-- 						</main> -->
						</div>
						
						<div class="wrapper tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
<!-- 						<main class="gallery-item-two mix mix-2 main"> -->
<!-- 							<section class="wrapper"> -->
							<div class="heading">
								<span class="text text-normal">모해에 가입하셨던 이메일 계정을 입력하시면,
									비밀번호를 새로 만들 수 있는 링크를 이메일로 발송해드립니다. </span><br>
							</div>
							<form name="signin" class="form">
								<div class="input-control">
									<label for="email" class="input-label" hidden>이메일</label> <input
										type="email" name="user_email" id="email" class="input-field"
										placeholder="이메일">
								</div>
								<div class="donate-link">
									<a href="javascript:void(0)"
										class="theme-btn btn-style-one btn-block"> <span
										class="btn-title text-center">비밀번호 찾기</span>
									</a>
								</div>
							</form>
						</div>
<!-- 							</section> -->
<!-- 						</main> -->
					</div>
<!-- 					</div> -->
				</div>
			</div>
		</section>


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
	
	<script>
		$("main.mix-1 div.donate-link a").on("click", function(){
			$.ajax({
				type : 'post',
				url : 'countAccountByEmail.do',
				data : $("form[name='signin']").first().serialize(),
				async : true,
				contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
				success : function(result) {
					if (result > 0) {
						alert("가입된 이메일 입니다.");
					} else {
						alert('가입되지 않은 이메일 입니다.');
					}
				},
				error : function() {
					alert('error');
				}
			});
		});
		
		$("main.mix-2 div.donate-link a").on("click", function(){
			$.ajax({
				type : 'post',
				url : 'resetPasswordAndSendEmail.do',
				data : $("form[name='signin']").last().serialize(),
				async : true,
				contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
				success : function(result) {
					if (result > 0) {
						alert("임시비밀 번호가 이메일로 발송 되었습니다.");
					} else {
						alert('임시비밀 번호 발급이 실패하였습니다.');
					}
				},
				error : function() {
					alert('error');
				}
			});
		});
	</script>

</body>
</html>