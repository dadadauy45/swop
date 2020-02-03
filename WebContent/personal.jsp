<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
<style>
.dection {
	text-dection: none;
	color: #333;
}
</style>
</head>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/personal_1.css">
<link rel="stylesheet" href="css/sinaFaceAndEffec.css">
<link rel="stylesheet" href="css/main.css">
<script src="js/jquery-1.11.2.js"></script>
<script type="text/javascript" src="js/sinaFaceAndEffec.js"></script>
<script src="js/sanFaceAndEffec.js"></script>
<script type="text/javascript">
	function delProduct(pid) {
		var isDel = confirm("您确认要删除吗？");
		if (isDel) {
			//要删除
			location.href = "${pageContext.request.contextPath}/delProduct?pid="
					+ pid;
		}
	}

	//post异步加载出租商品
	$
			.post(
					"${pageContext.request.contextPath}/rent",
					//	{"name":"李四","age":25}, //没有请求参数
					function(data) { //执行成功后的回调函数
						var content = "";
						for (var i = 0; i < data.length; i++) {
							content += "<li><a href='${pageContext.request.contextPath}/funsort?fun_sort="
									+ data[i].fun_id
									+ "'>"
									+ data[i].fun_name
									+ "</a></li>";
						}

						$("#fun_sort").append(content);
					}, "json");
</script>
<body>
	<div class="min-top">
		<div class="min_center">
			<div class="right">
				<span>您好${user.uname }，欢迎来到SWOP！</span> <a href="default.jsp">返回首页</a>
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
						<a href="${pageContext.request.contextPath }/modified.jsp">修改资料</a>
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
				<li class="bgc">我的换品</li>
				<li>我的租品</li>
				<li>我的卖品</li>
				<li>我的捐赠</li>
				<li>我的寄养</li>
				<li><a href="${pageContext.request.contextPath }/myWuliu">我的物流</a></li>
				<li><a href="${pageContext.request.contextPath }/jifen.jsp">我的积分</a></li>
				<li><a href="${pageContext.request.contextPath }/record">交易记录</a></li>

			</ul>
		</div>
		<div class="exright show_exright">
			<div class="right-title">
				<span>换品列表</span>(<span>${fn:length(productList) }</span>) <a
					href="${pageContext.request.contextPath }/findCategoryList">去发布</a>
			</div>
			<div class="scroll">
				<div class="content-box">
					<c:forEach items="${productList }" var="pro">
						<div class="right-content">
							<div class="left">
								<img src="${pro.pimage}" alt="">
							</div>
							<div class="midd">
								<p>
									<span>换品：</span><span>${pro.pname }</span>
								</p>
								<p>
									<span>想换：</span><span>${pro.want }</span>
								</p>
								<p>
									<span>发于：</span><span>${pro.pdate }</span>
								</p>
								<p>
									<span class="intro_span">${pro.desc }</span>
								</p>
							</div>
							<div class="last">
								<a
									href="${pageContext.request.contextPath }/findProduct?pid=${pro.pid}">去瞅瞅</a>
								<a href="${pageContext.request.contextPath }/">修改</a> <a
									class="delet-3" href="javascript:void(0);"
									onclick="delProduct('${pro.pid}')">删除</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="exright">
			<div class="right-title">
				<span>租品列表</span>(<span>${fn:length(rentList) }</span>) <a
					href="${pageContext.request.contextPath }/findCategoryList">去发布</a>
			</div>
			<div class="scroll">
				<c:forEach items="${rentList }" var="rent">
					<div class="content-box">
						<div class="right-content">
							<div class="left">
								<img src="${rent.pimage }" alt="">
							</div>
							<div class="midd">
								<p>
									<span>租品：</span><span>${rent.pname }</span>
								</p>
								<p>
									<span>租价：</span>￥<span>${rent.price }/次</span>
								</p>
								<p>
									<span>发于：</span><span>${rent.pdate }</span>
								</p>
								<p>
									<span class="intro_span">${pro.desc }</span>
								</p>
							</div>
							<div class="last">
								<a
									href="${pageContext.request.contextPath }/findProduct?pid=${rent.pid}">去瞅瞅</a>
								<a href="#">修改</a> <a class="delet-4" href="javascript:void(0);"
									onclick="delProduct('${rent.pid}')">删除</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="exright">
			<div class="right-title">
				<span>卖品列表</span>(<span>${fn:length(sellList) }</span>) <a
					href="${pageContext.request.contextPath }/findCategoryList">去发布</a>
			</div>
			<div class="scroll">
				<c:forEach items="${sellList }" var="sell">
					<div class="content-box">
						<div class="right-content">
							<div class="left">
								<img src="${sell.pimage }" alt="">
							</div>
							<div class="midd">
								<p>
									<span>卖品：</span><span>${sell.pname }</span>
								</p>
								<p>
									<span>价格：</span>￥<span>${sell.price }</span>
								</p>
								<p>
									<span>发于：</span><span>${sell.pdate }</span>
								</p>
								<p>
									<span class="intro_span">${sell.desc }</span>
								</p>
							</div>
							<div class="last">
								<a
									href="${pageContext.request.contextPath }/findProduct?pid=${sell.pid}">去瞅瞅</a>
								<a href="#">修改</a> <a class="delet-5" href="javascript:void(0);"
									onclick="delProduct('${sell.pid}')">删除</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="exright">
			<div class="right-title">
				<span>赠物列表</span>(<span>${fn:length(danateList) }</span>) <a
					href="${pageContext.request.contextPath }/findCategoryList">去发布</a>
			</div>
			<div class="scroll">
				<div class="content-box">
					<c:forEach items="${danateList }" var="donate">
						<div class="right-content">
							<div class="left">
								<img src="${donate.pimage }" alt="">
							</div>
							<div class="midd">
								<p>
									<span>赠物：</span><span>${donate.pname }</span>
								</p>
								<p>
									<span>状态：</span><span>捐赠中</span>
								</p>
								<p>
									<span>领客：</span><span>沐沐</span>
								</p>
								<p>
									<span>发于：</span><span>${donate.pdate }</span>
								</p>
								<p>
									<span class="intro_span_small"></span>
								</p>
							</div>
							<div class="last">
								<a
									href="${pageContext.request.contextPath }/findProduct?pid=${donate.pid}">去瞅瞅</a>
								<a href="#">修改</a> <a class="delet-6" href="javascript:void(0);"
									onclick="delProduct('${donate.pid}')">删除</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="exright">
			<div class="right-title">
				<span>寄养列表</span>(<span>${fn:length(danateList) }</span>) <a
					href="${pageContext.request.contextPath }/findCategoryList">去发布</a>
			</div>
			<div class="scroll">
				<c:forEach items="${boardList }" var="board">
					<div class="content-box">
						<div class="right-content">
							<div class="left">
								<img src="${board.pimage }" alt="">
							</div>
							<div class="midd">
								<p>
									<span>小宠：</span><span>${board.pname }</span>
								</p>
								<p>
									<span>状态：</span><span>寻找中</span>
								</p>
								<p>
									<span>领于：</span><span>${board.pdate }</span>
								</p>
								<p>
									<span class="intro_span_small">${board.desc }</span>
								</p>
							</div>
							<div class="last">
								<a href="${pageContext.request.contextPath }/findProduct?pid=${board.pid}">去瞅瞅</a>
								<a href="#">修改</a> 
								<a class="delet-7" href="javascript:void(0);" onclick="delProduct('${board.pid}')">删除</a>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
		</div>
	<footer class="footer">
		<p class="clearfix">©2018 SWOP网易 SWOP.com 京ICP证070791号
			京公网安备11010502025545号 电子公告服务规则</p>
	</footer>
</body>
<script src="js/personal_1.js"></script>

</html>