<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 봉사참여페이지</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/bongsaParticipate.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 수정한 css-->
<link href="resources/css/funding.css" rel="stylesheet">

<link rel="shortcut icon"
	href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/resources/js/respond.js"></script><![endif]-->
<link href="resources/css/header2.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">
</head>

<body>

	<div class="page-wrapper newFont">

		<!-- header include -->
		<jsp:include page="headerRed.jsp" />
		
		
		
		<!--Donate Section-->
		<section class="donate-section">
			<div class="donate-form">
				<div class="participate-header"><h1 class="newFont centersetting">봉사활동 참여하기</h1></div>
				<!--Form Column-->
				<div class="participate-Main">
						<form method="post" action="insertVolunteer.do">
							<input type="hidden" name="bs_no" required value="${bongsa.bs_no}">							
							<input type="hidden" name="vt_bs_name" required value="${bongsa.vt_bs_name}">
							<input type="hidden" name="vt_place" required value="${bongsa.vt_place}">
							<input type="hidden" name="vt_recruit_start" required value="${bongsa.vt_recruit_start}">
							<input type="hidden" name="vt_recruit_end" required value="${bongsa.vt_recruit_end}">
							<input type="hidden" name="vt_work_start" required value="${bongsa.vt_work_start}">
							<input type="hidden" name="vt_work_end" required value="${bongsa.vt_work_end}">
							<input type="hidden" name="user_no" required value="${bongsa.user_no}">
<!-- 							<input type="hidden" name="volun_no" required value=1> -->
<!-- 							<input type="hidden" name="vt_ing" required value=1> -->
							
							<span>참여 봉사활동명</span><br /> 
							<input type="text" name="vt_title" required value="${bongsa.vt_title}" readonly/><br /> 
							<span>이름</span><br /> 
							<input type="text" name="vt_name" required value="${bongsa.vt_name}" readonly/><br /> 
							<span>연락처</span><br />
							<input type="text" name="vt_user_phone" required value="${bongsa.vt_user_phone}" readonly/><br/>
	
							<span>이메일</span><br /> 
							<input type="text" name="vt_user_email" required value="${bongsa.vt_user_email}" readonly/><br /> 
							<span>- 위의 내용과 개인정보가 다를 경우 회원정보를 수정하여 주시기 바랍니다.</span><br />
							<br />
							<br />
							<div class="form-group">
								<button type="submit" class="theme-btn btn-style-one" id="paricipate">
									<span class="btn-title newFont">참여하기</span>
								</button>
								<input type="hidden" name="bs_no" value="${bongsa.bs_no}">
							</div>
						</form>
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
	<script src="resources/js/bongsa.js"></script>
	

</body>
</html>