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
					<form method="post" action="contact.html">
						<span>프로젝트 카테고리</span><br /> <select>
							<option>디자인문구</option>
							<option>식품</option>
							<option>패션잡화</option>
							<option>홈 리빙</option>
							<option>반려동물</option>
						</select> <span>프로젝트 제목</span><br /> <input type="text" name="#" required>

						<span>프로젝트 소개</span><br />
						<textarea></textarea>

						<span>후원 대상</span><br /> <input type="text" name="#" required>

						<span>상품 금액</span><br /> <input type="text" name="#" required>

						<span>목표 금액</span><br /> <input type="text" name="#" required>

						<span>프로젝트 시작일</span><br /> <input type="date" name="#" required><br />

						<span>프로젝트 종료일</span><br /> <input type="date" name="#" required><br />

						<span>창작자(상호)</span><br /> <input type="text" name="#" required>

						<span>창작자 연락처</span><br /> <input type="text" name="#" required>

						<span>창작자 이메일</span><br /> <input type="text" name="#" required>

						<span>프로젝트 소개 첨부파일</span>
						<button class="new-btn">첨부파일 등록하기</button>
						<br /> <span>첨부파일 목록</span>

						<div></div>
						<br />
						<br />
						<br />
						<br />
						<div class="form-group">
							<button type="submit" class="theme-btn btn-style-one ">
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