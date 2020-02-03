<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>交换</title>
</head>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/exchange.css">
<body>
	<div class="min-top">
		<div class="min_center">
			<div class="right">
				<span>您好，欢迎来到SWOP！</span> <span>发布换品</span>
			</div>
			<div class="left">
				<a class="index" href="${pageContext.request.contextPath }/default.jsp">返回首页</a>
				<a class="register" href="${pageContext.request.contextPath }/personalProduct">个人中心</a>
			</div>
		</div>
	</div>
	<div class="big_box min_center">
		<div class="title">
			<h3>添加交换物品</h3>
			<h2 style="color:red;">
			<c:if test="${errorInfo==null }">
			</c:if>
			<c:if test="${errorInfo!=null }">
				${errorInfo }
			</c:if>
			</h2>
		</div>
		<div class="main-bottom">
			<form action="${pageContext.request.contextPath }/announceProduct"  method="post" enctype="multipart/form-data">
				<input type="hidden" name="uid" value="${user.uid }">
				<div class="select_box_one comment">
					<span class="first_span">商品分类:</span>
					<select name="cid" id="" class="main_sort">
						<c:forEach items="${categoryList }" var="category">
							<option value="${category.cid }">${category.cname }</option>
						</c:forEach>
					</select> <span class="bitian">(*必填)</span><span class="main_span"></span>
				</div>
				<div class="select_box_two comment">
					<span class="first_span">新旧程度:</span> 
					<select name="level_id" id="" class="secondary_sort">
						<c:forEach items="${newLevelList }" var="level">
							<option value="${level.level_id }">${level.level_name }</option>
						</c:forEach>
					</select> <span class="bitian">(*必填)</span><span class="secondary_span"></span>
				</div>
				<div class="select_box_two comment">
					<span class="first_span">功能分类:</span> 
					<select name="goods_sort" id="" class="secondary_sort">
						<c:forEach items="${goodsList }" var="goods">
							<option value="${goods.goods_id }">${goods.goods_name }</option>
						</c:forEach>
					</select> <span class="bitian">(*必填)</span><span class="secondary_span"></span>
				</div>
				<div class="first_div">
					<div class="titlename comment">
						<span class="first_span">商品标题：</span>
						<input type="text" name="pname" class="titlename_inp">
						<span class="bitian"> (*必填)</span>
						<span class="titlename_span">可以增加一些关键字帮助搜索</span>
					</div>
					<div class="wanted comment">
						<span class="first_span">想换什么：</span>
						<input type="text" name="want" class="wanted_inp">
						<span class="bitian">如：想换电脑，默认为随便。</span>
						<span class="wanted_span">用“，”号隔开可填多个想换物品</span>
					</div>
					<div class="key comment">
						<span class="first_span">搜索关键字：</span><input type="text"
							class="key_inp"><span class="key_span">关键字之间用“，”号隔开，例如：数码，手机，诺基亚</span>
					</div>
					<div class="city comment">
						<span class="first_span">同城交换：</span> 是<input type="radio"
							name="checked" value="是" class="radio"> 否<input
							type="radio" name="checked" value="否" class="radio"> <span
							class="bitian">(*必选)</span><span class="radio_span"></span>
					</div>
				</div>
				<div class="intro_box">
					<div class="second_div">
						<div class="intro comment">
							<div class="intro_top">
								<h4>描述信息</h4>
								<span>(请把描述/要求说的具体一些)</span>
							</div>
							<div class="intro_inp">
								<textarea name="desc" class="introduce" placeholder="请输入...." cols="30" rows="10"></textarea>
							</div>
						</div>
					</div>
					<div class="kefu">
						<div class="kefu_top">
							<p>发换品需求遇到困难</p>
							<p>可以把您的问题告诉SWOP客服</p>
							<p>让我们帮您解答</p>
						</div>
						<div class="kefu_time">
							<p>工作日：周一至周五 9:00-18:00</p>
						</div>
						<div class="consult">
							<a href="#" class="kefu_a">在线咨询</a>
						</div>
					</div>
				</div>
				<div class="clearfix three_div">
					<div class="image comment">
						<!-- <input type="button" value="上传照片" class="image-two">  -->
						<input type="file" name="fileName" multiple="multiple" accept="image/*" class="image-one">
					</div>
					<div class="imgshow_box clearfix"></div>
				</div>
				<div class="four_div">
					<div class="xx_add comment">
						<span class="first_span">详细地址：</span>
						<input class="xx" type="text" name="address" placeholder="请输入详细地址">
						<span class="xx_span"></span>
					</div>
					<div class="my_phone comment">
						<span class="first_span">联系电话：</span>
						<input class="phone_num" name="telephone" type="text" placeholder="请输入联系电话">
						<span>不会在换物网公开</span>
						<span class="phone_span"></span>
					</div>
					<div class="agree comment">
						<input type="checkbox" class="checked"> <a class="xieyi"
							href="#">阅读并同意SWOP用户协议</a> <span class="checked_span"></span>
					</div>
				</div>
				<div class="preserve comment">
					<input type="submit" value="保存发布" class="pre-inp">
				</div>
			</form>
		</div>
	</div>
	<footer class="footer">
		<ul>
			<li><a href="#">会员注册</a></li>
			<li><a href="#">易物保障</a></li>
			<li><a href="#">密码找回</a></li>
			<li><a href="#">联系我们</a></li>
		</ul>
		<p class="clearfix">©2018 Swop网易 Swop.com 京ICP证070791号
			京公网安备11010502025545号 电子公告服务规则</p>
	</footer>
</body>
<script src="js/jquery-1.11.2.js"></script>
<script src="js/exchange.js"></script>
</html>