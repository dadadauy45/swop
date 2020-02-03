<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>交易记录</title>
</head>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/personal_1.css">
<script src="js/jquery-1.11.2.js"></script>
<script type="text/javascript">
	function delProduct(pid) {
		var isDel = confirm("您确认要删除吗？");
		if (isDel) {
			//要删除
			location.href = "${pageContext.request.contextPath}/delProduct?pid="
					+ pid;
		}
	}
</script>
<body>
	<div class="min-top">
		<div class="min_center">
			<div class="right">
				<span>您好，欢迎来到SWOP！</span> <span>交易记录</span>
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
				<li class="bgc">换品记录</li>
				<li>租借记录</li>
				<li>买品记录</li>
				<li>领赠记录</li>
				<li>领养记录</li>
			</ul>
		</div>
		<div class="exright show_exright">
			<div class="right-title">
				<span>换品记录</span>(<span>${fn:length(changeRecode) }</span>)
			</div>
			<div class="scroll">
					<div class="content-box">
					<c:forEach items="${changeRecode }" var="change">
						<div class="right-content">
							<div class="left">
								<img src="${change.pimage }" alt="">
							</div>
							<div class="midd">
								<p>
									<span>换品：</span><span>${change.pname }</span>
								</p>
								<p>
									<span>换客：</span><span>沐沐</span>
								</p>
								<p>
									<span>换于：</span><span>${change.pdate }</span>
								</p>
								<p>
									<span class="intro_span">${change.desc }</span>
								</p>
							</div>
							<div class="last">
								<a
									href="${pageContext.request.contextPath }/findProduct?pid=${change.pid}">去瞅瞅</a>
								<a class="delet-1" href="javascript:void(0);"
									onclick="delProduct('${change.pid}')">删除</a>
							</div>
						</div>
						</c:forEach>
					</div>
				
			</div>
		</div>
		<div class="exright">
			<div class="right-title">
				<span>租借记录</span>(<span>${fn:length(rentRecode) }</span>)
			</div>
			<div class="scroll">
				<div class="content-box">
					<c:forEach items="${rentRecode }" var="rent">
						<div class="right-content">
							<div class="left">
								<img src="${rent.pimage }" alt="">
							</div>
							<div class="midd">
								<p>
									<span>借品：</span><span>${rent.pname }</span>
								</p>
								<p>
									<span>租客：</span><span>${user.uname }</span>
								</p>
								<p>
									<span>价格：</span><span>￥${rent.price }</span>
								</p>
								<p>
									<span>租于：</span><span>${rent.pdate }</span>
								</p>
								<p>
									<span class="intro_span">${rent.desc }</span>
								</p>
							</div>
							<div class="last">
								<a href="${pageContext.request.contextPath }/findProduct?pid=${rent.pid}">去瞅瞅</a>
								<a class="delet-2" href="javascript:void(0);" onclick="delProduct('${rent.pid}')">删除</a>
							</div>
						</div>
					</c:forEach>
				</div>
				
			</div>
		</div>
		<div class="exright">
			<div class="right-title">
				<span>买品记录</span>(<span>${fn:length(sellRecode) }</span>)
			</div>
			<div class="scroll">
				
					<div class="content-box">
					<c:forEach items="${sellRecode }" var="sell">
						<div class="right-content">
							<div class="left">
								<img src="${sell.pimage }" alt="">
							</div>
							<div class="midd">
								<p>
									<span>物品：</span><span>${sell.pname }</span>
								</p>
								<p>
									<span>卖客：</span><span>${user.uname }</span>
								</p>
								<p>
									<span>价格：</span><span>￥${sell.price }</span>
								</p>
								<p>
									<span>买物时间：</span><span>${sell.pdate }</span>
								</p>
								<p>
									<span class="intro_span">${sell.desc }</span>
								</p>
							</div>
							<div class="last">
								<a href="${pageContext.request.contextPath }/findProduct?pid=${sell.pid}">去瞅瞅</a>
								<a class="delet-3" href="javascript:void(0);" onclick="delProduct('${sell.pid}')">删除</a>
							</div>
						</div>
						</c:forEach>
					</div>
				

			</div>
		</div>
		<div class="exright">
			<div class="right-title">
				<span>领赠记录</span>(<span>${fn:length(donateRecode) }</span>)
			</div>
			<div class="scroll">
				<div class="content-box">
				<c:forEach items="${donateRecode }" var="donate">
					<div class="right-content">
						<div class="left">
							<img src="${donate.pimage }" alt="">
						</div>
						<div class="midd">
							<p>
								<span>赠物：</span><span>${donate.pname }</span>
							</p>
							<p>
								<span>赠客：</span><span>沐沐</span>
							</p>
							<p>
								<span>领物时间：</span><span>${donate.pdate }</span>
							</p>
							<p>
								<span class="intro_span">${donate.desc }</span>
							</p>
						</div>
						<div class="last">
							<a href="${pageContext.request.contextPath }/findProduct?pid=${donate.pid}">去瞅瞅</a>
							<a class="delet-4" href="javascript:void(0);" onclick="delProduct('${donate.pid}')">删除</a>
						</div>
					</div>
					</c:forEach>
				</div>
			
			</div>
		</div>
		<div class="exright">
			<div class="right-title">
				<span>领养记录</span>(<span>${fn:length(adoptRecode) }</span>)
			</div>
			<div class="scroll">
				<div class="content-box">
					<c:forEach items="${adoptRecode }" var="adopt">
					<div class="right-content">
						<div class="left">
							<img src="${adopt.pimage }" alt="">
						</div>
						<div class="midd">
							<p>
								<span>领养：</span><span>${adopt.pname }</span>
							</p>
							<p>
								<span>拖客：</span><span>${user.uname }</span>
							</p>
							<p>
								<span>领养于：</span><span>${adopt.pdate }</span>
							</p>
							<p>
								<span class="intro_span">${adopt.desc }</span>
							</p>
						</div>
						<div class="last">
							<a href="${pageContext.request.contextPath }/findProduct?pid=${adopt.pid}">去瞅瞅</a>
							<a class="delet-5" href="javascript:void(0);" onclick="delProduct('${adopt.pid}')">删除</a>
						</div>
					</div>
					</c:forEach>
				</div>
			
			</div>
		</div>
	</div>
	<footer class="footer">
		<p class="clearfix">©2018 SWOP网易 SWOP.com 京ICP证070791号京公网安备11010502025545号 电子公告服务规则</p>
	</footer>
</body>
<script src="js/record.js"></script>
</html>