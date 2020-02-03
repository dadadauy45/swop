<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>top</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/content.css">
<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<!-- <script src="js/content.js"></script> -->
<script src="${pageContext.request.contextPath }/js/top.js"></script>
<body>
	<div class="top">
		<div class="logo_box">
			<img src="${pageContext.request.contextPath }/images/adminswop.png" alt="">
		</div>
		<div class="midd">SWOP&nbsp;&nbsp;后&nbsp;台&nbsp;管&nbsp;理</div>
		<div class="right">
			<div class="name_box">
				<span class="name_span">当前用户：</span><span class="name">${adminUser.adminName }</span>
			</div>
			<a class="btn" href="${pageContext.request.contextPath }/adminOut">退出</a>
		</div>
	</div>
</body>
</html>