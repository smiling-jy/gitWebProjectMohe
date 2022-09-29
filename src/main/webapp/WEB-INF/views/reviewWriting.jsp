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
<link href="resources/css/checkout.css" rel="stylesheet">
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

<!--  미지씨 바디태그가 없어서 넣었는데, include하면 에러나...-->
<body>
	<main class="main">

		<div class="container">
			<section class="wrapper">
				<div class="heading">
					<h1 class="text text-large">후기작성</h1>

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
</body>
</html>