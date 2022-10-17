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
<link href="../resources/css_ad/newStyle2.css" rel="stylesheet">
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
					<!-- 서치 부분 시작 -->
					<div>
						<div class="text_size_title">봉사 목록</div>
						<div id="search">
							<form name="search" action="adVtList.do" method="post">
								<select name="select">
									<option value="bs_title">제목</option>
									<option value="bs_name">주최자명</option>
								</select>
								<input type="search" name="stext" value="${page.stext}" placeholder="Search...">
								<button type="submit">
									<span class="icon flaticon-search-1"></span>
								</button>
							</form>
						</div>
						<hr>
					</div>
					<!-- 서치 부분 끝 -->
					<div class="content_table_div">
						<!-- 버튼시작 -->
						<div class="link-box btn_tb_mg">
							<a href="#" class="theme-btn btn-style-one" id="excel_export">
								<span class="btn-title"><h2>EXCEL 내보내기</h2></span>
							</a>
						</div>
						<!-- 버튼끝 -->
						<!-- 테이블 시작 -->
						<section class="cart-section no_padding">
							<div class="auto-container">
								<!--Cart Outer-->
								<div class="cart-outer">
									<div class="table-column">
										<div class="inner-column">
											<div class="table-outer">
												<div class="table-box">
													<div id="exportExcel_name">Bongsa</div>
													<table class="cart-table table2excel" id="export_table">
														<thead class="cart-header">
															<tr>
																<th>NO</th>
																<th width="400px">제목</th>
																<th>주최자</th>
																<th>지역</th>
																<th>모집종료일</th>
																<th width="300px">수정 / 삭제</th>
															</tr>
														</thead>

														<tbody>
															<c:forEach items="${bsList}" var="bs">
																<tr>
																	<td style="word-break: break-all">${bs.bs_no}</td>
																	<td style="word-break: break-all"><a href="adBsDetail.do?bs_no=${bs.bs_no}">${bs.bs_title}</a></td>
																	<td style="font-size: 13px">${bs.bs_email}</td>
																	<td style="font-size: 13px">${bs.bs_region}</td>
																	<td style="word-break: break-all">${bs.bs_recruit_end}</td>
																	<td><a href="adBsUpdate.do?bs_no=${bs.bs_no}" class="remove-btn"> 
																			<span class="flaticon-check"></span>
																		</a>&nbsp;&nbsp;&nbsp; 
																		<a href="#" onclick="remove(${bs.bs_no})" class="remove-btn">
																			<span class="flaticon-delete-1"></span>
																		</a>
																	</td>
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

						<!-- 페이징 부분 -->
						<div id="paging">
							<c:choose>
								<c:when test="${page.groupNo-1 > 0 }">
									<c:choose>
										<c:when test="${page.stext ne null}">	
											<a href="?pageNum=${page.firstPageNo-1}&&groupNo=${page.groupNo-1}&&select=${page.select}&&stext=${page.stext}"> ◀ </a>
										</c:when>
										<c:otherwise>
											<a href="?pageNum=${page.firstPageNo-1}&&groupNo=${page.groupNo-1}"> ◀ </a>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<span> ◀  </span>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${page.stext ne null}">
									<c:forEach var="i" begin="${page.firstPageNo}" end="${page.endPageNo}">
										<a href="?pageNum=${i}&&groupNo=${page.groupNo}&&select=${page.select}&&stext=${page.stext}">${i}</a>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:forEach var="i" begin="${page.firstPageNo}" end="${page.endPageNo}">
										<a href="?pageNum=${i}&&groupNo=${page.groupNo}">${i}</a>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${page.endPageNo < page.pageTotalCount }">
									<c:choose>
										<c:when test="${page.stext ne null}">
											<a href="?pageNum=${page.endPageNo+1}&&groupNo=${page.groupNo+1}&&select=${page.select}&&stext=${page.stext}"> ▶ </a>
										</c:when>
										<c:otherwise>
											<a href="?pageNum=${page.endPageNo+1}&&groupNo=${page.groupNo+1}"> ▶ </a>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<span> ▶ </span>
								</c:otherwise>
							</c:choose>
						</div>
						<!-- 페이징 끝 -->					
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
	<!-- 엑셀 내보내기 플러그인 -->
	<script src='../resources/js_ad/jquery.table2excel.js'></script>
	<script src='../resources/js_ad/excelTables.js'></script>
		<script>
		function remove(bs_no){
			var result = confirm("정말로 삭제 하시겠습니까?")
			if(result) location.href='deleteBs.do?bs_no='+bs_no;
		}
	</script>
</body>
</html>