<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Responsive -->
<title>Admin Mohe</title>
<!-- AOS CSS파일 -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="../resources/css_ad/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../resources/css_ad/font-awesome/css/font-awesome.min.css"rel="stylesheet">
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
						<a href="adminList.do">관리자 목록</a>
					</div>
					<hr>
					<div class="content_table_div">
						<!--form 구간 시작-->
						<div class="col-md-12">
							<div>
								<h3>관리자 계정 만들기</h3>
								<hr>
								<form id="form_eamil_signUp" action="adminInsert.do" method="post">
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
																	<div class="row clearfix">
																		<div class="form-group col-lg-12 col-md-12 col-sm-12">
																			<div class="field-label">성함</div>
																			<input type="text" name="adm_name" id="adm_name"
																				value="${admin.adm_name}" maxlength="30" required>
																		</div>
																		<div class="form-group">
																			<div class="field-label" style="width:433px">아이디</div>
																			<input type="text" value="${admin.adm_id}" id="adm_id"
																				 maxlength="30" name="adm_id" onkeyup="onkeyupEmail()" required>
																			<div class="input-group-append" style="position:absolute;top:40px;left:350px">
																				<button id="btn-email-check" class="btn btn-outline-secondary" type="button" onclick="btnEmailCheck()">중복확인</button>
																			</div>
																		</div>
																		<div class="form-group col-lg-12 col-md-12 col-sm-12">
																			<div class="field-label">비밀번호</div>
																			<input type="password" id="adm_pass" name="adm_pass" maxlength="30"
																				value="${admin.adm_pass}" required>
																		</div>
																		<div class="form-group col-lg-6 col-md-6 col-sm-6">
																			<div class="field-label">부서</div>
																			<select name="adm_dept" required>
																				<option value="editor" selected>editor</option>
																				<option value="master">master</option>
																			</select>
																		</div>
																		<div
																			class="form-group col-lg-6 col-md-6 col-sm-6 form_phone">
																			<div class="field-label">연락처</div>
																			<input type="text" id="adm_phone" name="adm_phone"
																				value="${admin.adm_phone}" id="adm_phone" maxlength="13"required>
																		</div>
																		<div
																			class="form-group col-lg-12 col-md-12 col-sm-12 form_phone">
																			<div class="field-label">주소</div>
																			<input type="text" id="adm_adress" name="adm_adress"
																				value="${admin.adm_adress}" required>
																		</div>
																		<div>
																			<button type="button" onclick="check()" class="theme-btn btn-style-one"
																				id="update_btn">
																				<span class="btn-title btn_fix">관리자 추가하기</span>
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
	<script src="../resources/js_ad/adminScript.js"></script>
	<script type="text/javascript">	
		let emailCheck = false;
	
		function btnEmailCheck() {
			var adm_id = $('#adm_id');
 			var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			
			if (adm_id.val() === "") {
				alert("이메일을 입력해 주세요.");
				adm_id.focus();
				return;
			}
			
 			if (adm_id.val().match(regExp) != null) {
				// 타입이 맞으면
			var data = {'adm_id' : adm_id.val()}
			
			$.ajax({
				type: 'post',
				url : 'idCheck.do',
				data: data,
				async: true, // sumbit이 진행이 안되도록 하는 옵션(비동기 통신)
				contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 인코딩에 문제가 발생할까봐 추가하는 코드
				success: function(result){
					if (result === '사용 가능한 이메일입니다.') {
						emailCheck = true;
						document.getElementById("btn-email-check").innerText= "✓";
						document.getElementById("btn-email-check").style.left="50px";
					} else {
						alert('중복된 이메일입니다.');
						document.getElementById("btn-email-check").innerText= "중복확인";
						emailCheck = false;
					}
				},
				error:function(){  
		            alert('error');
				}
			})
				return;
			} else {
				alert("정상적인 이메일 형식이 아닙니다.");
			}
			
		}
		
		function onkeyupEmail() {
			document.getElementById("btn-email-check").innerText= "중복확인";
			emailCheck = false;
		}
	
		function check() {
			var adm_id = $('#adm_id');
			
			if (!emailCheck) {
				alert("이메일 중복 확인을 해주세요.");
				adm_id.focus();
				return;
			}
			
			var adm_pass = $('#adm_pass');
			if (adm_pass.val().length < 4) {
				alert("비밀번호를 4자리 이상 입력해 주세요.");
				adm_pass.focus();
				return;
			}
			
			var adm_name = $('#adm_name');
			if (adm_name.val() === "") {
				alert("이름을 입력해 주세요.");
				adm_name.focus();
				return;
			}
			
			var adm_phone = $('#adm_phone');
 			var regNumber = /^[0-9]*$/;
			if (!regNumber.test(adm_phone.val())|| adm_phone.val().length != 11) {
				alert("정상적인 전화번호가 아닙니다.");
				adm_phone.focus();
				return;
			}
			
			document.getElementById('form_eamil_signUp').submit();				
		}

	</script>
</body>
</html>
