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
<script>
	<%if(request.getParameter("result") != null){%>
		// 로그인에 실패하면
		alert("로그인에 실패하셨습니다");
	<%}%>
</script>
<body>
    <div class="login-card-container">
        <div class="login-card">
            <div class="login-card-logo">
                <img src="../resources/images/mohe_logo/logo_hart.png" alt="logo">
            </div>
            <div class="login-card-header">
                <h1>모해 관리자 페이지</h1>
                <div>Mohe admin Page</div>
            </div>
            <form class="login-card-form" action="getAdminLogin.do" method="post">
                <div class="form-item">
                    <span class="form-item-icon material-symbols-rounded">mail</span>
                    <input type="text" name="adm_id" placeholder="Enter Email" required autofocus>
                </div>
                <div class="form-item">
                    <div class="form-item-icon material-symbols-rounded">lock</div>
                    <input type="password" name="adm_pass" placeholder="Enter Passworld" required> 
                </div>
                <div class="form-item-other">
                    <a href="adminLoss.do">비밀번호를 잊으셨나요 ?</a>
                </div>
                <button type="submit">Sign in</button>
            </form>
        </div>
    </div>
    
	<!-- jQuery -->
	<script src="../resources/js_ad/jquery.min.js"></script>
	<script src="../resources/js_ad/adminScript.js"></script>
</body>
</html>