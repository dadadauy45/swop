<%@page import="com.swop.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <!DOCTYPE html> -->
<html lang="en">
<head>
<meta charset="utf-8">
<title>物品详情</title>
</meta>
</head>
<link href="css/base.css" rel="stylesheet">
<link href="css/Commodity_detial.css" rel="stylesheet">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/sinaFaceAndEffec.css">
<script src='js/jquery-1.11.2.js'></script>
<body>
	<div class="min-top">
		<div class="min_center">
			<div class="left">
				<span> 当前位置：商品详情 </span>
				<a class="index" href="${pageContext.request.contextPath }/default.jsp">返回首页</a>
			</div>
			<c:if test="${empty user }">
				<div class="right">
					<span>请先 </span> <a
						href="${pageContext.request.contextPath }/login.jsp"> 登录 </a> <span>或者
					</span> <a href="${pageContext.request.contextPath }/register.jsp">免费注册
					</a>
				</div>
			</c:if>
			<c:if test="${!empty user }">
				<div class="right">
					<li style="float: left;"><a class="login"
						href="${pageContext.request.contextPath }/personalProduct">${user.uname }您好！</a></li>
					<li style="float: left;"><a class="register"
						href="${pageContext.request.contextPath }/quit">退出</a></li>
				</div>
			</c:if>
		</div>
	</div>
	<main>
	<div class="min_center">
		<div class="main_top">
			<div class="goods_name">${product.pname }</div>
			<div class="more">
				<span class="change">意向换：</span><span class="type">随便</span> <span
					class="visit">浏览：</span><span class="visit_num">48</span> <span
					class="comment">留言：</span><span class="comment_num">0</span> <span
					class="collect">收藏：</span><span class="collect_num">0</span>
			</div>
		</div>
		<div class="main_bottom">
			<div class="main_bottom_left">
				<div class="main_bottom_left_top">
					<div class="main_bottom_left_top_left">
						<div class="big_img_box">
							<img src="${product.pimage}"
								alt="">
						</div>
						<div class="img_box_bottom">
							<ul>
								<li class="small_img_box"><img
									src="${product.pimage}"
									alt=""></li>
								<c:if test="${!empty product.pimage_1 }">
									<li class="small_img_box"><img
										src="${product.pimage_1}"
										alt=""></li>
								</c:if>
								<c:if test="${!empty product.pimage_2 }">
									<li class="small_img_box"><img
										src="${product.pimage_2}"
										alt=""></li>
								</c:if>
								<c:if test="${!empty product.pimage_3 }">
									<li class="small_img_box"><img
										src="${product.pimage_3}"
										alt=""></li>
								</c:if>
								<c:if test="${!empty product.pimage_4 }">
									<li class="small_img_box"><img
										src="${product.pimage_4}"
										alt=""></li>
								</c:if>
							</ul>
							<span class="prev"></span> <span class="last"></span>
						</div>
					</div>
					<div class="main_bottom_left_top_right">
						<div class="main_bottom_left_top_right_top">
							<p>
								<span>当前状态：</span><span>交易进行中</span>
							</p>
							<p>
								<span>换客名称：</span><span>${user.uname }</span>
							</p>
							<p>
								<span>所在地区：</span><span>${product.address }</span>
							</p>
							<p>
								<span>换客已提交换品：</span><span>0</span>
							</p>
							<a href="${pageContext.request.contextPath }/chat?pid=${product.pid}">我要交换</a>
						</div>
						<div class="main_bottom_left_top_right_bottom">
							<p>强力安利</p>
							<ul>
								<li><a href="#"><img src="images/qq.png" alt="" title="QQ好友"></a></li>
								<li><a href="#"><img src="images/icon_weichat.png" alt="" title="微信好友"></a></li>
								<li><a href="#"><img src="images/XinLang_Micro.png" alt="" title="新浪"></a></li>
								<li><a href="#"><img src="images/QQ_spare.png" alt="" title="分享到空间"></a></li>
								<li><a href="#"><img src="images/friend.png" alt="" title="分享到朋友圈"></a></li>
								<li><a href="#"><img src="images/iconfont-qqweibo.png" alt="" title="分享到朋友圈"></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="scroll">
					<div class="padding">
						<div class="main_bottom_left_midd">
							<div class="introduce">
								<p>
									${product.desc }
								</p>
							</div>
							<div class="three_img_boxs">
								<img src="${product.pimage}" alt="">
								<c:if test="${!empty product.pimage_1 }">
									<img src="${product.pimage_1}" alt="">
								</c:if>
								<c:if test="${!empty product.pimage_2 }">
									<img src="${product.pimage_2}" alt="">
								</c:if>
							</div>
						</div>
					</div>
				</div>

				<div class="main_bottom_left_bottom">
					<p>1.填写完整信息,可有效提高交换成功的概率。</p>
					<p>2.请认准SWOP官方网址,谨防钓鱼诈骗网站。</p>
					<p>3.发布信息需遵守互联网规则。不发布虚假危害社会公安全信息。</p>
					<p>4.换物有风险，换客需要谨慎！</p>
					<p>5.请勿随意透漏个人隐私 , 谨防上当受骗。欢迎向我们举报。</p>
				</div>
			</div>
			<div class="main_bottom_right">
				<div class="main_bottom_right_first">
					<div class="main_bottom_right_first_top">
						<div class="main_bottom_right_first_top_left">
							<img src="images/head_1.jpg" alt="">
						</div>
						<div class="main_bottom_right_first_top_right">
							<p>
								<span>换客：</span><span>${user.uname }</span>
							</p>
							<p>
								<span>信誉：</span><span>10</span>
							</p>
							<p>
								<span>注册于:</span><span>${user.date }</span>
							</p>
							<p class="sx">
								<a href="#">给他私信</a>
							</p>
						</div>
					</div>
					<div class="main_bottom_right_first_bottom clearfix">
						<p>
							SWOP提醒您：<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;换物有风险，换客需要谨慎！
						</p>
					</div>
				</div>
				<div class="main_bottom_right_second">
					<div class="main_bottom_right_second_top">
						<h3>交换物品，上SWOP就够了！</h3>
					</div>
					<div class="main_bottom_right_second_midd">
						<a href="${pageContext.request.contextPath }/findCategoryList">我要发布</a>
					</div>
					<div class="main_bottom_right_second_bott">
						<p>
							<span>换客好</span><span>平台拥有大量高质量的换客。</span>
						</p>
						<p>
							<span>口碑好</span><span>只有你想不到，没有换不到。</span>
						</p>
						<p>
							<span>效果好</span><span>操作简单,只需点击即可完成。</span>
						</p>
					</div>
				</div>
				<div class="main_bottom_right_third clearfix">
					<div class="main_bottom_right_third_title clearfix">
						<h3>猜你喜欢</h3>
						<a href="#">MORE+</a>
					</div>
					<ul>
						<li><span>1.</span><a href="#">可爱宝</a></li>
						<li><span>2.</span><a href="#">华为</a></li>
						<li><span>3.</span><a href="#">阿里巴巴</a></li>
						<li><span>4.</span><a href="#">唯品会</a></li>
						<li><span>5.</span><a href="#">零食外卖</a></li>
					</ul>
				</div>
				<div class="main_bottom_right_third">
					<div class="main_bottom_right_third_title clearfix">
						<h3>同城交换</h3>
						<a href="#">MORE+</a>
					</div>
					<ul>
						<li><span>1.</span><a href="#">蓝色手链</a></li>
						<li><span>2.</span><a href="#">单反相机</a></li>
						<li><span>3.</span><a href="#">万达国际</a></li>
						<li><span>4.</span><a href="#">甜啦啦</a></li>
						<li><span>5.</span><a href="#">水上公园</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</main>
	<div class="min_center">
		<section class="comment_box clearfix">
			<div class="comment_box_top">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;留言区：( <span class="comment_box_num">
					0 </span> )
			</div>
			<div class="big-content">
				<div class="wrap">
					<div class="comment">
						<div class="head-face">
							<img src="images/1.jpg"/ >
							<p>我是鸟</p>
						</div>
						<div class="content">
							<div class="cont-box">
								<textarea class="text" placeholder="请输入..."></textarea>
							</div>
							<div class="tools-box">
								<div class="operator-box-btn">
									<span class="face-icon">☺</span><span class="img-icon">▧</span>
								</div>
								<div class="submit-btn">
									<input type="button" value="提交评论" />
								</div>
							</div>
						</div>
					</div>
					<div class="info-show">
						<ul></ul>
					</div>
				</div>
			</div>

			<script type="text/javascript">
				
			</script>
		</section>
	</div>
	<footer class="footer">
		<ul>
			<li><a href="#">会员注册</a></li>
			<li><a href="#">易物保障</a></li>
			<li><a href="#">密码找回</a></li>
			<li><a href="#">联系我们</a></li>
		</ul>
		<p class="clearfix">©2018 SWOP网易 SWOP.com 京ICP证070791号
			京公网安备11010502025545号 电子公告服务规则</p>
	</footer>
	<script type="text/javascript" src="js/sinaFaceAndEffec.js"></script>
	<script src="js/fd.js"></script>
</body>
</html>
