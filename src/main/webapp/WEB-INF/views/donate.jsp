<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 기부하기</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">

<link rel="shortcut icon"
	href="resources/resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">
<link rel="icon"
	href="resources/resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
<link href="resources/css/mainPage.css" rel="stylesheet">
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
</head>

<body>


	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="header.jsp" />

		<!-- Page Banner Section -->
		<section class="donate_benner_section image wow fadeInUp">
			<!-- <div class="image-layer lazy-image" data-bg="url('resources/resources/images/background/bg-banner-1.jpg')"></div> -->

			<div class="auto-container benner_text">
				<img class="donation_img_fix"
					src="resources/images/mohe_logo/hand_donate.png">
				<h1>기부하기</h1>
				<ul class="bread-crumb clearfix">
					<li class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Make Donation</li>
				</ul>
			</div>

		</section>
		<!--End Banner Section -->

		<!--Donate Section-->
		<section class="donate-section">
			<div class="auto-container">
				<div class="tabs-box">
					<div>
						<!--Form Column-->
						<div class="form-column col-lg-6 col-md-12 col-sm-12"
							style="margin-left: 250px">
							<div class="inner">
								<div class="donate-form">
									<form name="inputDnt" method="post" action="insertDonation.do">
										<h2>당신의 기부</h2>

										<div class="form-group">
											<div class="field-label">
												<hr>
											</div>
											<div class="select-amount clearfix">
												<div class="select-box">
													<input type="radio" name="payment-group" id="radio-one"
														value="10000"><label for="radio-one">1만원</label>
												</div>
												<div class="select-box">
													<input type="radio" name="payment-group" id="radio-two"
														value="30000"><label for="radio-two">3만원</label>
												</div>
												<div class="select-box">
													<input type="radio" name="payment-group" id="radio-three"
														value="50000" checked><label for="radio-three">5만원</label>
												</div>
												<div class="select-box">
													<input type="radio" name="payment-group" id="radio-four"
														value="100000"><label for="radio-four">10만원</label>
												</div>
											</div>
											<div class="input-box donate_price">
												<input type="text" name="other-payment" value=""
													placeholder="직접 입력하기">
											</div>
										</div>
										<br>
										<div class="method">
											<h3>기부 방식 선택</h3>
											<div class="form-group">
												<div class="clearfix">
													<div class="radio-block">
														<input type="radio" id="radio-1" name="dnt_pay_type"
															value="naver"><label for="radio-1"><img
															src="resources/images/payment/naver_pay_logo.PNG"></label>
													</div>
													<div class="radio-block">
														<input type="radio" id="radio-2" name="dnt_pay_type"
															value="kakao" checked><label for="radio-2"><img
															src="resources/images/payment/kakao_pay_logo.PNG"></label>
													</div>
												</div>
											</div>
										</div>
										<br>
										<div class="personal-info donate_price">
											<h3>기부자 정보</h3>
											<br>
											<div class="row clearfix">
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">성함</div>
													<input type="text" id="dnt_name" name="dnt_name" value=""
														placeholder="Name" required>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12">
													<div class="field-label">연락처</div>
													<input type="text" maxlength="13" id="dnt_phone" name="dnt_phone" value=""
														placeholder="Phone Number" required>
												</div>
												<div
													class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
													<div class="field-label">Email</div>
													<input type="email" id="dnt_email" name="dnt_email"
														value="" placeholder="Email address" required>
													<div class="field-label" id="email_message"
														style="text-align: right;"></div>
												</div>
												<div class="form-group col-lg-12 col-md-12 col-sm-12"
													style="text-align: right;">
													<div class="donation-total" id="total">
														Donation Total: <strong>50000원</strong> <input
															type="hidden" id="dnt_amount" name="dnt_amount"
															value="50000" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group" style="text-align: center;">
											<button type="submit" class="theme-btn btn-style-one"
												id="dnt_btn">
												<span class="btn-title btn_fix">기부 완료하기</span>
											</button>
										</div>
									</form>

								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- footer include -->
		<jsp:include page="footer.jsp" />
	</div>
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
	<script>

	  var result = false;
	  
		$(function() {
			// 기부 버튼을 눌렀을때
			$('#dnt_btn').click(
					function() {
						if ($.trim($("#dnt_name").val()) == '') {
							alert("이름을 입력해 주세요.");
							$("#dnt_name").focus();
							return;
						}

						if ($.trim($('#dnt_phone').val()) == '') {
							alert("연락처를 입력해 주세요.");
							$('#dnt_phone').focus();
							return;
						}

						if ($.trim($('#dnt_email').val()) == '') {
							alert("이메일을 입력해 주세요.");
							$('#dnt_email').foucs();
							return;
						}
						// 이메일 검증 진행
						if(result){
							// 자료를 전송합니다.
							document.inputDnt.submit();
						}else{
							alert("올바른 형식을 제출해주세요.")
						}
					});
			
			// 이메일 검증 함수
			$('#dnt_email').blur(function(){
				  // 이메일 값 변수 저장
				  var email = $("#dnt_email").val();
				  var message = "";

				  // 검증에 사용할 정규식 변수 regExp에 저장
				  var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

				  if (email.match(regExp) != null) {
					  // 타입이 맞으면
				    message = "정상 이메일 형식 입니다"
					$('#email_message').css("color","green");
					 result = true;
				  }
				  else {
					message = "정상적인 이메일 형식이 아닙니다"
					$('#email_message').css("color","red");
				  }
				  $('#email_message').text(message);
				  return result;
			});
			
			// 전화번호 검증 함수
			$('#dnt_phone').bind("keyup",function(event){
				var regNumber = /^[0-9]*$/;
				var temp = $('#dnt_phone').val();
				
				if(!regNumber.test(temp)){
					alert("숫자만 입력해주세요");
					$('#dnt_phone').val(temp.replace(/[^0-9]/g,""));
				}
				
				temp.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/\-{1,2}$/g, "");
			});
			
			// 기부금액 변환및 변수전달
			// 1. 버튼 클릭시 자동 기부금액 전달하는 함수
			$('input[name=payment-group]').click(function(){
				// 체크된 라디오 벨유값을 토탈값에 전달한다
				var pay = $('input[name=payment-group]:checked').val();
				// div 보이는 값에 적용
				$('strong').text(pay+"원");
				// hidden 값에 적용
				$('#dnt_amount').val(pay);
				// 직접입금 금액은 비어있도록 적용
				$('input[name=other-payment]').val("");
			});
			//2. 직접 입력한 금액이 있으면 그 금액을 전달
			$('input[name=other-payment]').change(function(){
				// 입력한 기부금액의 값을 받아옴
				var inputPay = $('input[name=other-payment]').val();
				// div 보이는 값에 적용
				$('strong').text(inputPay+"원");
				// hidden 값에 적용
				$('#dnt_amount').val(inputPay);
			});
			
			<%if(request.getParameter("result") != null){%>
				// 기부를 정상적으로 완료했다면
				alert("기부가 완료되었습니다.");
			<%}%>
		});
	</script>
</body>
</html>