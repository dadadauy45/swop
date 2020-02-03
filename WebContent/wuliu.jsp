<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的物流</title>
</head>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/personal_1.css">
<script src="js/jquery-1.11.2.js"></script>
<script src="js/record.js"></script>
<script type="text/javascript" src="js/wuliu.js"></script>
<body>
	<div class="min-top">
		<div class="min_center">
			<div class="right">
				<span>您好，欢迎来到SWOP！</span> <span>物流中心</span>
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
				<li><a href="personalProduct">返回个人中心</a></li>
				<li class="bgc">待发货</li>
				<li>待收货</li>
			</ul>
		</div>
		<div class="exright show_exright">
			<div class="right-title">
				<span>待发货</span>(<span>0</span>)
			</div>
			<div class="scroll">
				<div class="content-box">
					<div class="right-content">
						<div class="left">
							<img
								src="${pageContext.request.contextPath }/images/yusan_1.jpg"
								alt="">
						</div>
						<div class="midd">
							<p>
								<span>物品：</span><span>雨伞</span>
							</p>
							<p>
								<span>寄客：</span><span>沐沐</span>
							</p>
							<p>
								<span>时间：</span><span>2018-04-14</span>
							</p>
							<p>
								<span class="intro_span">很好的伞</span>
							</p>
						</div>
						<div class="last">
							<a href="#">去瞅瞅</a> <a href="#">取消订单</a> <span class="delet-1">删除</span>
						</div>
					</div>
					<c:forEach items="${wuliuProductList }" var="wuliu">
						<div class="right-content">
							<div class="left">
								<img src="${pageContext.request.contextPath }/${wuliu.pimage}"
									alt="">
							</div>
							<div class="midd">
								<p>
									<span>物品：</span><span>${wuliu.pname }</span>
								</p>
								<p>
									<span>寄客：</span><span>沐沐</span>
								</p>
								<p>
									<span>时间：</span><span>${wuliu.pdate }</span>
								</p>
								<p>
									<span class="intro_span">${wuliu.desc }</span>
								</p>
							</div>
							<div class="last">
								<a href="#">去瞅瞅</a> <a href="#">取消订单</a> <span class="delet-1">删除</span>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="exright">
			<div class="right-title">
				<span>待收货</span>(<span>0</span>)
			</div>
			<div class="scroll">
				<div class="content-box">
					<%-- <div class="right-content">
						<div class="left">
							<img
								src="${pageContext.request.contextPath }/images/yusan_1.jpg"
								alt="">
						</div>
						<div class="midd">
							<p>
								<span>物品：</span><span>雨伞</span>
							</p>
							<p>
								<span>寄客：</span><span>沐沐</span>
							</p>
							<p>
								<span>时间：</span><span>2018-04-14</span>
							</p>
							<p>
								<span class="intro_span">很好的伞</span>
							</p>
						</div>
						<div class="last">
							<a href="#">去瞅瞅</a> <a href="#">取消订单</a> <span class="delet-2">删除</span>
						</div>
					</div> --%>
				</div>
			</div>
			</div>
			</div>
				
	<footer class="footer">
		<p class="clearfix">©2018 SWOP网易 SWOP.com 京ICP证070791号京公网安备11010502025545号 电子公告服务规则</p>
	</footer>
</body>
</html>