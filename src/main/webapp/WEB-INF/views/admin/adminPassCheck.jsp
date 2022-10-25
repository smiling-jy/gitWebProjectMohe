<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="../resources/css_ad/loginCss.css">
    <link rel="stylesheet" href="../resources/css_ad/reset.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

</head>
<body>
    <div class="login-card-container">
        <div class="login-card">
            <div class="login-card-logo">
                <img src="../resources/images/mohe_logo/logo_hart.png" alt="logo">
            </div>
            <div class="login-card-header">
                <h1>비밀번호 찾기</h1>
                <div>아이디를 입력해 주세요.</div>
            </div>
            <form class="login-card-form" action="adminFindPass.do" method="post">
                <div class="form-item">
                    <span class="form-item-icon material-symbols-rounded">mail</span>
                    <input type="text" id="adm_id" name="adm_id" placeholder="Enter Email" required autofocus>
                </div>
                <button type="button" id="CheckMail">비밀번호 찾기</button>
                <button type="button" onclick="location.href='adminLogin.do'">로그인하러 가기</button>
            </form>
        </div>
    </div>
    
	<!-- jQuery -->
	<script src="../resources/js_ad/jquery.min.js"></script>
	<script src="../resources/js_ad/adminScript.js"></script>
	<script>
		$("#CheckMail").on("click", function(){
			var data = {'adm_id' : $('#adm_id').val()}
			$.ajax({
				type : 'post',
				url : 'adminFindPass.do',
				data : data,
				async : true,
				contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
				success : function(result) {
					if (result > 0) {
						alert("임시비밀 번호가 이메일로 발송 되었습니다.");
					} else {
						alert('임시비밀 번호 발급이 실패하였습니다, 존재하지 않는 아이디입니다.');
					}
				},
				error : function() {
					alert('error');
				}
			});
		});
	</script>
</body>
</html>