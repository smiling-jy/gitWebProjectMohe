<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 자주 묻는 질문</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 추가된 css-->
<link href="resources/css/more.css" rel="stylesheet">
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">

<link rel="shortcut icon"
	href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

</head>

<body>

	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="header.jsp" />
		<!-- Page Banner Section -->
		<section class="page-banner" id="new-banner">

			<div class="auto-container">
				<h1>자주 묻는 질문</h1>
				<ul class="bread-crumb clearfix">
					<li><a href="notice.do"><h5>공지사항</h5></a></li>
					<li class="active"><h5>자주 묻는 질문</h5></li>
					<li><a href="event.do"><h5>이벤트</h5></a></li>
					<li><a href="partner.do"><h5>파트너</h5></a></li>
					<li><a href="review.do"><h5>후기 모음</h5></a></li>
				</ul>
			</div>

		</section>
		<!--End Banner Section -->

		<!--FAQs Section-->
		<section class="faq-section">
			
				<div class="tabs-box">

						<div class="auto-container">
						    <!--Content Column-->
						<div class="content-column col-lg-10 col-md-12 col-sm-12" style="margin:auto;">
						    <!-- 운영자에게 메일보내기&검색하기 -->
         					<div class="auto-container" id="admin-email">
          			  			<div id="admin-email-inner">
              						 <h4 style="text-align: center; color: white; display: inline;">
              								 무엇이든 문의하세요</h4>
              			 			<img src="resources/images/mohe_logo/main_logo.png">
              						<h4 style="text-align: center; color: white; display: inline;">admin@mohe.com</h4>
              					<div class="text-box">
              						<input type="text" id="search-text" placeholder="질문을 검색하세요">
									<button type="button" id="qna-search-btn"><img id="btn-img" src="resources/images/icons/search-btn.png"></button>
              					</div>
								
							</div>
        		 		</div>
							<div class="inner">
									<!--Title Column-->
									<div class="title-column">
			
										<div class="faq-inner" style="text-align:center;">
											<ul class="tab-buttons">
												<li class="tab-btn active-btn" style="font-size: 20px; display:inline;"
													data-tab="#tab-1">펀딩 &nbsp; &nbsp;</li>
												<li class="tab-btn" style="font-size: 20px; display:inline;" data-tab="#tab-2">봉사 &nbsp; &nbsp;</li>
												<li class="tab-btn" style="font-size: 20px; display:inline;" data-tab="#tab-3">후원 &nbsp; &nbsp;</li>
												<li class="tab-btn" style="font-size: 20px; display:inline;" data-tab="#tab-4">기타사항 &nbsp; &nbsp;</li>
											</ul>
										</div>
									</div>
								<div class="tabs-content" style="width:85%;">
									<!--Tab-->
									<div class="tab active-tab" id="tab-1">
										<ul class="accordion-box clearfix">
											<!--Block-->
											<li class="accordion block active-block">
												<div class="acc-btn active">Q. 펀딩상품 배송일정은 어떻게
													되나요?</div>
												<div class="acc-content current">
													<div class="content">
														<div class="text">펀딩 프로젝트의 발송 예정일은 총 3단계로 나뉘어요.<br>
																			N월 초 : 매월 1~10일<br>
																			N월 중 : 매월 11~20일<br>
																			N월 말 : 매월 21~말일<br>
																			메이커님이 약속한 발송 예정일을 프로젝트 리워드 카드에서 확인해 보세요.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 취소된 프로젝트의 펀딩금 반환은 어떻게 이루어 지나요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">
														<p>받아본 리워드에 문제가 있거나 발송 예정일에 맞춰 배송이 되지 않았다면 펀딩금 반환을 신청할 수 있어요.
																펀딩금 반환은 마이페이지 에서 반환을 원하는 프로젝트를 선택하여 신청할 수 있고, 메이커가 확인 후 반환이 진행돼요.
																</p>
																<p>※ 함께 읽어 주세요!</p>
																<p>리워드 교환, A/S는 [메이커에게 문의하기]로 메이커님께 직접 문의해 주세요.
																신청 내용이 분명하지 않거나 펀딩금 반환 대상이 아니면 거절될 수 있어요.
																펀딩금 반환 신청시 카드 결제 취소가 진행되며, 리워드가 발송되지 않아요.
																카드 결제 취소는 카드사에 따라 약 2-5 영업일이 걸려요.</p></div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 후원금은 펀딩금액의 몇 퍼센트 비율인가요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text"><p>
																	후원금은 전체 펀딩 성공 금액의 50% 입니다.
														</p></div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 펀딩 프로젝트는 어떻게 시작하나요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text"><p>
														마이페이지에서 이용하실 수 있으며 안내에 따라 양식을 작성해주시면 됩니다.
														
														</p></div>
													</div>
												</div>
											</li>
									</ul>
									</div>

									<!--Tab-->
									<div class="tab" id="tab-2">
										<ul class="accordion-box clearfix">
											<!--Block-->
											<li class="accordion block active-block">
												<div class="acc-btn active">Q. 봉사활동 신청은 어떻게 하나요?</div>
												<div class="acc-content current">
													<div class="content">
														<div class="text">
														참여 하고 싶은 봉사활동 프로젝트에 참가 신청을 하신뒤, 간단한 신청서를 작성합니다.<br>
														봉사 프로젝트에 참가하신 후 진행 사항은 고객님의 카카오톡으로 전송됩니다.
														</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 봉사활동 확인서를 영문으로 발급 받을 수 있나요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text"> 모해 웹사이트 자체적으로 봉사활동 영문확인서 발급은 불가합니다.<br>
														이는 각 지역 자원봉사센터로 발급을 요청하셔야 합니다.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 봉사활동을 주최하고 싶은데 심사까지 며칠이나 걸리나요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">프로젝트 심사는 짧게는 이틀, 길게는 일주일 소요됩니다.</div>
													</div>
												</div>
											</li>

										</ul>
									</div>

									<!--Tab-->
									<div class="tab" id="tab-3">
										<ul class="accordion-box clearfix">
											<!--Block-->
											<li class="accordion block active-block">
												<div class="acc-btn active">Q. 익명으로 후원할 수 있을까요?</div>
												<div class="acc-content current">
													<div class="content">
														<div class="text"><p>후원자님께서 익명으로 후원을 원하시는 경우 가능합니다.
														<br>이 경우에는 저희 모해 후원계좌로 직접 입금해주시면 됩니다. 하지만 익명으로 후원금을
														보내시는 경우에는 후원자님의 기본 정보를 확인할 수 없기에 기부금 영수증 발급이 불가하오니 이점 참고해주세요.
														</p>
														*모해 후원계좌 : ㅇㅇ은행 xxxxxx-xx-xxxxxx 
														</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 후원금 납부 방법은 어떤게 있나요? </div>
												<div class="acc-content">
													<div class="content">
														<div class="text">QR코드를 이용해 간편하게 카카오페이와 계좌이체로 납부 가능합니다.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 물품 후원도 가능한가요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">물품 후원은 각 봉사단체의 내부 규정 및 수요처의 필요에 따라 가능합니다.<br>
														식품 또는 의약품의 경우 6개월 이상 유통기한이 남아 이는 제품만 가능합니다.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 모해 웹사이트는 후원금으로만 운영되나요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">펀딩 성공 금액에 따른 수수료, 정기 후원금과 함께 운영됩니다.</div>
													</div>
												</div>
											</li>

										</ul>
									</div>

									<!--Tab-->
									<div class="tab" id="tab-4">
										<ul class="accordion-box clearfix">
											<!--Block-->
											<li class="accordion block active-block">
												<div class="acc-btn active">Q. 모해에서 탈퇴하고 싶어요.</div>
												<div class="acc-content current">
													<div class="content">
														<div class="text">마이페이지에서 탈퇴 버튼을 누르시면 됩니다.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 모해 로고를 사용해도 될까요?</div>
												<div class="acc-content">
													<div class="content">
														<div class="text">모해의 로고는 임의로 사용하실 수 없습니다.</div>
													</div>
												</div>
											</li>

											<!--Block-->
											<li class="accordion block">
												<div class="acc-btn">Q. 후기 작성은 어디에서 할 수 있나요? </div>
												<div class="acc-content">
													<div class="content">
														<div class="text">마이페이지 > 펀딩 or 봉사참여 목록에서 하실 수 있습니다.</div>
													</div>
												</div>
											</li>

										</ul>
									</div>
								 </div>

							 </div>

							</div>
						</div>
					</div>
				</section>
			</div>
		

		<!-- footer include -->
		<jsp:include page="footer.jsp" />

	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="flaticon-up-arrow"></span>
	</div>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery-ui.js"></script>
	<script src="resources/js/jquery.fancybox.js"></script>
	<script src="resources/js/owl.js"></script>
	<script src="resources/js/appear.js"></script>
	<script src="resources/js/wow.js"></script>
	<script src="resources/js/lazyload.js"></script>
	<script src="resources/js/scrollbar.js"></script>
	<script src="resources/js/script.js"></script>
	<!-- 검색기능js 연결 -->
	<script src="resources/js/qna-search.js"></script>

</body>
</html>