<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>left</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/content.css">
<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/js/tree.js"></script>
<body>
	<div class="left" style="width:none">
	<h3>信息管理</h3>
	<ul class="big_ul">
		<li class="big_li">
			商品管理
			<ul class="sub" style="display: none;">
				<li class="sub_li">商品管理</li>
			</ul>
		</li>
		<li class="big_li">
			分类管理
			<ul class="sub" style="display: none;">
				<li class="sub_li">类别所属</li>
				<li class="sub_li">功能所属</li>
				<li class="sub_li">其他所属</li>
			</ul>
		</li>
	</ul>
</div>
<script>
	$(function () {
		Tab();
	}) 
	function Tab(){
		var sub_li = document.getElementsByClassName('sub_li');
		var big_li = document.getElementsByClassName('big_li');
		console.log(sub_li.length);
		for(var i =0;i<sub_li.length;i++){
			sub_li[i].index = i;
			$(sub_li[i]).click(function () {
				if(this.index==0){
					parent.document.getElementById("rightFrame").src='${pageContext.request.contextPath }/adminProductList';
				}else if(this.index==1){
					parent.document.getElementById("rightFrame").src='${pageContext.request.contextPath }/adminCategoryList';
				}else if(this.index==2){
					parent.document.getElementById("rightFrame").src='${pageContext.request.contextPath }/adminFunsortList';
				}else if(this.index==3){
					parent.document.getElementById("rightFrame").src='${pageContext.request.contextPath }/adminGoodsortList';
				}
			})
		}

	}
	
	
</script>
</body>
</html>