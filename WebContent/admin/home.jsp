<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录页面</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/welcome.css">
<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<script type="text/javascript">
	function Cancle(){
		document.getElementById(adminName).value = "";
		document.getElementById(adminPassword).value = "";
	}
</script>

<!-- 网站后台登录页面 -->
<body>
	<div class="bigger_box">
		<div class="title">SWOP后台网站登录</div>
		<div class="box">
			<form action="${pageContext.request.contextPath }/adminLogin" method="post">
				<div class="inp_box">
					<span>username：</span><input type="text" name="adminName" id="adminName" class="username">
				</div>
				<div class="inp_box">
					<span>password：</span><input type="password" name="adminPassword" id="adminPassword" class="password">
				</div>
				<div class="inp_box">
					<input type="submit" class="login" value="login">
					<button class="cancel" type="reset" onclick="Cancle();">cancle</button>
				</div>
			</form>
		</div>
	</div>	
</body>
</html>