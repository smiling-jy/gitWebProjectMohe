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
<style>
.detail_form {
	border: 1px solid white;
	border-radius: 20px;
	background-color: rgb(148 165 183/ 40%);
}
</style>
</head>

<body class="nav-md">
	<div class="container body">
		<!-- side include -->
		<jsp:include page="adSideMenu.jsp" />

		<!-- top navigation -->
		<div class="top_nav">
			<div class="nav_menu" style="margin-bottom: 0px;">
				<nav class="nav navbar-nav">
					<ul class=" navbar-right">
						<li class="nav-item dropdown open" style="padding-left: 15px;">
							<a href="javascript:;" class="user-profile dropdown-toggle"
							aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
							aria-expanded="false"> LOGIN </a>
							<div class="dropdown-menu dropdown-usermenu pull-right"
								aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="javascript:;"> Profile</a> <a
									class="dropdown-item" href="javascript:;"> <span
									class="badge bg-red pull-right">50%</span> <span>Settings</span>
								</a> <a class="dropdown-item" href="javascript:;">Help</a> <a
									class="dropdown-item" href="login.do"><i
									class="fa fa-sign-out pull-right"></i> Log Out</a>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- /top navigation -->
		<!-- 컨텐츠 section -->
		<div class="col-md-push-9 right_col content_right" role="main">
			<div class="">
				<div class="page-title">
					<!-- 변경 div 시작 -->
					<div class="text_size_title">
						<a href="adminList.do">관리자 목록</a>
					</div>
					<hr>
					<div class="content_table_div">
						<!--form 구간 시작-->
						<div class="col-md-12">
							<div>
								<h3>관리자 정보 수정하기</h3>
								<hr>
								<form class="detail_form" name="userDetail"
									action="updateAdmin.do" method="post">
									<section>
										<div class="auto-container">
											<div class="tabs-box">
												<div>
													<!--Form Column-->
													<div class="form-column col-lg-6 col-md-12 col-sm-12"
														style="margin-left: 250px">
														<div class="inner">
															<div class="donate-form">
																<div class="personal-info">
																	<h2>NO. ${admin.adm_no}</h2>
																	<input type="hidden" value="${admin.adm_no}" name="adm_no"/>
																	<hr style="width: 430px; color: white;">
																	<div class="row clearfix">
																		<div class="form-group col-lg-6 col-md-6 col-sm-6">
																			<div class="field-label">성함</div>
																			<input type="text" id="adm_name" name="adm_name"
																				value="${admin.adm_name}">
																		</div>
																		<div class="form-group col-lg-6 col-md-6 col-sm-6">
																			<div class="field-label">아이디</div>
																			<input type="text" maxlength="13" id="adm_id"
																				name="adm_id" value="${admin.adm_id}">
																		</div>
																		<div class="form-group col-lg-6 col-md-6 col-sm-6">
																			<div class="field-label">부서</div>
																			<input type="text" id="adm_dept" name="adm_dept"
																				value="${admin.adm_dept}">
																		</div>
																		<div
																			class="form-group col-lg-6 col-md-6 col-sm-6 form_phone">
																			<div class="field-label">연락처</div>
																			<input type="text" id="adm_phone" name="adm_phone"
																				value="${admin.adm_phone}">
																			<div class="field-label" id="email_message"
																				style="text-align: right;"></div>
																		</div>
																		<div class="form-group col-lg-12 col-md-12 col-sm-12">
																			<div class="field-label">Email</div>
																			<input type="email" id="adm_email" name="adm_email"
																				value="${admin.adm_email}">
																			<div class="field-label" id="email_message"
																				style="text-align: right;"></div>
																		</div>
																		<div
																			class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
																			<div class="field-label">주소</div>
																			<input type="text" id="adm_adress" name="adm_adress"
																				value="${admin.adm_adress}">
																			<div class="field-label" id="email_message"
																				style="text-align: right;"></div>
																		</div>
																		<div class="form-group col-lg-6 col-md-6 col-sm-6">
																			<div class="field-label">입사일</div>
																			<input type="text" id="adm_hiredate"
																				name="adm_hiredate" value="${admin.adm_hiredate}">
																			<div class="field-label" id="email_message"
																				style="text-align: right;"></div>
																		</div>
																		<div class="form-group col-lg-6 col-md-6 col-sm-6">
																			<div class="field-label">퇴사일</div>
																			<input type="text" id="adm_enddate"
																				name="adm_enddate" value="${admin.adm_enddate}">
																			<div class="field-label" id="email_message"
																				style="text-align: right;"></div>
																		</div>
																		<div>
																			<button type="submit" class="theme-btn btn-style-five"
																				id="update_btn">
																				<span class="btn-title btn_fix">수정 완료하기</span>
																			</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</section>
								</form>
							</div>
						</div>
						<!-- form 끝-->

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
</body>
</html>
