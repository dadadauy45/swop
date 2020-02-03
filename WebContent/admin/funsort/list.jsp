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
	function delProduct(funid){
		var isDel = confirm("您确认要删除吗？");
		if(isDel){
			//要删除
			location.href = "${pageContext.request.contextPath}/adminDelFunsort?fun_id="+funid;
		}
	}
</script>
<body>
	<div class="first">
		<div class="title">
			<h4>位置:</h4>
			<span>功能分类</span>
			<button class="add">添加</button>
		</div>
		<div class="none">
			<table class="page">
				<tr class="biaoti">
					<th>编号</th>
					<th>名称</th>
					<th class="operate">操作</th>
				</tr>
				<c:forEach items="${adminFunsortList }" var="funsort">
					<tr>
						<td>${funsort.fun_id }</td>
						<td>${funsort.fun_name }</td>
						<td>
							<a href="${pageContext.request.contextPath }/adminFunsortEdit?fun_id=${funsort.fun_id }"><button class="">修改</button></a>
							<a href="javascript:void(0);" onclick="delProduct('${funsort.fun_id}')"><button class="delect">删除</button></a>
						</td>
					</tr>
				</c:forEach>
			</table>
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
						})
						.click(
								function() {
									parent.document
											.getElementById("rightFrame").src = '${pageContext.request.contextPath }/admin/funsort/edit.jsp';
								})
			}
		}
		function Add() {
			$('.add')
					.click(
							function(e) {
								parent.document.getElementById("rightFrame").src = '${pageContext.request.contextPath }/admin/funsort/add.jsp';
							})
		}
	</script>
</body>
</html>