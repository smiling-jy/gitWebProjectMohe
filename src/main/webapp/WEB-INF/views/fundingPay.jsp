<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE |</title>
<link rel="shortcut icon"
	href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 수정한 css-->
<link href="resources/css/funding.css" rel="stylesheet">
<link href="resources/css/header3.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">


<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->


</head>

<body>

	<div class="page-wrapper">
		<!-- header include -->
		<jsp:include page="headerMint.jsp" />

		
			<section class="cart-section">
				<div class="auto-container">
					<!--Cart Outer-->
					
					<div class="cart-outer">
						<div class="table-column">
							<div class="inner-column">
								<div class="table-outer">
									<div class="table-box">
										<table class="cart-table new-font">
											<thead class="cart-header">
												<tr>
													<th class="prod-column">상품이름</th>
													<th>&nbsp;</th>
													<th class="price">금액</th>
													<th>수량</th>
													<th>총금액</th>
												</tr>
											</thead>
	
											<tbody>
												<tr>
													<td colspan="2" id="pay_first_td">
														${pj.fd_title}
													</td>
													<td class="price"><span>${pj.fd_price}</span>원</td>
													<td class="qty"><input class="quantity-spinner"
														type="text" value="1" id="cnt-pay"></td>
													<td class="sub-total"><span>${pj.fd_price}</span>원</td>
												</tr>
											</tbody>
										</table>
									</div>
	
									<div class="coupon-outer">
										<div class="content-box clearfix">
											<div class="apply-coupon clearfix donate-form pay-form">
												<form action="paySave.do" method="post" id="pay-save">
													<span>받는 사람</span><br />
													<div>
														<span>이름</span><br /> <input type="text" name="pay_pn_name" value="${sessionScope.user.user_name}" required>
													</div>
													<div>
														<span>연락처</span><br /> <input type="text" name="pay_pn_phone" value="${sessionScope.user.user_phone}"  id="pay_pn_phone" required>
														<span id="phone_message"></span>
													</div>
													<span>배송지</span><br />
													<div>
													<!-- api 가능하다면 ㄱㄱ -->
														<span>주소</span><br /> <input type="text" name="addr1" id="addr" required>
													</div>
													<div>
														<span>상세주소</span><br /> <input type="text" name="addr2" required>
													</div>
													<input type="hidden" name="fd_no" value="${pj.fd_no}">
													<input type="hidden" name="fd_title" value="${pj.fd_title}">
													<input type="hidden" name="fd_hostname" value="${pj.fd_hostname}">
													<input type="hidden" name="fd_price" value="${pj.fd_price}">
													<input type="hidden" name="pay_count" value="1">
													<input type="hidden" value="${sessionScope.user_email}" id="user_email">
											</form>
											</div>
										 	<button class="theme-btn btn-style-one cart-btn pay-btn" >
												<span class="btn-title new-btn-title" onclick="requestPay()">펀딩하기</span>
											</button>
											
										</div>
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
	<script src="resources/js/jquery.bootstrap-touchspin.js"></script>
	<script src="resources/js/jquery.fancybox.js"></script>
	<script src="resources/js/owl.js"></script>
	<script src="resources/js/appear.js"></script>
	<script src="resources/js/wow.js"></script>
	<script src="resources/js/lazyload.js"></script>
	<script src="resources/js/scrollbar.js"></script>
	<script src="resources/js/script.js"></script>
	<!-- 주소 API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="resources/js/funding.js"></script>
	<script src="resources/js/validation.js"></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script type="text/javascript">
		// 결제페이지
		var hp_reslt = false;
		var message = "";
		$('#pay_pn_phone').blur(
			function() {
				// 전화번호 검사
				var regNumber = /^[0-9]*$/;
				var temp = $('#pay_pn_phone').val();
	
				if (!regNumber.test(temp) || temp.length != 11) {
					message = "정상적인 전화번호가 아닙니다."
					$('#phone_message').css("color", "red");
				}else {
					message = ""
					hp_reslt = true;
				}
				$('#phone_message').text(message);
				return hp_reslt;
			}
		)	
		
		IMP.init('imp28267552'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		var msg;
		
		function requestPay() {
			if(hp_reslt == true){
			 	// 카카오 페이 결제
				IMP.request_pay({
					pg : "kakaopay",
					pay_method : 'card',
					merchant_uid : 'merchant_' + new Date().getTime(),
					name : $('input[name=fd_title]').val(),
					amount :$('.sub-total').children('span').text(),
					buyer_email : $('#user_email').text(),
					buyer_name : $('input[name=pay_pn_name]').val(),
					buyer_tel : $('input[name=pay_pn_phone]').val()
				//  m_redirect_url : 'donate.do'
				}, function(rsp) {
					if (rsp.success) {
						//성공시 이동할 페이지
						alert("결제에 성공하셨습니다.");
						$('#pay-save').submit();
					} else {
						msg = '결제에 실패하였습니다.';
						msg += '에러내용 : ' + rsp.error_msg;
						alert(msg);
					}
				}); // request_pay 종료
			}else {
				alert("잘못된 입력이 있습니다. 수정 후 다시 등록해주세요.");
			} // if문 종료
			
		}; // payment() 함수 종료
	</script>

</body>
</html>