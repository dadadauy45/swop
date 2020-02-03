<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>login</title>
</head>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/logon.css">
<body>
	<div class="min-top">
		<div class="min_center">
			<div class="right">
				<span>您好，欢迎来到SWOP！</span>
			</div>
			<div class="left">
				<a class="index" href="${pageContext.request.contextPath }/default.jsp">返回首页</a>
				<a class="register" href="${pageContext.request.contextPath }/register.jsp">免费注册</a>
			</div>
		</div>
	</div>

	<div class="logon_box min_center">
		<div class="logon_box_top">
			<h3>用户登录</h3>
		</div>
		<div class="logon_box_bottom">
			<div class="logon_box_bottom_left">
				<img src="images/suo.png" alt="">
			</div>
			<div class="logon_box_bottom_midd">
				<ul>
					<li class="jifen">
						<p>加入会员，轻松赚取积分</p>
						<p>无限会员易物推广，还犹豫什么，赶快加入吧</p>
					</li>
					<li class="change">
						<p>交换信息任你选择</p>
						<p>支持在线交换联系，同城交换，发布物品买卖交易</p>
					</li>
					<li class="safety">
						<p>信息发布完全免费</p>
						<p>发布交换信息完全免费，让你省钱省心</p>
					</li>
				</ul>
			</div>
			<div class="logon_box_bottom_right">
				<div class="logon_box_bottom_right_box">
					<div class="logon_box_bottom_right_top">
						<span>SWOP用户登录</span>
					</div>
					<div class="logon_box_bottom_right_bottom">
						<form action="${pageContext.request.contextPath }/login" method="post">
							<div class="username">
								<span>用户名：</span><input type="text" name="uname" placeholder="请输入用户名">
							</div>
							<div class="userpasswork">
								<span>密&nbsp;&nbsp;码：</span><input type="password" name="upassword" placeholder="请输入密码">
							</div>
							<span style="color:red;padding-left:120px;">${loginInfo }</span>
							<div class="btn">
								<a href="#">忘记密码？</a> <button type="submit" name="">登&nbsp;&nbsp;&nbsp;录</button>
							</div>
							<div class="agree">
								<input type="checkbox">
								<a class="xieyi" href="#">阅读并同意Swop用户协议</a><a href="${pageContext.request.contextPath }/register.jsp">[免费注册]</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer">
		<ul>
			<li><a href="#">会员注册</a></li>
			<li><a href="#">易物保障</a></li>
			<li><a href="#">密码找回</a></li>
			<li><a href="#">联系我们</a></li>
		</ul> 
		<p class="clearfix">©2018 SWOP网易 SWOP.com 京ICP证070791号 京公网安备11010502025545号 电子公告服务规则</p>
	</footer>
	<script src="js/logon.js"></script>
</body>
</html>