<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>MOHE 마이모해</title>
<!-- Stylesheets -->
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
<link href="resources/css/login.css" rel="stylesheet">
<link href="resources/css/header3.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">
</head>

<!--  미지씨 바디태그가 없어서 넣었는데, include하면 에러나...-->
<body>

	<div class="page-wrapper">
	<jsp:include page="header.jsp" />
		<main class="main">
			<div class="container">
				<section class="wrapper">
					<div class="heading">

						<h1 class="text text-large ">후기작성</h1>

					</div>
					<form name="signin" class="form">
						<div class="input-control">
							<input type="text" name="text" id="text" class="input-field"
							 	placeholder="제목을 입력해주세요">
						</div>
						<div class="input-control">
							<textarea type="text" name="text" id="text" class="input-field"
								placeholder="본문을 입력해주세요" rows="5"></textarea>
						</div>
						<div class="input-control">
							<div class="donate-link">
								<a href="donate.html" class="theme-btn btn-style-one"> <span
									class="btn-title text-center">작성하기</span>
								</a>
							</div>
						</div>
					</form>
				</section>
			</div>

		</main>
		<jsp:include page="footer.jsp" />
	</div>

</body>
</html>