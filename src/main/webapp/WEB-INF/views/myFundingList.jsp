<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>MOHE 마이모해</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/mohe.fdzzim.css" rel="stylesheet">
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
<link href="resources/css/cart.css" rel="stylesheet">
<style>
.rating {
	position: absolute;
	z-index: 5;
	top: 0px;
	left: 20px;
	width: 100px;
}
</style>
</head>

<body>

	<div class="page-wrapper new-font">
		<!-- header include -->
		<jsp:include page="header.jsp" />
		<!--Content Side / Blog Sidebar-->
		<!--Sidebar Page Container-->
		<div class="sidebar-page-container shop-page">
			<div class="auto-container">
				<div class="row clearfix">
					<div class="content-side col-xl-9 col-lg-8 col-md-12 col-sm-12">
						<c:if test="${empty pay_list}">
							<p>참여 내역이 없습니다.</p>
						</c:if>
						<c:if test="${not empty pay_list}">
							<div class="cart-outer m-auto">
								<div class="table-column">
									<div class="inner-column">
										<div class="table-outer">
											<div class="table-box">
												<table class="cart-table new-cart-table">
													<thead class="cart-header">
														<tr>
															<th>날짜</th>
															<th class="prod-column">프로젝트명</th>
															<th>&nbsp;</th>
															<th>진행 상태</th>
															<th>&nbsp;</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${pay_list}" var="pay">
															<tr>
																<td>${pay.date_for_list}</td>
																<td>
																	<figure class="prod-thumb title-poto">
																		<a href="fundingSingle.do.do?fd_no=${pay.fd_no}"><img
																			class="lazy-image loaded"
																			src="resources/files/funding/${pay.fd_img_name}/title.png"
																			alt="" data-was-processed="true"></a>
																	</figure>
																</td>
																<td class="prod-column title-td"><a
																	href="fundingSingle.do?fd_no=${pay.fd_no}"><span>${pay.fd_title}</span></a>
																</td>
																<td>${pay.pay_status}</td>
																<td class="sub-total">
																	<button class="plus">상세보기</button> <input type="hidden"
																	value="${pay.pay_count}"> <input type="hidden"
																	value="${pay.pay_total}"> <input type="hidden"
																	value="${pay.pay_pn_addr}"> <input
																	type="hidden" value="${pay.fd_no}">
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
							<!-- 페이징 부분 -->
							<div id="paging">
								<c:choose>
									<c:when test="${page.groupNo-1 > 0 }">
										<a
											href="?pageNum=${page.firstPageNo-1}&&groupNo=${page.groupNo-1}">
											◀ </a>
									</c:when>
									<c:otherwise>
										<span> ◀ </span>
									</c:otherwise>
								</c:choose>
								<c:forEach var="i" begin="${page.firstPageNo}"
									end="${page.endPageNo}">
									<a href="?pageNum=${i}&&groupNo=${page.groupNo}">${i}</a>
								</c:forEach>
								<c:choose>
									<c:when test="${page.endPageNo < page.pageTotalCount }">
										<a
											href="?pageNum=${page.endPageNo+1}&&groupNo=${page.groupNo+1}">
											▶ </a>
									</c:when>
									<c:otherwise>
										<span> ▶ </span>
									</c:otherwise>
								</c:choose>
							</div>
							<!-- 페이징 끝 -->
						</c:if>
					</div>
					<!--Sidebar Side-->
					<div
						class="sidebar-side col-xl-3 col-lg-4 col-md-12 col-sm-12 text-center">
						<aside class="sidebar shop-sidebar">
							<div class="sidebar-widget price-filters rangeslider-widget">
								<div class="input-control d-block">
									<label for="userName" class="input-label"></label>
									<div class="profile-user-img margin-auto">
										<img class="margin-auto profile-user-img-img"
											src="resources/userImgUploadFile/${user.user_no}/${user.user_img}"
											onerror="this.onerror=null;this.src='resources/images/mohe_logo/img_no_profile.png'"
											alt="profile-user-img" style="max-width: 130px">
										<div class="rating">
											<c:choose>
												<c:when test="${sessionScope.user.user_rating eq '시민'}">
													<img src="resources/images/user_rating/rating_1_30.png">
												</c:when>
												<c:when test="${sessionScope.user.user_rating eq '고수'}">
													<img src="resources/images/user_rating/rating_2_30.png">
												</c:when>
												<c:otherwise>
													<img src="resources/images/user_rating/rating_3_30.png">
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
								<h3 class="sidebar-title new-font">
									<c:out value="${sessionScope.user.user_name}" />
									님(
									<c:out value="${sessionScope.user.user_rating}" />
									)
								</h3>
								<div class="range-slider-one clearfix">
									<div class="clearfix">
										<div class="text-center">
											<a href="modifyInfo.do" class="theme-btn btn-style-one"><span
												class="btn-title">회원 수정</span></a><br /> <a href="#"
												class="theme-btn btn-style-one"><span
												class="btn-title bg-red">회원 탈퇴</span></a>
										</div>
									</div>
								</div>
							</div>
							<!-- Category Widget -->
							<div class="sidebar-widget categories">
								<div class="widget-content">
									<ul class="cart-ul">
										<li>펀딩
											<ul>
												<li class="current"><a href="myFundingList.do">펀딩참여목록</a></li>
												<li><a href="fundingHost.do">펀딩주최목록</a></li>
											</ul>
										</li>
										<li>봉사
											<ul>
												<li><a href="myVolunList.do">봉사참여목록</a></li>
												<li><a href="bongsaRecruiterMypage.do">봉사주최목록</a></li>
											</ul>
										</li>
										<li><a href="shoppingBasket.do" class="jjimlist">찜목록</a></li>
										<li>후기
											<ul>
												<li><a href="myReviewList.do">나의후기목록</a></li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</div>

		<!-- footer include -->
		<jsp:include page="footer.jsp" />
	</div>
	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="flaticon-up-arrow"></span>
	</div>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/mixitup.js"></script>
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
	<script type="text/javascript">
		$(document)
				.on(
						'click',
						'.plus',
						function() {
							$('.plus-tr').remove()
							$(this)
									.parent()
									.parent()
									.after(
											'<tr class="plus-tr" ><th class="no-line" >&nbsp;</th><th>수량</th><th>총액</th>'
													+ '<th class="prod-column" >배송주소</th><th></th>&nbsp;</tr>'
													+ '<tr class="plus-tr" ><td></td><td>'
													+ $(this).next().val()
													+ '</td><td>'
													+ $(this).next().next()
															.val()
													+ '</td>'
													+ '<td>'
													+ $(this).next().next()
															.next().val()
													+ '</td><td>'
													+ ($(this).parent().prev()
															.text().search(
																	'대기중') == -1 ? '<a href="reviewWriting.do"'
															+ ' onclick="insertFunding_cart\(\''
															+ $(this).next()
																	.next()
																	.next()
																	.next()
																	.val()
															+ '\'\);">후기쓰기</a></td>'
															: '') + '</tr>')
						})
	</script>

</body>

</html>