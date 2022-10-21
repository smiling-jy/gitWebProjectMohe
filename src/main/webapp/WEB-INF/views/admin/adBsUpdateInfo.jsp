<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
						<a href="adFdApproval.do">봉사 관리</a>
					</div>
					<hr>
					<div class="content_table_div" style="overflow:auto;">
						<div>
						 <form method="post" action="adBsUpdate.do" enctype="multipart/form-data">
							<!-- 여기 폼시작 -->
							<!--Form Column-->
								<div class="form-column col-lg-6 col-md-12 col-sm-12"
									style="margin-left: 250px">
									<div class="inner">
										<div class="donate-form">
											<h3 style="margin-left:110px;">봉사 수정하기</h3>
											<div style="height: 50px;"></div>
											<h2>NO. ${bs.bs_no}</h2>
											<hr style="width: 430px; color: white;">
											<div class="user_pf_div">
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">타이틀 사진</div>
													<img id="title_image" src="../resources/files/bongsa/${bs.bs_img_name}/title.png" /> 
													<input type="file" id="bs_title_image" name="title_img" class="add-file" value="타이틀 이미지 첨부하기">
													<input type="hidden" name="bs_no" value="${bs.bs_no}">
											</div>
											</div>
											<div class="row clearfix">
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">봉사활동명</div>
													<input type="text" name="bs_title" value='${bs.bs_title}' required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">봉사 활동 소개</div>
													<textarea name="bs_content"required>${bs.bs_content}</textarea>
												</div>
												<div class="form-group col-lg-6 col-md-6 col-sm-6">
													<div class="field-label">봉사 지역</div>
													<select name="bs_region"required>
								                         <option>전국</option>
								                         <option>서울</option>
								                         <option>경기인천</option>
								                         <option>강원</option>
								                         <option>대구경북</option>
								                         <option>광주전라</option>
								                         <option>울산부산경남</option>
								                         <option>대전세종충남</option>
								                         <option>제주</option>
								                         <option>비대면</option>
								                     </select>
													<input type="hidden" id="bs_region" value="${bs.bs_region}">
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">장소</div>
													<input type="text" name="bs_place" value="${bs.bs_place}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">모집인원</div>
													<input type="text" name="bs_goal_cnt" value="${bs.bs_goal_cnt}" required>
												</div>
												<div class="form-group col-lg-6 col-md-6 col-sm-6">
													<div class="field-label">모집시작일</div>
													<input type="date" name="bs_recruit_start" value="${fn:substring(bs.bs_recruit_start,0,10)}" required>
												</div>
												<div class="form-group col-lg-6 col-md-6 col-sm-6">
													<div class="field-label">모집종료일</div>
													<input type="date" name="bs_recruit_end" value="${fn:substring(bs.bs_recruit_end,0,10)}" required>
												</div>
												<hr>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">봉사시작 일시</div>
													<input type="datetime-local" name="bs_work_start" value="${bs.bs_work_start}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">봉사종료 일시</div>
													<input type="datetime-local" name="bs_work_end" value="${bs.bs_work_end}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">모집자(단체)</div>
													<input type="text" name="bs_name" value="${bs.bs_name}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">모집자 연락처</div>
													<input type="text" name="bs_phone" value="${bs.bs_phone}"  required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">모집자 이메일</div>
													<input type="text" name="bs_email" value="${bs.bs_email}" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">내용 이미지</div>
													<input type="file" id="multi-file" name="file" multiple="multiple" class="add-file" value="내용 이미지 첨부하기">
													<img src="" id="main_image">
													<input type="hidden" name="bs_img_cnt" value="${bs.bs_img_cnt}">
													<c:forEach var="cnt" begin="1" end="${bs.bs_img_cnt}">
														<img class="forIMG" src="../resources/files/bongsa/${bs.bs_img_name}/${cnt}.png">
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
		var dept = $('#bs_region').val();
		$("select[name=bs_region]").val(dept).prop("selected", true);
		
		// 봉사 타이틀 사진 미리보기
		$('#bs_title_image').change(function(){
	        // 파일리더 생성 
	        var preview = new FileReader();
	        preview.onload = function (e) {
	        	// img id 값 
	        	document.getElementById("title_image").src = e.target.result;
		    };
		    // input id 값 
		    preview.readAsDataURL(document.getElementById("bs_title_image").files[0]);
		});
		
		// 봉사 메인 프리뷰 기능
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
