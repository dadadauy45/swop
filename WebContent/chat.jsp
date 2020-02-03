<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>我要交换</title>
</head>
<link rel="stylesheet" href="css/base.css">

<link rel="stylesheet" href="css/sinaFaceAndEffec.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/chat.css">
<script src='js/chat.js'></script>
<script src="js/jquery-1.11.2.js"></script>
<body>
	<div class="min-top">
        <div class="min_center">
            <div class="left">
                <span>
                    当前位置：我要交换
                </span>
                <a class="index" href="${pageContext.request.contextPath }/default.jsp">返回首页</a>
            </div>
            <ul class="right">
         		<li><a href="${pageContext.request.contextPath }/personalProduct">您好！${user.uname }</a></li>  
         		<li><a href="${pageContext.request.contextPath }/quit">退出</a></li>     
        	</ul>
        </div>
    </div>
    <div class="wkit-theme-default">
        <div class="min_center">
             <div class="wkit-plugin-wrap">
            <div class="wkit-user-info">
                <div class="wkit-logo">
                    <img src="images/head_1.jpg">
                        <span class="wki-title-wrap" title="沐沐">
                            ${user.uname }
                        </span>
                    </img>
                </div>
                <div class="wkit-user-avatar">
                    <img src="images/head_1.jpg" width="100%"/>
                </div>
            </div>
            <div class="wkit-plugin">
                <div class="xinyu_box same">
                    <span class="xinyu">信誉:</span><span class="num">10</span>
                </div>
                <div class="jiaohuan_box same">
                    <span class="jiaohuan">交换成功次数:</span><span class="num">2</span>
                </div>
                <div class="fabu_box same">
                    <span class="fabu">发布:</span><span class="num">3</span>
                </div>
                <div class="succeed same">
                    <span class="succeed">可得积分:</span><span class="num">3</span>
                </div>
                <div class="fanhui_box same">
                    <a href="findProduct?pid=${product.pid }">再瞅瞅</a>
                </div>
                <div class="personal same">
                    <a href="personalProduct">个人中心</a>
                </div>
                <div class="guangguang same">
                    <a href="default.jsp">再逛逛</a>
                </div>
                <div class="wuliu same">
                    <a href="wuliu.html">我的物流</a>
                </div>
            </div>
        </div>
        <div class="wkit-chat-wrap">
            <div class="big-content">
                <div class="info-show">
                    <ul class="info-ul"></ul>
                </div>
                <div class="wrap">
                    <div class="tools-box">
                        <div class="operator-box-btn">
                            <span class="face-icon">☺</span>
                            <div class="img-icon-box">
                                <span class="img-icon">▧</span>
                                <input type="file" accept="image/*" class="image-one">
                            </div>
                        </div>
                    </div>
                    <div class="comment">
                        <div class="content">
                            <div class="cont-box">
                                <textarea class="text" placeholder="请输入..."></textarea>
                            </div>
                            <div class="submit-btn"><input type="button" value="发送" class="ans-inp" /></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wkit-address-wrap">
            <div class="notice">
                <h3>温馨提示</h3>
                <p>1.在填写表单之前请先与换客通过左边的平台进行协商.</p>
                <p>2.在协商过程中，如果提及钱财问题，请小心谨慎，以防诈骗.</p>
                <p>3.协商完成后，请将对方的信息填入下面表单.</p>
                <p>4.选择您方便的快递，我们将随机为您生成订单号，您仅需将对应的条形码带到所选对应的快递点进行扫描即可.</p>
                <p>5.请填写自己的身份证号.</p>
            </div>
            <div>
            	<c:if test="${errorInfo==null }"></c:if>
            	<c:if test="${errorInfo!=null }">${erroeInfo }</c:if>
            </div>
            <form action="${pageContext.request.contextPath }/wuliu" method="post">
            	<input type="hidden" name="pid" value="${product.pid }">
                <div class="name comment">
                    <span class="first_span">换客名：</span><input type="text" class="username_inp_1"><span class="bitian">*</span><span class="username_span_1">对方的姓名</span>
                </div>
                <div class="xx_add comment">
                        <span class="first_span">详细地址：</span>
                        <input type="text" class="xx" name="address">
                    </div>
                <div class="phone comment">
                    <span class="first_span">手机号码：</span><input type="text" name="telephone" class="phone_inp"><span class="bitian">*</span><span  class="phone_span"></span>
                </div>
                <div class="ID_num comment">
                     <span class="first_span">身份证：</span><input class="ID_inp" type="text"><span class="bitian">*</span><span class="ID_num_span">自己的身份证号</span>
                </div>
                 <div class="username comment">
                    <span class="first_span">用户名：</span><input type="text" class="username_inp_2"><span class="bitian" value='lisa'> *</span><span class="username_span_2">填写你的姓名</span>
                </div>
                <div class="yanzheng comment">
                    <span class="first_span">验证码：</span><input type="text" class="code">
                    <input type="text" class="code_yanzheng" disabled="disabled" style="padding-left: 8px"onclick="createCode()">
                    <a class="code_a" onclick="createCode()">看不清楚？换一张</a><span class="tixing"></span>
                </div>
                <div class="submit comment">
                	<input type="submit" value="提交">
                </div>
            </form>
        </div>
        </div>   
    </div>
    <footer class="footer clearfix" style="border:none;">
        <ul>
            <li><a href="#">会员注册</a></li>
            <li><a href="#">易物保障</a></li>
            <li><a href="#">密码找回</a></li>
            <li><a href="#">联系我们</a></li>
        </ul> 
        <p class="clearfix">©2018 SWOP网易 SWOP.com 京ICP证070791号 京公网安备11010502025545号 电子公告服务规则</p>
    </footer>
</body>
<script src="js/sinaFaceAndEffec.js"></script>
</html>