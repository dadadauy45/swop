<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>主页</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/content.css">
<script src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<!-- <script>
	window.loa
</script> -->
<body>
	<div class="top">
		<div class="logo_box">
			<img src="${pageContext.request.contextPath }/images/min_swop8.png" alt="">
		</div>
		<div class="midd">SWOP&nbsp;&nbsp;后&nbsp;台&nbsp;管&nbsp;理</div>
		<div class="right">
			<div class="name_box">
				<span class="name_span">当前用户：</span><span class="name">lisi</span>
			</div>
			<button class="btn">退出</button>
		</div>
	</div>
	<main class="main">
		<div class="left">
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
		<div class="right-content">
			<div class="first" >
				<div class="title">
					<h4>位置:</h4><span>信息管理</span>
				</div>
				<div class="main_content">
					欢迎登陆后台管理系统！
				</div>
			</div>

			<div class="first" style="display: none;">
				<div class="title">
					<h4>位置:</h4><span>商品</span><span>发顺丰</span>
					<button class="add">添加</button>
				</div>
				<div class="main_content_sort">
					<table class="page">
						<tr class="biaoti">
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th class="operate">操作</th>
						</tr>


						<tr >
							<td>内容1</td>
							<td class="img"><img src="images/bgc1.jpg" alt=""></td>
							<td>内容1</td>
							<td>内容1</td>
							<td>内容1</td>
							<td>内容1</td>
							<td><button class="fix">修改</button><button class="delect">删除</button></td>
						</tr>
					</table>
					<div class="fenye">
						<a class="index" href="#">首页</a>
						<a href="#" class="prev">上一页</a>
						第<input type="text">/页
						<a href="#" class="next">下一页</a>
						<a href="#" class="last">尾页</a>
					</div>
				</div>
			</div>

			<div class="first" style="display: none;">
				<div class="title">
					<h4>位置:</h4><span>商品</span><span>lalal</span>
					<button class="add">添加</button>
				</div>
				<div class="main_content_sort">
					<table class="page">
						<tr class="biaoti">
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th class="operate">操作</th>
						</tr>
						<tr>
							<td>内容1</td>
							<td class="img"><img src="images/bgc1.jpg" alt=""></td>
							<td>内容1</td>
							<td>内容1</td>
							<td>内容1</td>
							<td>内容1</td>
							<td><button class="fix">修改</button><button class="delect">删除</button></td>
						</tr>
					</table>
					<div class="fenye">
						<a class="index" href="#">首页</a>
						<a href="#" class="prev">上一页</a>
						第<input type="text">/页
						<a href="#" class="next">下一页</a>
						<a href="#" class="last">尾页</a>
					</div>
				</div>
			</div>

			<div class="first" style="display: none;">
				<div class="title">
					<h4>位置:</h4><span>郝利娟</span><span>发顺丰</span>
					<button class="add">添加</button>
				</div>
				<div class="main_content_sort">
					<table class="page">
						<tr class="biaoti">
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th class="operate">操作</th>
						</tr>
						<tr >
							<td>内容1</td>
							<td class="img"><img src="images/bgc1.jpg" alt=""></td>
							<td>内容1</td>
							<td>内容1</td>
							<td>内容1</td>
							<td>内容1</td>
							<td><button class="fix">修改</button><button class="delect">删除</button></td>
						</tr>
					</table>
					<div class="fenye">
						<a class="index" href="#">首页</a>
						<a href="#" class="prev">上一页</a>
						第<input type="text">/页
						<a href="#" class="next">下一页</a>
						<a href="#" class="last">尾页</a>
					</div>
				</div>
			</div>

			<div class="first" style="display: none;">
				<div class="title">
					<h4>位置:</h4><span>lll</span><span>发顺丰</span>
					<button class="add">添加</button>
				</div>
				<div class="main_content_sort">
					<table class="page">
						<tr class="biaoti">
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th>标题</th>
							<th class="operate">操作</th>
						</tr>
						<tr >
							<td>内容1</td>
							<td class="img"><img src="images/bgc1.jpg" alt=""></td>
							<td>内容1</td>
							<td>内容1</td>
							<td>内容1</td>
							<td>内容1</td>
							<td><button class="fix">修改</button><button class="delect">删除</button></td>
						</tr>
					<div class="fenye">
						<a class="index" href="#">首页</a>
						<a href="#" class="prev">上一页</a>
						第<input type="text">/页
						<a href="#" class="next">下一页</a>
						<a href="#" class="last">尾页</a>
					</div>
				</div>
			</div>

			<div class="fix_box" style="display: none;">
				<div class="title">
					<h4>位置:</h4><span>商品</span><span>修改</span>
				</div>
				<div class="main_content_fix">
					<form action="">
						<table>
						<tr>
							<th>商品名称：</th>
							<td><input type="text" value="123"></td>
						</tr>
						<tr>
							<th>所属分类：</th>
							<td>
								<select name="" id="">
									<option value="">租借</option>
									<option value="">买卖</option>
									<option value="">交换</option>
									<option value="">托管</option>
									<option value="">捐赠</option>
								</select>
								<select name="" id=""></select>
								<select name="" id=""></select>
							</td>
						</tr>
						<tr>
							<th>详细地址：</th>
							<td class="text">
								<textarea name="" id="" cols="30" rows="5"></textarea>
							</td>
						</tr>
						<tr>
							<th>商品描述：</th>
							<td class="text">
								<textarea name="" id="" cols="30" rows="8"></textarea>
							</td>
						</tr>
					</table>
					<div class="btn_box">
						<button class="yes" type="submit">确定</button>
						<button class="reset" type="reset">重置</button>
						<a href="#" class="back">返回</a>
					</div>
					</form>
				</div>
			</div>

			<div class="add_box" style="display: none;" >
				<div class="title">
					<h4>位置:</h4><span>商品</span><span>添加</span>
				</div>
				<div class="main_content_fix">
					<form action="">
						<table>
						<tr>
							<th>商品名称：</th>
							<td><input type="text" value="123"></td>
							<th>手机号：</th>
							<td><input type="text" value="123"></td>
						</tr>
						<tr>
							<th>我想换：</th>
							<td><input type="text" value="123"></td>
							<th>同城：</th>
							<td>是<input type="radio" name="checked" value="是" class="radio" >
						否<input type="radio" name="checked" value="否" class="radio"></td>
						</tr>
						<tr>
							<th>所属分类：</th>
							<td>
								<select name="" id="">
									<option value="">租借</option>
									<option value="">买卖</option>
									<option value="">交换</option>
									<option value="">托管</option>
									<option value="">捐赠</option>
								</select>
								<select name="" id=""></select>
								<select name="" id=""></select>
							</td>
							<th>QQ号：</th>
							<td>
								<input type="text">
							</td>
						</tr>
						<tr>
							<th rowspan='3'>联系地址：</th>
							<td class="text" rowspan='3'>
								<textarea name="" id="" cols="30" rows="5"></textarea>
							</td>
							<th rowspan='2'>商品描述：</th>
							<td class="text" rowspan='2'>
								<textarea name="" id="" cols="30" rows="8"></textarea>
							</td>
						</tr>
					</table>
					<div class="btn_box">
						<button class="yes" type="submit">确定</button>
						<button class="reset" type="reset">重置</button>
						<a href="#" class="back">返回</a>
					</div>
					</form>
					
				</div>
			</div>
		</div>
	</main>
</body>
<script src="${pageContext.request.contextPath }/js/content.js"></script>
</html>