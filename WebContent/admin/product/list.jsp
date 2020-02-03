<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/content.css">
<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/js/tree.js"></script>
<script type="text/javascript">
	function delProduct(pid){
		var isDel = confirm("您确认要删除吗？");
		if(isDel){
			//要删除
			location.href = "${pageContext.request.contextPath}/adminDelProduct?pid="+pid;
		}
	}
</script>
<body>
	<div class="first">
		<div class="title">
			<h4>位置:</h4>
			<span>商品</span><span>发顺丰</span>
			<button class="add">添加</button>
		</div>
		<div class="main_content_sort">
			<table class="page">
				<tr class="biaoti">
					<th>编号</th>
					<th>名称</th>
					<th>图片</th>
					<th>发布日期</th>
					<th>地址</th>
					<th>联系方式</th>
					<th class="operate">操作</th>
				</tr>

				<c:forEach items="${pageBean.productList }" var="pro">
					<tr>
						<td>${pro.pid }</td>
						<td>${pro.pname }</td>
						<td class="img"><img src="${pageContext.request.contextPath }/${pro.pimage}" alt=""></td>
						<td>${pro.pdate }</td>
						<td>${pro.address }</td>
						<td>${pro.telephone }</td>
						<td>
							<a href="${pageContext.request.contextPath }/adminProductEdit?pid=${pro.pid}"><button class="">修改</button></a>
							<a href="javascript:void(0);" onclick="delProduct('${pro.pid}')"><button class="delect">删除</button></a>
						</td>
					</tr>
				</c:forEach>

			</table>
			<div class="fenye">
				<a class="index" href="${pageContext.request.contextPath }/adminProductList?currentPage=1">首页</a> 
				<a href="${pageContext.request.contextPath }/adminProductList?currentPage=${pageBean.currentPage-1<1?1:pageBean.currentPage-1 }" class="prev">上一页</a> 
				第<input type="text" value="${pageBean.currentPage }">/页 
				<a href="${pageContext.request.contextPath }/adminProductList?currentPage=${pageBean.currentPage+1>pageBean.totalPage?pageBean.totalPage:pageBean.currentPage+1 }" class="next">下一页</a> 
				<a href="${pageContext.request.contextPath }/adminProductList?currentPage=${pageBean.totalPage}" class="last">尾页</a>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			Fix();
			Add();
			box_shadow('add', 'added');

		})
		function Fix() {
			var fix = document.getElementsByClassName('fix');
			console.log(fix.length);
			for (var i = 0; i < fix.length; i++) {
				$(fix[i])
						.mousedown(function() {
							this.className = 'fix delected';
						})
						.mouseup(function() {
							this.className = 'fix';
						}).click(
								function() {
									parent.document
											.getElementById("rightFrame").src = '';
								})
			}
		}
		function Add() {
			$('.add')
					.click(
							function(e) {
								parent.document.getElementById("rightFrame").src = '${pageContext.request.contextPath }/adminProductAdd';
							})
		}
	</script>
</body>
</html>