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
                    <div class="checkbox">
                        <input type="checkbox" id="rememberMeCheckbox">
                        <label for="rememberMeCheckbox">아이디 기억하기</label>
                    </div>
                    <a href="#">비밀번호를 잊으셨나요 ?</a>
                </div>
                <button type="submit">Sign in</button>
            </form>
            <div class="login-card-footer">
                Don't have an account? <a href="#">Create a free account</a>
            </div>
        </div>
        <div class="login-card-social">
            <div>Other Sign-in Plateform</div>
            <div class="login-card-social-btn">
                <a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-facebook" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                        <path d="M7 10v4h3v7h4v-7h3l1 -4h-4v-2a1 1 0 0 1 1 -1h3v-4h-3a5 5 0 0 0 -5 5v2h-3"></path>
                     </svg>
                </a>
                <a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-google" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                        <path d="M17.788 5.108a9 9 0 1 0 3.212 6.892h-8"></path>
                     </svg>
                </a>
            </div>
        </div>
    </div>
</body>
</html>