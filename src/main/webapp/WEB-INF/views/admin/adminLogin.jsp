<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	div{
		width:500px;
		height:300px;
		margin:100px auto;
		padding-top:100px;
		text-align: center;
		border-radius:30px;
	}
</style>
</head>
<script>
	<%if(request.getParameter("result") != null){%>
		// 로그인에 실패하면
		alert("로그인에 실패하셨습니다");
	<%}%>
</script>
<body>
	<div>
	<form name="adminLogin" action="getAdminLogin.do" method="post">
		<input type="text" name="adm_id" value="" placeholder="ID"/><br><br>
		<input type="password" name="adm_pass" value="" placeholder="Password"/><br><br>
		<input type="submit" value="로그인하기">
	</form>
	</div>
</body>
</html>