<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="icon" href="images/favicon.ico" type="image/ico" /> -->

<title>Admin Mohe</title>
<!-- AOS CSS파일 -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="../resources/css_ad/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../resources/css_ad/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="../resources/css_ad/custom.min.css" rel="stylesheet">
<link href="../resources/css_ad/newStyle.css" rel="stylesheet">

<!--Loveus Stylesheets -->
<link href="../resources/css_ad/style.css" rel="stylesheet">
<link href="../resources/css_ad/style-2.css" rel="stylesheet">
<!-- Responsive File -->
<link href="../resources/css_ad/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="../resources/css_ad/color.css" rel="stylesheet">
<link href="../resources/css_ad/flaticon.css" rel="stylesheet">

<link rel="shortcut icon"
	href="../resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">
<link rel="icon" href="../resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">
</head>
<body class="nav-md">
	<div class="container body">
		<!-- side include -->
		<jsp:include page="adSideMenu.jsp" />

		<!-- 컨텐츠 section -->
		<div class="col-md-push-9 right_col content_right" role="main">
			<div class="">
				<div class="page-title">
					<!-- 변경 div 시작 -->
					<div class="text_size_title">
						<a href="adFdList.do">펀딩 관리</a>
					</div>
					<hr>
					<div class="content_table_div" style="overflow:auto;">
						<div>
							<!-- 여기 폼시작 -->
							<form method="post" action="adFdUpdate.do" enctype="multipart/form-data">
							<!--Form Column-->
								<div class="form-column col-lg-6 col-md-12 col-sm-12"
									style="margin-left: 250px">
									<div class="inner">
										<div class="donate-form">
											<h3 style="margin-left:110px;">펀딩 수정하기</h3>
											<div style="height: 50px;"></div>
											<h2>NO. ${fd.fd_no}</h2>
											<hr style="width: 430px; color: white;">
											<div class="user_pf_div">
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">타이틀 사진</div>
													<img id="title_image" src="../resources/files/funding/${fd.fd_img_name}/title.png" />
													<input type="file" id="fd_title_image" name="title_img" class="add-file" value="타이틀 이미지 첨부하기" > 
											</div>
											</div>
											<div class="row clearfix">
												<div class="form-group col-lg-6 col-md-6 col-sm-6">
													<div class="field-label">프로젝트 카테고리</div>
													<select name="fd_category">
														<option value="디자인문구">디자인문구</option>
														<option value="식품">식품</option>
														<option value="패션잡화">패션잡화</option>
														<option value="홈리빙">홈 리빙</option>
														<option value="반려동물">반려동물</option>
													</select>
													<input type="hidden" id="fd_category" value="${fd.fd_category}">
													<input type="hidden" name="fd_no" value="${fd.fd_no}">
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">프로젝트제목</div>
													<input type="text" value='${fd.fd_title}'  name="fd_title" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">프로젝트 소개</div>
													<textarea name="fd_content"required>${fd.fd_content}</textarea>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">후원 대상</div>
													<input type="text" name="fd_receiver" value="${fd.fd_receiver}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">상품 금액</div>
													<input type="text" name="fd_price" value="${fd.fd_price}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">목표 금액</div>
													<input type="text" name="fd_goals" value="${fd.fd_goals}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">프로젝트 시작일</div>
													<input type="date" name="fd_startdate"  value="${fd.fd_startdate}"required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">프로젝트 종료일</div>
													<input type="date" name="fd_enddate"  value="${fd.fd_enddate}"required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">창작자(상호)</div>
													<input type="text" name="fd_hostname"  value="${fd.fd_hostname}"required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">창작자 연락처</div>
													<input type="text" name="fd_host_phone" value="${fd.fd_host_phone}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">창작자 이메일</div>
													<input type="email" name="fd_host_email" value="${fd.fd_host_email}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">내용 이미지</div>
													<input type="file" name="file" multiple="multiple" id="multi-file" class="add-file" value="내용 이미지 첨부하기" >
													<img id="main_image" src="">
													<c:forEach var="cnt" begin="1" end="${fd.fd_img_cnt}">
														<img class="forIMG" src="../resources/files/funding/${fd.fd_img_name}/${cnt}.png">
													</c:forEach>
												</div>
												<div>
													<button type="submit" class="theme-btn btn-style-one"
														id="update_btn">
														<span class="btn-title btn_fix">수정 완료하기</span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
						<!-- form2 끝-->

					</div>
					<!-- 변경 div 끝 / -->
				</div>
			</div>
		</div>
		<!-- /page content -->
	</div>
	<!-- jQuery -->
	<script src="../resources/js_ad/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../resources/js_ad/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script src="../resources/js_ad/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../resources/js_ad/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="../resources/js_ad/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="../resources/js_ad/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script src="../resources/js_ad/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="../resources/js_ad/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="../resources/js_ad/skycons.js"></script>
	<!-- Flot plugins -->
	<script src="../resources/js_ad/jquery.flot.orderBars.js"></script>
	<script src="../resources/js_ad/jquery.flot.spline.min.js"></script>
	<script src="../resources/js_ad/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="../resources/js_ad/date.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="../resources/js_ad/moment.min.js"></script>
	<script src="../resources/js_ad/daterangepicker.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="../resources/js_ad/custom.min.js"></script>
	<!-- LoveUs Scripts -->
	<script src="../resources/js/popper.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/jquery-ui.js"></script>
	<script src="../resources/js/jquery.fancybox.js"></script>
	<script src="../resources/js/owl.js"></script>
	<script src="../resources/js/appear.js"></script>
	<script src="../resources/js/wow.js"></script>
	<script src="../resources/js/lazyload.js"></script>
	<script src="../resources/js/scrollbar.js"></script>
	<script src="../resources/js/script.js"></script>
	<script>
		var dept = $('#fd_category').val();
		$("select[name=fd_category]").val(dept).prop("selected", true)
		

		// 펀딩 타이틀 사진 미리보기
		$('#fd_title_image').change(function(){
	        // 파일리더 생성 
	        var preview = new FileReader();
	        preview.onload = function (e) {
	        	// img id 값 
	        	document.getElementById("title_image").src = e.target.result;
		    };
		    // input id 값 
		    preview.readAsDataURL(document.getElementById("fd_title_image").files[0]);
		});
		
		// 회원 프로필 프리뷰 기능
		$('#multi-file').change(function(){
	        // 파일리더 생성 
	        var preview = new FileReader();
	        preview.onload = function (e) {
	        	// img id 값 
	        	document.getElementById("main_image").src = e.target.result;
	        	$('.forIMG').css("display","none");
		    };
		    // input id 값 
		    preview.readAsDataURL(document.getElementById("multi-file").files[0]);
		});
	</script>
</body>
</html>
