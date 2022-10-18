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

<!-- personal css File -->
<link href="resources/css/miji.css" rel="stylesheet">

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

<body>

	<div class="page-wrapper">

		<!-- header include -->
		<jsp:include page="header.jsp" />

		<section class="gallery-page-section pb-0">
			<div class="auto-container">
				<!--MixitUp Galery-->
				<div class="mixitup-gallery">
					<!--Filter-->
					<div class="filters clearfix text-start">
						<ul class="filter-tabs filter-btns clearfix">
							<li class="filter active" data-role="button" data-filter=".mix-1">펀딩</li>
							<li class="filter" data-role="button" data-filter=".mix-2">봉사</li>
						</ul>
					</div>

					<div class="filter-list">

						<main class="gallery-item-two mix mix-1 main">
							<section class="wrapper">
								<div class="row clearfix">
									<div class="cart-outer m-auto">
										<div class="table-column">
											<div class="inner-column">

												<div class="table-outer">
													<div class="table-box">
														<table class="cart-table">
															<thead class="cart-header">
																<tr>
																	<th class="prod-column">프로젝트명</th>
																	<th>&nbsp;</th>
																	<th class="price">목표금액</th>
																	<th>수량</th>
																	<th>총액</th>
																	<th>진행 상태</th>
																	<th>리뷰작성</th>
																	<th>&nbsp;</th>
																</tr>
															</thead>

															<tbody>

															<c:forEach items="${pj_list}" var="pj">
																<tr>
																	<td colspan="2" class="prod-column">
																		<div class="column-box">
																			<figure class="prod-thumb">
																				<a href="fundingSingle.do?fd_no=${pj.fd_no}"><img class="lazy-image loaded"
																					src="resources/files/funding/${pj.fd_img_name}/title.png"
																					data-src="resources/files/funding/${pj.fd_img_name}/title.png"
																					alt="" data-was-processed="true"></a>
																			</figure>
																			<h4 class="prod-title">${pj.fd_title}</h4>
																		</div>
																	</td>
																	<td class="price">${pj.fd_goals}</td>
																	<td class="qty">1</td>
																	<td class="sub-total">${pj.fd_price}</td>

																	<td class="sub-total">${pj.fd_status}</td>
																	<td class="sub-total">
<%-- 																		<a href="javascript:void(0)" onclick="insertFunding_cart('${pj.fd_no}');"><i class="fa fa-regular fa-comment"></i></a> --%>
																		<a href="reviewWriting.do" onclick="insertFunding_cart('${pj.fd_no}');"><i class="fa fa-regular fa-comment"></i></a>
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
						</main>

						<main class="gallery-item-two mix mix-2 main">
							<section class="wrapper">
								<div class="row clearfix">
									<div class="cart-outer m-auto">
										<div class="table-column">
											<div class="inner-column">

												<div class="table-outer">
													<div class="table-box">
														<table class="cart-table">
															<thead class="cart-header">
																<tr>
																	<th class="prod-column">활동명</th>
																	<th>&nbsp;</th>
																	<th class="price">주최</th>
																	<th>장소</th>
																	<th>활동일자</th>
																	<th>진행 상태</th>
																	<th>리뷰작성</th>
																	<th>&nbsp;</th>
																</tr>
															</thead>

															<tbody>
																<tr>
																	<td colspan="2" class="prod-column">
																		<div class="column-box">
																			<figure class="prod-thumb">
																				<a href="#"><img class="lazy-image loaded"
																					src="resources/images/resource/products/prod-thumb-1.jpg"
																					data-src="resources/images/resource/products/prod-thumb-1.jpg"
																					alt="" data-was-processed="true"></a>
																			</figure>
																			<h4 class="prod-title">프로젝트 이름</h4>
																		</div>
																	</td>
																	<td class="price">0000</td>
																	<td class="qty">1</td>
																	<td class="sub-total">0000</td>
																	<td class="sub-total">거절</td>
																	<td class="sub-total">
<%-- 																		<a href="javascript:void(0)" onclick="insertFunding_cart('${pj.fd_no}');"><i class="fa fa-regular fa-comment"></i></a> --%>
																		<a href="reviewWriting.do" onclick="insertFunding_cart('${pj.fd_no}');"><i class="fa fa-regular fa-comment"></i></a>
																	</td>
																</tr>
																<tr>
																	<td colspan="2" class="prod-column">
																		<div class="column-box">
																			<figure class="prod-thumb">
																				<a href="#"><img class="lazy-image loaded"
																					src="resources/images/resource/products/prod-thumb-2.jpg"
																					data-src="resources/images/resource/products/prod-thumb-2.jpg"
																					alt="" data-was-processed="true"></a>
																			</figure>
																			<h4 class="prod-title">프로젝트 이름</h4>
																		</div>
																	</td>
																	<td class="price">0000</td>
																	<td class="qty">1</td>
																	<td class="sub-total">0000</td>
																	<td class="remove"><a href="#" class="remove-btn"><span
																			class="flaticon-delete-1"></span></a></td>
																</tr>

																<tr>
																	<td colspan="2" class="prod-column">
																		<div class="column-box">
																			<figure class="prod-thumb">
																				<a href="#"><img class="lazy-image loaded"
																					src="resources/images/resource/products/prod-thumb-3.jpg"
																					data-src="resources/images/resource/products/prod-thumb-3.jpg"
																					alt="" data-was-processed="true"></a>
																			</figure>
																			<h4 class="prod-title">프로젝트 이름</h4>
																		</div>
																	</td>
																	<td class="price">0000</td>
																	<td class="qty">1</td>
																	<td class="sub-total">0000</td>
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
						</main>

					</div>

				</div>
			</div>

		</section>


		<!--Scroll to top-->
		<div class="scroll-to-top scroll-to-target" data-target="html">
			<span class="flaticon-up-arrow"></span>
		</div>
		<!-- Button trigger modal -->
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">...</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>
		<!-- footer include -->
		<jsp:include page="footer.jsp" />
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
	
	<script>
		function insertFunding_cart(fd_no) {
			$.ajax({
				type:'get',
		        url:'insertFunding_cart.do',
		        data: {'fd_no' : fd_no },
		        async: false,
		        success: function(data){
		        	console.log(data);
		        },
		        error: function(request, status, error){
		        	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		        }
			});
		}
	</script>

</body>

</html>