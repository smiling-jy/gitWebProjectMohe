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

	<!-- 모달 -->
	<div class="background show new-font">
		<div class="window">
			<div class="popup">
				<span id="close">x</span>
				<div id="modal-con">
					<h3>주의사항</h3>
					<br/>
					<br/>
					모해는 소외된 이웃을 돕기 위해 크라우드 펀딩을 진행합니다.<br/>
					모금된 금액의 50%를 정해주신 봉사단체 혹은 후원재단에 기부하는 것에<br/>
					동의하시는 분만 진행해 주세요.
					<br/><br/>
					기부에 동의합니다. <input type="checkbox" id="checkbox1">
					<br/><br/>
					제출된 프로젝트는 검수 이후 입력해주신 시작일에 게시됩니다.<br/>
					프로젝트가 성공한다면 종료일 다음 영업일부터 4영업일 동안 결제가 이루어집니다.<br/>
					진행된 프로젝트는 마이페이지에서 확인하실 수 있으며 성공한 프로젝트는 후원자 목록을 확인하실 수 있습니다.<br/>
					확인 후 후원자에게 약속한 제품이나 서비스를 준비해 보내면 됩니다.<br/><br/>
					확인했습니다. <input type="checkbox" id="checkbox2">
					
				</div>
			</div>
		</div>
	</div>

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

		<!--Donate Section-->
		<section class="donate-section ">
			<!--Form Column-->
			<div class="form-column col-lg-6 col-md-12 col-sm-12 new-font open-pj-form">
				<div class="donate-form">
					<div class="center">
						<h1>프로젝트 주최하기</h1>
					</div>
					<form method="post" action="savefunding.do" enctype="multipart/form-data">
 				 		<span>프로젝트 카테고리</span><br />
						<select name="fd_category">
							<option value="디자인문구">디자인문구</option>
							<option value="식품">식품</option>
							<option value="패션잡화">패션잡화</option>
							<option value="홈리빙">홈 리빙</option>
							<option value="반려동물">반려동물</option>
						</select>
						
						<span>프로젝트 제목</span><br />
						<input type="text" name="fd_title" required>

						<span>프로젝트 소개</span><br />
						<textarea name="fd_content"></textarea>

						<span>후원 대상</span><br />
						<input type="text" name="fd_receiver" required>

						<span>상품 금액</span><br />
						<input type="text" name="fd_price" required>

						<span>목표 금액</span><br />
						<input type="text" name="fd_goals" required>

						<span>프로젝트 시작일</span><br />
						<input type="date" name="fd_startdate" required><br />

						<span>프로젝트 종료일</span><br />
						<input type="date" name="fd_enddate" required><br />

						<span>창작자(상호)</span><br />
						<input type="text" name="fd_hostname" required>

						<span>창작자 연락처</span><br />
						<input type="text" name="fd_host_phone" required>

						<span>창작자 이메일</span><br />
						<input type="email" name="fd_host_email" required>
 
						<span>타이틀 이미지</span><br />
						<input type="file" name="title_img" class="add-file" value="타이틀 이미지 첨부하기"><br />

						<span>내용 이미지</span><br />						
						<input type="file" name="file" multiple="multiple" class="add-file" value="내용 이미지 첨부하기"><br />
						
						<!-- <span>첨부파일 목록</span>

						<div></div>-->
						<br />
						<br />
						<br />
						<br /> 
						<div class="form-group">
							<button type="submit" class="theme-btn btn-style-one">
								<span class="btn-title new-btn-title">주최하기</span>
							</button>
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
	<script src="resources/js/funding.js"></script>

</body>
</html>