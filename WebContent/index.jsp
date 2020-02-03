<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/index.css">
</head>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	
	$(function(){          
		//post异步加载商品分类
		$.post(
			"${pageContext.request.contextPath}/categoryList",
			function(data){ 
				var content = "<li><h3>安利安利</h3></li>";
				for(var i=0;i<data.length;i++){
					content+="<li class='first' ><a href='${pageContext.request.contextPath}/sort?cid="+data[i].cid+"'><p class='tuo' >"+data[i].cname+"</p></a></li>"
				}
				
				$("#cateul").append(content);
			},
			"json"
		);
	
	
		//post异步加载商品功能分类
		$.post(
				"${pageContext.request.contextPath}/funSortList",
			//	{"name":"李四","age":25}, //没有请求参数
				function(data){ //执行成功后的回调函数
					var content = "";
					for(var i=0;i<data.length;i++){
						content+="<li><a href='${pageContext.request.contextPath}/funsort?fun_sort="+data[i].fun_id+"'>"+data[i].fun_name+"</a></li>";
					}
					
					$("#fun_sort").append(content);
				},
				"json"
			);
		
		//post异步加载商品分类
		$.post(
				"${pageContext.request.contextPath}/goodSortList",
			//	{"name":"李四","age":25}, //没有请求参数
				function(data){ //执行成功后的回调函数
					var content = "<li><h3>安利安利</h3></li><li><span class='block'>"+data[0].goods_name+"</span></li>";
					for(var i=1;i<data.length;i++){
						content+="<li><span class='none'>"+data[i].goods_name+"</span></li>"
					}
					
					$("#goods_sort").append(content);
				},
				"json"
			);
	
	})   
	
</script>

<body>
	<div class="top">
	<div class="center">
		<ul class="top-left">
			<c:if test="${empty user }">
				<li><a class="login" href="${pageContext.request.contextPath }/login.jsp">立即登录</a></li>
				<li><a class="register" href="${pageContext.request.contextPath }/register.jsp">立即注册</a></li>
			</c:if>
			<c:if test="${!empty user }">
				<li><a class="login" href="${pageContext.request.contextPath }/personalProduct">${user.uname }您好！</a></li>
				<li><a class="register" href="${pageContext.request.contextPath }/quit">退出</a></li>
			</c:if>
		</ul>
		<ul class="top-right">
			<li><a href="${pageContext.request.contextPath }/findCategoryList">我要发布</a></li>
			<li><a href="#">手机APP</a></li>
			<li><a href="${pageContext.request.contextPath }/personalProduct">个人中心</a></li>
			<li><a href="#">网站导航</a></li>
		</ul>
	</div>
		
	</div>
	<nav class="nav ">
		<div class="center">
			<div class="logo">
			<img src="${pageContext.request.contextPath }/images/swop.jpg" alt="">
		</div>
		<div class="main clearfix">
			<div class="search-box">
				<!-- 搜索框，搜锁之后跳转页面？下面这些都是，点击之后跳转到哪里 -->
				<form class="search-input" action="${pageContext.request.contextPath }/searchProduct" method="post">
					<input class="inp" name="search" type="text" placeholder="交换或租借">
					<button class="btn" type="submit"></button>
				</form>
				
				<div class="hide_box"></div>
				<span><a href="#">演出服租借</a></span>
				<span class="first"><a href="#">《四世同堂》</a></span>
				<span><a href="#">《大秦帝国》</a></span>
				<span><a href="#">《华胥引》</a></span>
				<span><a href="#">《飘》</a></span>
				<div class="nav-bottom">
					<ul id="fun_sort">
						
					</ul>
				</div>
			</div>
		</div>	
		</div>	
	</nav>
	<div class="clearfix center mar">
		<div class="pos">
			<div class="sort">
				<ul  id="cateul">
			  		
				</<ul>
			</div>
		</div>
		<div class="center-box">
			<div class="center-left">
				<div class="slideshow clearfix">
					<ul class="slideshow_ul clearfix">
						<li><a href="#"><img src="${pageContext.request.contextPath }/images/watch_lb.jpg" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/images/book_lb.jpg" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/images/penzai_lb.jpg" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/images/cangshu_lb.jpg" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/images/dress_lb.jpg" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/images/xiangji_lb.jpg" alt=""></a></li>	
						<li><a href="#"><img src="${pageContext.request.contextPath }/images/watch_lb.jpg" alt=""></a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/images/book_lb.jpg" alt=""></a></li>
					</ul>
					<span class="prev"><</span>
					<span class="last">></span>
					<ol class="slideshow_ol">
						<li class="now"></li>
						<!-- <li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li> -->
					</ol>
				</div>
				<div class="center-left-bottom">
				<div class="center-left-bottom-left">
					<img src="images/xz.jpg" alt="">
				</div>
				<div class="center-left-bottom-right">
					<img src="images/change_book.jpg" alt="">
				</div>
				</div>
			</div>
			<div class="center-right">
				<div class="center-right-top">
					<img src="images/cat.jpg" alt="">
				</div>
				<div class="center-right-bottom">
					<img src="images/donate.jpg" alt="">
				</div>
			</div>
		</div>
		<div class="right-box">
			<div class="right-box-top">
				<div class="img-box">
					<img src="images/avatar.jpg" alt="">
				</div>
					<p>Hi!你好</p>
					<div class="register_two">
						<a href="${pageContext.request.contextPath }/register.jsp">注册</a>
					</div>
				<div class="login_two"><a href="${pageContext.request.contextPath }/login.jsp">立即登录</a></div>
			   
			</div>
			<div class="right-box-bottom">
				<div class="QR-code-box">
					<img src="images/ewm.png" alt="">
				</div>
				<p>Swop手机APP</p>
			</div>
		</div>
	</div>
	<div class="floor center" >
		<div class="first-floor clearfix">
			<div class="first-floor-top">
				<ul id="goods_sort" class="first-floor-top-ul">
				</ul>
			</div>
			
			<!-- 书籍 -->
			<div class="first-floor-bottom-all">
				<div class="first-floor-bottom show">
					<ul>
						<c:forEach items="${product_book }" var="book">
							<li class=""><a href="${pageContext.request.contextPath }/findProduct?pid=${book.pid }">
									<img src="${book.pimage}" alt="">
									<h4>${book.pname }</h4>
									<p>交换/租借</p>
									<span>评价：优</span>
								</a></li>
						</c:forEach>
					</ul>
				</div>
				
				<!-- 日用 -->
				<div class="first-floor-bottom">
				 	<ul>
				 		<c:forEach items="${product_daily }" var="daily">
				 			<li class=""><a href="${pageContext.request.contextPath }/findProduct?pid=${daily.pid }">
								<img src="${daily.pimage}" alt="">
								<h4>${daily.pname }</h4>
								<p>待售</p>
								<span>评价：优</span>
							</a></li>
				 		</c:forEach>
				 	</ul>
				</div>
				
				<!-- 服装 -->
				<div class="first-floor-bottom">
					<ul>
						<c:forEach items="${product_cloth }" var="cloth">
							<li class=""><a href="${pageContext.request.contextPath }/findProduct?pid=${cloth.pid }">
								<img src="${cloth.pimage}" alt="">
								<h4>${cloth.pname }</h4>
								<p>交换/租借</p>
								<span>评价：优</span>
							</a></li>
						</c:forEach>
					</ul>
				</div>
				<!-- 鞋包 -->
				<div class="first-floor-bottom">
					<ul>
						<c:forEach items="${product_shoe }" var="shoe">
							<li class=""><a href="${pageContext.request.contextPath }/findProduct?pid=${shoe.pid }">
								<img src="${shoe.pimage}" alt="">
								<h4>${shoe.pname }</h4>
								<p>交换/租借</p>
								<span>评价：优</span>
							</a></li>
						</c:forEach>
					</ul>
				</div>
				
				<!-- 饰品 -->
				<div class="first-floor-bottom">
					<ul>
						<c:forEach items="${product_decoration }" var="decoration">
							<li class=""><a href="${pageContext.request.contextPath }/findProduct?pid=${decoration.pid }">
								<img src="${decoration.pimage}" alt="">
								<h4>${decoration.pname }</h4>
								<p>交换/租借</p>
								<span>评价：优</span>
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<section class="bottom-nav center clearfix">
		<ul>
			<li>
				<h3>新手指南</h3>
			</li>
			<li><a href="#">会员注册</a></li>
			<li><a href="#">实名认证</a></li>
			<li><a href="#">商品发布</a></li>
			<li><a href="#">需求设置</a></li>
		</ul>
		<ul>
			<li>
				<h3>易物安全</h3>
			</li>
			<li><a href="#">易物保障</a></li>
			<li><a href="#">防骗指南</a></li>
			<li><a href="#">易物纠纷</a></li>
			<li><a href="#">投诉举报</a></li>
		</ul>
		<ul>
			<li>
				<h3>常见问题</h3>
			</li>
			<li><a href="#">密码找回</a></li>
			<li><a href="#">在线交流</a></li>
			<li><a href="#">易物协议</a></li>
			<li><a href="#">捐赠流程</a></li>
		</ul>
		<ul>
			<li>
				<h3>关于我们</h3>
			</li>
			<li><a href="#">联系我们</a></li>
			<li><a href="#">法律声明</a></li>
			<li><a href="#">帮助中心</a></li>
		</ul>
	</section>
	<footer class="footer clearfix">
		<ul>
			<li>增值电信业务经营许可证：B2-20150472出版物经营许可证：新出发京零字第朝150038号</li>
			<li>CopyRight 2011-2020SWOP恒通（北京）国际投资股份有限公司版权所有</li>
			<li>电信与信息服务业务经营许可证：京ICP证130283号网站备案号：京ICP备13021520号网站备案号:京公网安备11010502024906</li>
			<li>SWOP恒通（北京）国际投资股份有限公司统一社会信用代码：91110105573162031B</li>
		</ul>
	</footer>
		<script src="js/index.js"></script>
</body>
</html>