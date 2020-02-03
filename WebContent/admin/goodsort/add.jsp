<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>add</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/content.css">
<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/js/tree.js"></script>
<body>
	<div class="add_box">
		<div class="title">
			<h4>位置:</h4>
			<span>商品</span><span>添加</span>
		</div>
		<div class="main_content_fix">
			<form action="${pageContext.request.contextPath }/adminGoodsortAdd" method="post">
				<table>
					<tr>
						<th>商品名称：</th>
						<td><input type="text" name="goods_name" value=""></td>
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
</body>
<script>
	$(function() {
		Btn('yes');
		Btn('back');
		box_shadow('confirm','click');
		box_shadow('yes', 'click');
		box_shadow('reset', 'click');
	})

	function Btn(classname) {
		var btn = document.getElementsByClassName(classname)[0];
		$(btn)
				.click(
						function(e) {
							e.preventDefault();
							parent.document.getElementById("rightFrame").src = '${pageContext.request.contextPath }/admin/goodsort/list.jsp';
						})
	}
</script>
</html>