<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<script>
	<%if(request.getParameter("result") != null){%>
		// 로그인에 실패하면
		alert("로그인에 실패하셨습니다");
	<%}%>
</script>
<body>
	<form name="adminLogin" action="getAdminLogin.do" method="post">
		<input type="text" name="adm_id" value="" placeholder="ID"/>
		<input type="password" name="adm_pass" value="" placeholder="Password"/>
		<input type="submit" value="로그인하기">
	</form>
</body>
</html>