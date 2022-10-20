<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>MOHE 마이모해</title>
<!-- Stylesheets -->
<link href="resources/css/login.css" rel="stylesheet">
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
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
				<form name="signin" action="modifyInfoUpdate.do" method="post"
					enctype="multipart/form-data" class="form">
					<div class="input-control d-block">
						<label for="userName" class="input-label">프로필 사진</label> <input
							type="file" maxlength="60" size="40" name="user_img_file"
							value="" />
							
							<div class="profile-user-img margin-auto">
								<img class="margin-auto profile-user-img-img"
									src="resources/userImgUploadFile/${user.user_no}/${user.user_img}"
									onerror="this.onerror=null;this.src='resources/images/mohe_logo/img_no_profile.png'"
									alt="profile-user-img">
							</div>
					</div>
					<div class="input-control d-block">
						<label for="userName" class="input-label">이름</label> <input
							type="text" name="user_name" class="input-field" placeholder="이름"
							value="<c:out value="${user.user_name}" />" />
					</div>
					<div class="input-control d-block">
						<label for="userPhone" class="input-label">휴대폰번호</label> <input
							type="text" name="user_phone" id="userPhone" class="input-field"
							value="<c:out value="${user.user_phone}" />">
					</div>
					<div class="input-control d-block">
						<label for="userInfo" class="input-label">소개</label>
						<textarea name="user_info" id="userInfo" class="input-field"><c:out
								value="${user.user_info}" /></textarea>
					</div>
					<div class="donate-link">
						<button type="submit" class="theme-btn btn-style-one btn-block">
							<span class="btn-title text-center">수정하기</span>
						</button>
						<!--                   <a href="donate.html" class="theme-btn btn-style-one btn-block"> -->
						<!--                      <span class="btn-title text-center">변경하기</span> -->
						<!--                   </a> -->
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