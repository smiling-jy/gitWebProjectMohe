<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 봉사모집페이지</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/bongsaRecruite.css" rel="stylesheet">
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
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
<link href="resources/css/header2.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">
</head>

<body>

	<div class="page-wrapper newFont">
		<!-- header include -->
		<jsp:include page="headerRed.jsp" />
		<!-- Page Banner Section -->
		<section class="page-banner">
			<div class="image-layer lazy-image"
				data-bg="url('resources/images/background/bg-banner-1.jpg')"></div>
			<!-- 한지스러움 삭제 -->
			<!-- <div class="bottom-rotten-curve"></div> -->

			<div class="auto-container new-font">
				<h1>이미지</h1>
			</div>

		</section>
		<!--End Banner Section -->

		<!--Donate Section-->
		<section class="donate-section newfont">
			<!--Form Column-->
			<div
				class="form-column col-lg-6 col-md-12 col-sm-12 new-font open-pj-form ">
				<div class="donate-form">
					<div class="recuruit-header">
						<h1 class="newFont centersetting">봉사활동 모집하기</h1>
					</div>
					<form method="post" action="contact.html">
						<span>봉사활동명</span> <input type="text" name="#" required><br />
						<span>봉사 활동 소개</span>
						<textarea></textarea>
						<br /> <span>봉사 지역</span><br /> <select>
							<option>전국</option>
							<option>서울</option>
							<option>경기 인천</option>
							<option>강원</option>
							<option>대구 경북</option>
							<option>광주 전라</option>
							<option>울산 부산 경남</option>
							<option>대전 세종 충남</option>
							<option>제주</option>
							<option>비대면</option>
						</select> <br /> <span>장소</span> <input type="text" name="#" required><br />

						<span>모집인원</span> <input type="text" name="#" required><br />
						<hr>

						<span>모집종료일</span> <input type="date" name="#" required><br />
						<hr>

						<span>봉사시작 일시</span> <input type="datetime-local" name="#"
							required><br />
						<hr>
						<span>봉사종료 일시</span> <input type="datetime-local" name="#"
							required><br />
						<hr>
						<span>모집자(단체)</span><br /> <input type="text" name="#" required><br />

						<span>모집자 연락처</span> <input type="text" name="#" required><br />

						<span>모집자 이메일</span> <input type="text" name="#" required><br />

						<span>봉사 활동 소개 첨부파일 </span>
						<button class="new-btn">첨부파일 등록하기</button>
						<br />
						<br /> <span>첨부파일 목록</span>
						<p></p>
						<p>이미지1</p>
						<p>이미지2</p>
						<p>이미지3</p>

						<br />
						<br />
						<br />
						<br />
						<div class="form-group recruite-btn">
							<button type="submit" class="theme-btn btn-style-one">
								<span class="btn-title newFont">모집하기</span>
							</button>
						</div>
					</form>
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

</body>
</html>