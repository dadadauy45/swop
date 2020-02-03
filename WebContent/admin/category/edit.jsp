<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>edit</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/content.css">
<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/js/tree.js"></script>
<body>
	<div class="fix_box">
		<div class="title">
			<h4>位置:</h4>
			<span>商品</span><span>修改</span>
		</div>
		<div class="main_content_fix">
			<form action="${pageContext.request.contextPath }/adminEditCategory" method="post">
				<input type="hidden" name="cid" value="${category.cid }"> 
				<table>
					<tr>
						<th>商品名称：</th>
						<td><input type="text" name="cname" value="${category.cname }"></td>
					</tr>
				</table>
				<div class="btn_box">
					<input type="submit" class="confirm" value="确认">
					<!-- <button class="yes" type="submit">确定</button> -->
					<button class="reset" type="reset">重置</button>
					<a href="#" class="back">返回</a>
				</div>
			</form>
		</div>
	</div>
	<script>
		$(function() {
			Btn('yes');
			Btn('back');
			box_shadow('confirm','click');
			box_shadow('yes', 'click');
			box_shadow('reset', 'click');
		});
		function Btn(classname) {
			var btn = document.getElementsByClassName(classname)[0];
			$(btn).click(
							function(e) {
								e.preventDefault();
								parent.document.getElementById("rightFrame").src = '${pageContext.request.contextPath }/admin/category/list.jsp';
							})
		}
	</script>
</body>
</html>