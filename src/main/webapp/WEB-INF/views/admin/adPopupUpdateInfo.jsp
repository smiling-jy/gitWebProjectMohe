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
<link rel="shortcut icon"href="../resources/images/mohe_logo/favicon_mohe.png"type="image/x-icon">
<link rel="icon" href="../resources/images/mohe_logo/favicon_mohe.png"type="image/x-icon">
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
						<a href="adPopList.do">팝업 관리</a>
					</div>
					<hr>
					<div class="content_table_div" style="height: 1100px">
						<div>
							<h3>팝업 수정하기</h3>
							<hr style="width:950px">
							<form name="adPartnerUpdate" action="adPopupUpdate.do"method="post" enctype="multipart/form-data">
								<!--Form Column-->
								<div class="form-column col-lg-6 col-md-12 col-sm-12"
									style="margin-left: 250px">
									<div class="inner">
										<div class="donate-form">
											<div class="row clearfix">
												<div class="donate-form">
													<div style="height: 50px;"></div>
													<div class="user_pf_div">
														<div class="form-group col-lg-12 col-md-12 col-sm-12">
															<div class="field-label">팝업 이미지</div>
															<img id="user_image" src="../resources/files/popup/${pop.pop_no}/popupIMG.png" /> 
															<input type="file" name="title_img" id="user_profile_img" accept=".png">
															<input type="hidden" name="pop_no" value="${pop.pop_no}">
														</div>
													</div>
													<div class="row clearfix">
														<div class="form-group col-lg-12 col-md-12 col-sm-12">
															<div class="field-label">팝업 제목</div>
															<input type="text" name="pop_title"
																value="${pop.pop_title}"  required>
														</div>
														<div class="form-group col-lg-12 col-md-12 col-sm-12">
															<div class="field-label">연관 이벤트</div>
															<select name="pop_url_no" id="joinEvent_select">
																<c:forEach items="${eventList}" var="event">
																	<option value="${event.event_no}">NO.${event.event_no}_${event.event_title}</option>
																</c:forEach>
															</select>
															<input type="hidden" id="joinEvent" value="${pop.pop_url_no}">
														</div>
														<div class="form-group col-lg-6 col-md-6 col-sm-6">
															<div class="field-label">팝업 시작일</div>
															<input type="date" name="pop_start_date"
																value="${fn:substring(pop.pop_start_date,0,10)}"  required>
														</div>
														<div class="form-group col-lg-6 col-md-6 col-sm-6">
															<div class="field-label">팝업 종료일</div>
															<input type="date" name="pop_end_date"
																value="${fn:substring(pop.pop_end_date,0,10)}"  required>
														</div>
														<div class="form-group col-lg-12 col-md-12 col-sm-12">
															<div class="field-label">팝업 개시</div>
															<select name="pop_use" >
																<option value="true" selected>띄우기</option>
																<option value="false">띄우지 않기</option>
															</select>
															<input type="hidden" id="pop_use" value="${pop.pop_use}">
														</div>
														<div>
															<button type="submit" class="theme-btn btn-style-one"
																id="update_btn" style="width: 450px; margin-left:20px;">
																<span class="btn-title btn_fix">팝업 수정하기</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>
							<!-- form 끝-->
						</div>
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
	<script src="../resources/js_ad/adminScript.js"></script>
	<script>
		var rating = $('#rating').val();
		$("#user_rating").val(rating).prop("selected", true);
		
		var joinEvent = $('#joinEvent').val();
		$("#joinEvent_select").val(joinEvent).prop("selected", true);
		
		// 첨부파일 미리보기 
		$('#user_profile_img').change(function(){
	        // 파일리더 생성 
	        var preview = new FileReader();
	        preview.onload = function (e) {
	        // img id 값 
		      document.getElementById("user_image").src = e.target.result;
		    };
		    // input id 값 
		    preview.readAsDataURL(document.getElementById("user_profile_img").files[0]);
		});
		$(function(){
			// select박스 값 받아오기
			var use = $('#pop_use').val();
			$('select[name=pop_use]').val(use).prop("selected",true);
		});
	</script>
</body>
</html>
