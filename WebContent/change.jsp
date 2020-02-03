<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>change</title>
</head>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/change.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<body>
	<div class="top">
	<div class="center">
		<ul class="top-left">
			<c:if test="${empty user }">
				<li><a class="login"
					href="${pageContext.request.contextPath }/login.jsp">立即登录</a></li>
				<li><a class="register"
					href="${pageContext.request.contextPath }/register.jsp">立即注册</a></li>
			</c:if>
			<c:if test="${!empty user }">
				<li><a class="login"
					href="${pageContext.request.contextPath }/personalProduct">${user.uname }您好！</a></li>
				<li><a class="register"
					href="${pageContext.request.contextPath }/quit">退出</a></li>
			</c:if>
			
			<li><a class="register" href="${pageContext.request.contextPath }/default.jsp">首页</a></li>
		</ul>
		<ul class="top-right">
			<li><a href="${pageContext.request.contextPath }/personalProduct">我的SWOP</a></li>
			<li><a href="#">手机APP</a></li>
			<li><a href="#">商家中心</a></li>
			<li><a href="#">网站导航</a></li>
		</ul>
	</div>
	</div>
	<nav class="nav ">
		<div class="center">
			<div class="logo">
				<img src="images/swop.jpg" alt="">
			</div>
			<div class="main clearfix">
				<div class="search-box">
					<form class="search-input"
						action="${pageContext.request.contextPath }/searchProduct"
						method="post">
						<input class="inp" name="search" type="text" placeholder="交换或租借">
						<button class="btn" type="submit"></button>
					</form>
					<div class="hide_box"></div>
					<span class="first"><a href="#">服装租借</a></span> <span><a
						href="#">宠物托管</a></span> <span><a href="#">《大秦帝国》</a></span> <span><a
						href="#">数码相机</a></span> <span><a href="#">旱冰鞋</a></span>
				</div>
			</div>
		</div>
	</nav>
	<div class="center">
		<div class="big-sort">
			<div class="box-top">
				<div class="box-left">
					<h3>功能分类</h3>
				</div>
				<div class="box-right" id="function">
					<ul>
						<li><a href="#" class="active">不限</a></li>
						<c:forEach items="${goodsList }" var="good">
							<li><a href="${pageContext.request.contextPath}/funsort?fun_sort=${good.goods_id}">${good.goods_name }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="box-top big-box">
				<div class="box-left">
					<h3>物品分类</h3>
				</div>
				<div class="box-right big" id="goods">
					<ul>
						<li><a href="#" class="active">不限</a></li>
						<c:forEach items="${categoryList }" var="cate">
							<li><a href="${pageContext.request.contextPath}/sort?cid=${cate.cid}">${cate.cname }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="box-top">
				<div class="box-left">
					<h3>新旧程度</h3>
				</div>
				<div class="box-right" id="degree">
					<ul>
						<li><a href="#" class="active">不限</a></li>	
						<c:forEach items="${newLevelList }" var="level">
							<li><a href="#">${level.level_name }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="box-add">
				<div class="box-add-left">
					<h3>所在地区</h3>
				</div>
				<div class="box-add-right">
					<ul>
						<li><a class="active" href="#">不限</a></li>
						<li><a href="#">安徽</a></li>
						<li><a href="#">北京</a></li>
						<li><a href="#">重庆</a></li>
						<li><a href="#">福建</a></li>
						<li><a href="#">甘肃</a></li>
						<li><a href="#">广东</a></li>
						<li><a href="#">广西</a></li>
						<li><a href="#">贵州</a></li>
						<li><a href="#">海南</a></li>
						<li><a href="#">河北</a></li>
						<li><a href="#">黑龙江</a></li>
						<li><a href="#">河南</a></li>
						<li><a href="#">湖北</a></li>
						<li><a href="#">内蒙古</a></li>
						<li><a href="#">江苏</a></li>
						<li><a href="#">江西</a></li>
						<li><a href="#">吉林</a></li>
						<li><a href="#">辽宁</a></li>
						<li><a href="#">宁夏</a></li>
						<li><a href="#">青海</a></li>
						<li><a href="#">山西</a></li>
						<li><a href="#">山东</a></li>
						<li><a href="#">上海</a></li>
						<li><a href="#">四川</a></li>
						<li><a href="#">天津</a></li>
						<li><a href="#">西藏</a></li>
						<li><a href="#">新疆</a></li>
						<li><a href="#">云南</a></li>
						<li><a href="#">浙江</a></li>
						<li><a href="#">陕西</a></li>
						<li><a href="#">台湾</a></li>
						<li><a href="#">香港</a></li>
						<li><a href="#">澳门</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="jiti_goods_box">
			<div id="juti_goods">
				<div class="box">
					<c:forEach items="${productList }" var="pro">
						<div class="pic">
							<a
								href="${pageContext.request.contextPath }/productInfo?pid=${pro.pid }">
								<img src='${pro.pimage}'>
								<div class="first">
									<h3>换客：</h3>
									<span class="name">${user.uname }</span>
								</div>
								<div class="juti">
									<p>
										<span>换品：</span><span>${pro.pname }</span>
									</p>
									<p>
										<span>意向换：</span><span>${pro.want }</span>
									</p>
									<p>
										<span>类别：</span><span>${pro.category.cname }</span>
									</p>
									<p>
										<span>更新： </span><span>${pro.pdate }</span>
									</p>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	

	<script src="js/change.js"></script>
</body>
</html>