<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>add</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/content.css">
<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/js/tree.js"></script>
<body>
	<div class="add_box" >
		<div class="title">
			<h4>位置:</h4><span>商品</span><span>添加</span>
		</div>
		<div class="main_content_fix">
			<form action="${pageContext.request.contextPath }/adminAddProduct" method="post">
				<table>
				<tr>
					<th>商品名称：</th>
					<td><input type="text" name="pname"></td>
					<th>手机号：</th>
					<td><input type="text" name="telephone"></td>
				</tr>
				<tr>
					<th>我想换：</th>
					<td><input type="text" name="want"></td>
					<th>同城：</th>
					<td>是<input type="radio" name="checked" value="是" class="radio" >否
					<input type="radio" name="checked" value="否" class="radio"></td>
				</tr>
				<tr>
					<th>所属分类：</th>
					<td>
						<select name="cid">
							<c:forEach items="${adminCategoryList }" var="category">
								<option value="${category.cid }">${category.cname }</option>
							</c:forEach>
						</select>
						
						<select name="goods_sort">
							<c:forEach items="${adminGoodsSortList }" var="goodSort">
								<option value="${goodSort.goods_id }">${goodSort.goods_name }</option>
							</c:forEach>
						</select>
						
						<select name="fun_sort">
							<c:forEach items="${adminFunSortList }" var="funSort">
								<option value="${funSort.fun_id }">${funSort.fun_name }</option>
							</c:forEach>
						</select>
					</td>
					<th>QQ号：</th>
					<td>
						<input type="text" name="QQ">
					</td>
				</tr>
				<tr>
					<th rowspan='3'>联系地址：</th>
					<td class="text" rowspan='3'>
						<textarea name="address" id="" cols="30" rows="5"></textarea>
					</td>
					<th rowspan='2'>商品描述：</th>
					<td class="text" rowspan='2'>
						<textarea name="desc" id="" cols="30" rows="8"></textarea>
					</td>
				</tr>
			</table>
			<div class="btn_box">
				<input type="submit" class="confirm" value="确定">
				<button class="reset" type="reset">重置</button>
				<a href="#" class="back">返回</a>
			</div>
			</form>
			
		</div>
	</div>
</body>
<script>
	$(function () {
		Btn('yes');
		Btn('back');
		box_shadow('confirm','click');
		box_shadow('yes','click');
		box_shadow('reset','click');
	})

		function Btn(classname) {
			var btn = document.getElementsByClassName(classname)[0];
			$(btn).click(function (e) {
				e.preventDefault();
				parent.document.getElementById("rightFrame").src='${pageContext.request.contextPath }/admin/product/list.jsp';
			})
		}
</script>
</html>