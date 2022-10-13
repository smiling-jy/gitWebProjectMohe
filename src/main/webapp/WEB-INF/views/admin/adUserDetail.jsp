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
					<a href="adUserList.do"><div class="text_size_title">회원 목록</div></a>
					<hr>
					<div class="content_table_div">
						<!-- 버튼시작 -->
						<div class="link-box btn_tb_mg right_btn">
							<a href="cause-single.do" class="theme-btn btn-style-three">
								<span class="btn-title"><h2>사용불가 전환</h2></span>
							</a> <a href="cause-single.do" class="theme-btn btn-style-one">
								<span class="btn-title"><h2>회원정보 수정</h2></span>
							</a>
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
											<img src="../resources/images/imsi_img1.png" /> <input type="hidden"
												name="" value="">
										</div>
									</div>
									<div class="user_info_div">
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<div class="field-label label_inline">이름</div>
											<input type="text" name="user_name" value="${userDetail.user_name}">
										</div>
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<div class="field-label label_inline">연락처</div>
											<input type="text" name="user_phone" value="${userDetail.user_phone}">
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">ID</div>
											<input type="text" name="user_email" value="${userDetail.user_email}">
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">등급</div>
											<input type="text" name="user_rating" value="${userDetail.user_rating}">
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">주소</div>
											<input type="text" name="user_addr" value="${userDetail.user_addr}">
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">회원가입일</div>
											<input type="text" name="user_indate" value="${userDetail.user_indate}">
										</div>
										<div
											class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
											<div class="field-label label_inline">회원탈퇴일</div>
											<input type="text" name="user_outdate" value="${userDetail.user_outdate}">
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
													<div class="table-box">
														<table class="cart-table">
															<thead class="cart-header">
																<tr>
																	<th>NO</th>
																	<th>제목</th>
																	<th>주최자</th>
																	<th>종료일</th>
																</tr>
															</thead>

															<tbody>
																<tr>
																	<td><input type="checkbox" /></td>
																	<td class="qty"><a href="#">smigni3@naver.com</a></td>
																	<td class="qty">이지윤</td>
																	<td class="qty">01045681987</td>
																	<td class="qty">2022/09/22</td>
																</tr>
																
																<c:forEach items="${payUser}" var="fd">
																	<tr>
																		<td style="word-break: break-all">${fd.fd_no}</td>
																		<td style="word-break: break-all"><a href="adUserDetail.do">${fd.fd_title}</a></td>
																		<td style="word-break: break-all">${fd.fd_host_name}</td>
																		<td style="font-size: 13px">${fd.pay_date}</td>
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
													<div class="table-box">
														<table class="cart-table">
															<thead class="cart-header">
																<tr>
																	<th>Check</th>
																	<th>ID</th>
																	<th>이름</th>
																	<th>핸드폰</th>
																	<th>가입일</th>
																</tr>
															</thead>

															<tbody>
																<tr>
																	<td><input type="checkbox" /></td>
																	<td class="qty"><a href="#">smigni3@naver.com</a></td>
																	<td class="qty">이지윤</td>
																	<td class="qty">01045681987</td>
																	<td class="qty">2022/09/22</td>
																</tr>
																<tr>
																	<td><input type="checkbox" /></td>
																	<td class="qty"><a href="#">smigni3@naver.com</a></td>
																	<td class="qty">이지윤</td>
																	<td class="qty">01045681987</td>
																	<td class="qty">2022/09/22</td>
																</tr>
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
</body>
</html>
