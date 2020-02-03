<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>修改个人资料</title>
</head>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/modified.css">
<script src="js/jquery-1.11.2.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>

<body>
	<div class="min-top">
		<div class="min_center">
			<div class="right">
				<span>您好${user.uname }，欢迎来到SWOP！</span> <span>个人资料</span>
			</div>
		</div>
	</div>
	<div class="top_box min_center">
		<div class="bg_box">
			<div class="bottom_box">
				<div class="box_img">
					<img src="images/head_1.jpg" alt="">
				</div>
				<div class="right_box">
					<div class="first-div">
						<h3>${user.uname }</h3>
					</div>
					<div class="second-div">
						<span>地区：</span><span>${user.address }</span>
					</div>
					<div class="third-div">这家伙有点懒，还没写个性签名</div>
				</div>
			</div>
		</div>

	</div>
	<div class="mainbottom_box min_center">
		<div class="exleft">
			<ul>
				<li><a
					href="${pageContext.request.contextPath }/personalProduct">返回个人中心</a></li>
				<li class="bgc">基本资料</li>
				<li>修改头像</li>
				<li>修改密码</li>
			</ul>
		</div>
		<div class="exright show_exright">
			<div style="color: red;">
				<c:if test="${errorInfo==null }"></c:if>
				<c:if test="${errorInfo!=null }">${errorInfo }</c:if>
			</div>

			<form action="${pageContext.request.contextPath }/editUser" method="post">
				<input type="hidden" name="uid" value="${user.uid }">
				<div class="username comment">
					<span class="first_span">用户名：</span>
					<input type="text" name="uname" value="${user.uname }" class="username_inp">
					<span class="bitian"> *</span><span class="user_span"></span>
				</div>
				<div class="E_mail comment">
					<span class="first_span">E-mail邮箱</span>
					<input type="text" name="email" value="${user.email }" class="mail_inp">
					<span class="bitian"> *</span><span class="mail_span"></span>
				</div>

				<div class="QQ comment">
					<span class="first_span">联系QQ：</span>
					<input type="text" name="QQ" value="${user.QQ }" class="QQ_inp">
					<span class="bitian">*</span>
					<span class="qq_span">QQ和电话为选填，必填其中一项</span>
				</div>
				<div class="phone comment">
					<span class="first_span">手机号码：</span>
					<input type="text" name="telephone" value="${user.telephone }" class="phone_inp">
					<span class="bitian">*</span><span class="phone_span"></span>
				</div>
				<div class="xx_add comment">
					<span class="first_span">详细地址：</span>
					<input class="xx" type="text" name="address" value="${user.address }">
					<span class="xx_span"></span><span class="bitian">*</span>
				</div>
				<div class="modified comment">
					<input type="submit" value="修改并保存">
				</div>
			</form>

		</div>
		<div class="exright ">
			<form action="">
				<div class="head comment">
					<span class="col"></span><span class="row"></span> <input
						type="file" multiple="multiple" accept="image/*" class="image-one">
				</div>
				<div class="big_img"></div>
				<div class="modified comment">
					<input class="btn3" type="submit" value="保存">
				</div>
			</form>
		</div>
		<div class="exright ">
			<form action="">
				<div class="password comment">
					<span class="first_span">初始密码：</span><input type="password"
						class="password_inp"><span class="bitian">*</span><span
						class="password_span"></span>
				</div>
				<div class="against comment">
					<span class="first_span">确认密码：</span><input type="password"
						class="against_inp"><span class="bitian"> *</span><span
						class="against_span">重新填写一次密码，必须和上面的初始密码一致</span>
				</div>
				<div class="modified comment">
					<input class="btn2" type="submit" value="修改并保存">
				</div>
			</form>
		</div>
	</div>
</body>
<script src="js/modified.js"></script>
</html>