<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
<style>
	.user_join_table_div{
		height:245px;
		overflow: auto;
	}
</style>
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
					<div class="text_size_title"><a href="adUserList.do">회원 목록</a></div>
					<hr>
					<div class="content_table_div" style="height:1200px;ss">
						<!-- 버튼시작 -->
						<div class="link-box btn_tb_mg right_btn">
							<h2><a href="userEnd.do?user_no=${userDetail.user_no}" class="theme-btn btn-style-three">
								<span class="btn-title">사용불가 전환</span>
							</a></h2>
							 <h2><a href="adUserUpdateInfo.do?user_no=${userDetail.user_no}" class="theme-btn btn-style-one">
								<span class="btn-title">회원정보 수정</span>
							</a></h2>
						</div>
						<!-- 버튼끝 -->

						<!--form 구간 시작-->
						<div class="col-md-12">
							<div class="div_absol">
								<h3>회원 상세 정보</h3>
								<hr>
								<form name="userDetail" action="adUserUpdate.do" method="post">
									<input type="hidden" value="${userDetail.user_no}" name="user_no"/>
									<div class="user_pf_div">
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<div class="field-label">프로필사진</div>
<!-- 											<img src="../resources/images/imsi_img1.png" />  -->
											<img src="../resources/files/user/${userDetail.user_no}/userIMG.png" onerror="this.src='../resources/images/imsi_img1.png'"/> 
										</div>
									</div>
									<div class="user_info_div">
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<div class="field-label label_inline">이름</div>
											<input type="text" name="user_name" value="${userDetail.user_name}" readonly>
										</div>
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<div class="field-label label_inline">연락처</div>
											<input type="text" name="user_phone" value="${userDetail.user_phone}" readonly>
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">ID</div>
											<input type="text" name="user_email" value="${userDetail.user_email}" readonly>
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">등급</div>
											<input type="text" name="user_rating" value="${userDetail.user_rating}" readonly>
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">주소</div>
											<input type="text" name="user_addr" value="${userDetail.user_addr}" readonly>
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">회원가입일</div>
											<input type="text" name="user_indate" value="${userDetail.user_indate}" readonly>
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">회원탈퇴일</div>
											<input type="text" name="user_outdate" value="${userDetail.user_outdate}" readonly>
										</div>
									</div>
								</form>
							</div>
						</div>
						<!-- form 끝-->
						<!-- 참여 정보 시작-->
						<div class="col-md-12 absol_nextDiv">
							<h3>참여 펀딩 리스트</h3>
							<hr>
							<!-- 테이블 시작 -->
							<section class="cart-section no_padding">
								<div class="auto-container">
									<!--Cart Outer-->
									<div class="cart-outer">
										<div class="table-column">
											<div class="inner-column">
												<div class="table-outer">
													<div class="user_join_table_div">
														<table class="cart-table">
															<thead class="cart-header">
																<tr>
																	<th>NO</th>
																	<th>제목</th>
																	<th>주최자</th>
																	<th>배송상태</th>
																</tr>
															</thead>

															<tbody>
																<c:forEach items="${userFdList}" var="fd">
																	<tr>
																		<td style="word-break: break-all">${fd.fd_no}</td>
																		<td style="word-break: break-all"><a href="adUserDetail.do">${fd.fd_title}</a></td>
																		<td style="word-break: break-all">${fd.fd_hostname}</td>
																		<td style="font-size: 13px">${fd.pay_status}</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
							<!-- End Cart Section-->
							<!-- 테이블 끝 -->
						</div>
						<div class="col-md-12">
							<h3>참여 봉사 리스트</h3>
							<hr>
							<!-- 테이블 시작 -->
							<section class="cart-section no_padding">
								<div class="auto-container">
									<!--Cart Outer-->
									<div class="cart-outer">
										<div class="table-column">
											<div class="inner-column">
												<div class="table-outer">
													<div class="user_join_table_div">
														<table class="cart-table">
															<thead class="cart-header">
																<tr>
																	<th>NO</th>
																	<th>제목</th>
																	<th>장소</th>
																	<th>봉사시작일</th>
																</tr>
															</thead>

															<tbody>
																<c:forEach items="${userBsList}" var="bs">
																	<tr>
																		<td style="word-break: break-all">${bs.volun_no}</td>
																		<td style="word-break: break-all"><a href="adUserDetail.do">${bs.vt_title}</a></td>
																		<td style="word-break: break-all">${bs.vt_place}</td>
																		<td style="font-size: 13px">${bs.vt_work_start}</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
							<!-- End Cart Section-->
							<!-- 테이블 끝 -->
						</div>
						<!-- 참여 정보 끝-->
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
</body>
</html>
