<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>register</title>
</head>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/register.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">

	/* 重置 */
	function reset() {
	 	document.getElementById(uname).value = "";
	 	document.getElementById(upassword).value = "";
	 	document.getElementById(against_inp).value = "";
	 	document.getElementById(email).value = "";
	 	document.getElementById(sex).value = "";
	 	document.getElementById(QQ).value = "";
	 	document.getElementById(telephone).value = "";
	 	document.getElementById(yaoqing).value = "";
	 	document.getElementById(yanzhneg).value = "";
	 	document.getElementById(address).value = "";
	}
	
	
	function changeImg(obj){
		obj.src="${pageContext.request.contextPath }/checkImg?time="+new Date().getTime();		
	}
	
</script>

<body>
	<div class="min-top">
		<div class="min_center">
			<div class="right">
				<span>您好，欢迎来到SOWP！</span>
			</div>
			<div class="left">
				<a class="index" href="${pageContext.request.contextPath }/default.jsp">返回首页</a>
				<a class="register" href="${pageContext.request.contextPath }/login.jsp">立即登录</a>
			</div>
		</div>
	</div>
	<div class="bg">
		<main class="main">
		<div class="main-top">
			用户注册
		</div>
		<div class="main-bottom">
			<form action="${pageContext.request.contextPath }/register" method="post">
				<div class="username comment">
					<span class="first_span">用户名：</span><input type="text" name="uname" id="uname" class="username_inp"><span class="bitian"> (*必填)</span><span class="username_span">用户名不能超过10个字符或者小于2个字符</span>
				</div>
				<div class="password comment">
					<span class="first_span">登录密码：</span><input type="password" name="upassword" id="upassword" class="password_inp"><span  class="bitian">(*必填)</span><span class="password_span">密码只能为数字、字母或者数字和字母组合</span>
				</div>
				<div class="against comment">
					<span class="first_span">确认密码：</span><input type="password" id="against_inp" class="against_inp"><span  class="bitian"> (*必填)</span><span class="against_span">重新填写一次密码，必须和上面的登陆密码一致</span>
				</div>
				<div class="E_mail comment">
					<span class="first_span">E-mail邮箱</span><input type="text" name="email" id="email" class="mail_inp"><span  class="bitian"> (*必填 验证邮箱时必用)</span><span class="mail_span"></span>
				</div>
				<div class="sex comment">
					<span class="first_span">我的性别：</span><input type="text" name="sex" id="sex" class="sex_inp"><span  class="bitian">(*必填 '女'  '男')</span><span class="sex_span"></span>
				</div>
				<div class="QQ comment">
					<span class="first_span">联系QQ：</span><input type="text" name="QQ" id="QQ" class="QQ_inp"><span class="qq_span">QQ和电话为选填，必填其中一项 为了方便交换你的物品,请填写QQ或者电话方便联系!</span>
				</div>
				<div class="phone comment">
					<span class="first_span">手机号码：</span><input type="text" name="telephone" id="telephone" class="phone_inp"><span  class="phone_span"></span>
				</div>
				<div class="invite comment">
					<span class="first_span">详细地址：</span><input id="address" name="address" type="text"><span></span>
				</div>
				<div class="yanzheng comment">
					<span class="first_span">验证码：</span><input type="text" id="yanzhneg" class="code">
					<img src="${pageContext.request.contextPath }/checkImg" onclick="changeImg(this)">
				</div>
				<div class="registered comment">
					<button class="btn1" type="submit">注&nbsp;&nbsp;&nbsp;册</button>
					<button class="btn2" type="reset" onclick="reset();">重置</button>
				</div>
			</form>
		</div>
	</main>
	</div>

	
	<footer>
		<p class="clearfix">©2018 SWOP网易 Swop.com 京ICP证070791号 京公网安备11010502025545号 电子公告服务规则</p>
	</footer>
	<script src="js/register.js"></script>
</body>
</html>