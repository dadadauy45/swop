<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>edit</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/content.css">
<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/js/tree.js"></script>
<body>
	<div class="fix_box">
		<div class="title">
			<h4>位置:</h4><span>商品</span><span>修改</span>
		</div>
		<div class="main_content_fix">
			<form action="${pageContext.request.contextPath }/adminEditProduct" method="post">
				<input type="hidden" name="pid" value="${product.pid }">
				<table>
				<tr>
					<th>商品名称：</th>
					<td><input type="text" name="pname" value="${product.pname }"></td>
				</tr>
				<tr>
					<th>所属分类：</th>
					<td>
						<select name="cid" id="">
							<c:forEach items="${categoryList }" var="category">
								<option value="${category.cid }">${category.cname }</option>
							</c:forEach>
						</select>
						<select name="goods_sort" id="">
							<c:forEach items="${goodSort }" var="good">
								<option value="${good.goods_id }">${good.goods_name }</option>
							</c:forEach>
						</select>
						<select name="fun_sort" id="">
							<c:forEach items="${funSort }" var="fun">
								<option value="${fun.fun_id }">${fun.fun_name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>详细地址：</th>
					<td class="text">
						<textarea name="address" id="" cols="30" rows="5">${product.address }</textarea>
					</td>
				</tr>
				<tr>
					<th>商品描述：</th>
					<td class="text">
						<textarea name="desc" id="" cols="30" rows="8">${product.desc }</textarea>
					</td>
				</tr>
			</table>
			<div class="btn_box">
				<input type="submit" class="confirm" value="确定">
				<!-- <button class="yes" type="submit">确定</button> -->
				<button class="reset" type="reset">重置</button>
				<a href="#" class="back">返回</a>
			</div>
			</form>
		</div>
	</div>
	<script>
		$(function () {
			Btn('yes');
			Btn('back');
			box_shadow('confirm','click');
			box_shadow('yes','click');
			box_shadow('reset','click');
		});
		function Btn(classname) {
			var btn = document.getElementsByClassName(classname)[0];
			$(btn).click(function (e) {
				e.preventDefault();
				parent.document.getElementById("rightFrame").src='${pageContext.request.contextPath }/admin/product/list.jsp';
			})
		}
	</script>
</body>
</html>