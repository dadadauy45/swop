<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>我的积分</title>
</head>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/jifen.css">
<script src="js/jquery-1.11.2.js"></script>
<body>
	<div class="min-top">
		<div class="min_center">
			<div class="right">
				<span>您好，欢迎来到SWOP！</span>
				<span>我的积分</span>
			</div>
		</div>
	</div>
	<div class="top_box min_center">
		<div class="bg_box">
			<div class="bottom_box">
			<div class="box_img">
				<img src="images/head_1.jpg" alt="">
			</div>
			<div class="right_box">
				<div class="first-div">
					<h3>${user.uname }</h3>
				</div>
				<div class="second-div">
					<span>积分：</span><span>1260</span>
				</div>
				<div class="third-div">这家伙有点懒，还没写个性签名</div>
			</div>
		</div>
		</div>
		
	</div>
	<div class="mainbottom_box min_center">
		<div class="exleft">
			<ul>
				<li><a href="${pageContext.request.contextPath }/personalProduct">返回个人中心</a></li>
				<li class="bgc">积分商城</li>
				<li>积分明细</li>
				<li>赚积分</li>
				<li>卡包</li>
			</ul>
		</div>
		<div class="exright show_exright">
			<div class="big-box">
				<div class="right-title">
					<span>精品好货</span><a href="#">全部</a>
				</div>
				<div class="right-main">
				<div class="right_main_top">
					<div class="right_main_top_1">
						<div class="right_main_top_left">
							<p class="name">iPhone X</p>
							<p class="intro">SWOP会员 稀缺尊贵</p>
							<p class="how_much">69999积分+0元</p>
						</div>
						<div class="right_main_top_right">
							<img src="images/ipx.jpg" alt="">
						</div>
					</div>
					<div class="right_main_top_2">
						<div class="right_main_top_left">
							<p class="name">iPhone X</p>
							<p class="intro">SWOP会员 稀缺尊贵</p>
							<p class="how_much">69999积分+0元</p>
						</div>
						<div class="right_main_top_right">
							<img src="images/ipx2.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="right_main_bottom one">
					<ul>
						<li>
							<div class="img_box"><img src="images/iP1.png" alt=""></div>
							<p class="name">iPhone(32G)</p>
							<p class="how_much">39999积分+1688.00元</p>
						</li>
						<li>
							<div class="img_box"><img src="images/appwa .png" alt=""></div>
							<p class="name">Apple&nbsp;Watch</p>
							<p class="how_much">49999积分+1288.00元</p>
						</li>
						<li>
							<div class="img_box"><img src="images/kp.PNG" alt=""></div>
							<p class="name">Kindle&nbsp;Paperwhite</p>
							<p class="how_much">29999积分+488.00</p>
						</li>
						<li>
							<div class="img_box"><img src="images/tz.jpg" alt=""></div>
							<p class="name">唐装蚂蚁公仔</p>
							<p class="how_much">8999积分</p>
						</li>
						<li>
							<div class="img_box"><img src="images/mc.png" alt=""></div>
							<p class="name">明朝那儿些事全册</p>
							<p class="how_much">6999积分</p>
						</li>
						<li>
							<div class="img_box"><img src="images/ry8.png" alt=""></div>
							<p class="name">荣耀8耳机</p>
							<p class="how_much">7988积分</p>
						</li>
					</ul>
				</div>
				</div>
			</div>
			<div class="big-box clearfix">
				<div class="right-title">
					<span>热门权益</span><a href="#">全部</a>
				</div>
				<div class="right-main">
					<div class="right_main_bottom two">
						<ul>
							<li>
								<div class="img_box"><img src="images/5yuan.png" alt=""></div>
								<p class="name">5元代金券</p>
								<p class="how_much">500积分</p>
							</li>
							<li>
								<div class="img_box"><img src="images/50yuan.png" alt=""></div>
								<p class="name">SWOP超市50元购物券</p>
								<p class="how_much">1000积分</p>
							</li>
							<li>
								<div class="img_box"><img src="images/xc.jpg" alt=""></div>
								<p class="name">洗车代金券</p>
								<p class="how_much">800积分</p>
							</li>
							<li>
								<div class="img_box"><img src="images/55yuan.jpg" alt=""></div>
								<p class="name">保健代金券</p>
								<p class="how_much">500积分</p>
							</li>
							<li>
								<div class="img_box"><img src="images/10yuan1.png" alt=""></div>
								<p class="name">10元话费（阿里通）</p>
								<p class="how_much">6999积分</p>
							</li>
							<li>
								<div class="img_box"><img src="images/aqy.jpg" alt=""></div>
								<p class="name">爱奇艺会员</p>
								<p class="how_much">3900积分</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="big-box clearfix">
				<div class="right-title">
					<span>视频会员</span><a href="#">全部</a>
				</div>
				<div class="right-main">
					<div class="right_main_bottom three">
						<ul>
							<li>
								<div class="img_box"><img src="images/yk.jpg" alt=""></div>
								<p class="name">优酷月度VIP</p>
								<p class="how_much">黄金以上会员专享</p>
							</li>
							<li>
								<div class="img_box"><img src="images/aqy1.jpg" alt=""></div>
								<p class="name">爱奇艺黄金会员</p>
								<p class="how_much">88积分+13元</p>
							</li>
							<li>
								<div class="img_box"><img src="images/mg1.jpg" alt=""></div>
								<p class="name">芒果PC影视会员月卡</p>
								<p class="how_much">88积分+7.8元</p>
							</li>
							<li>
								<div class="img_box"><img src="images/pptv.jpg" alt=""></div>
								<p class="name">PPTV巨力影视会员</p>
								<p class="how_much">500积分</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="big-box clearfix">
				<div class="right-title">
					<span>出行酒店</span><a href="#">全部</a>
				</div>
				<div class="right-main">
					<div class="right_main_bottom four">
						<ul>
							<li>
								<div class="img_box"><img src="images/didi55.jpg" alt=""></div>
								<p class="name">滴滴快车55元红包</p>
								<p class="how_much">黄金以上专享</p>
							</li>
							<li>
								<div class="img_box"><img src="images/bashi.png" alt=""></div>
								<p class="name">3元巴士代金券</p>
								<p class="how_much">500积分</p>
							</li>
							<li>
								<div class="img_box"><img src="images/jiudian.jpg" alt=""></div>
								<p class="name">100元酒店红包</p>
								<p class="how_much">29999积分</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="last_box">
				<span class="first"></span>
				<span class="midd">更多专区敬请期待</span>
				<span class="last"></span>
			</div>
		</div>
		<div class="exright">
			<div class="box">
				<div class="right-title">
					<span class="time">本月</span>
					<div class="right-title-right">
						<span class="get">获取:</span>
						<span class="How_many">50</span>
					</div>
				</div>
				<ul class="two_ul clearfix">
					<li>
						<div class="li_left">
							<div class="where">SWOP超市购物</div>
							<div class="Time">2018-04-08</div>
						</div>
						<div class="li_right">+2</div>
					</li>
					<li>
						<div class="li_left">
							<div class="where">换物街换物</div>
							<div class="Time">2018-04-02</div>
						</div>
						<div class="li_right">+1</div>
					</li>
					<li>
						<div class="li_left">
							<div class="where">托管成功</div>
							<div class="Time">2018-04-01</div>
						</div>
						<div class="li_right">+5</div>
					</li>
				</ul>
			</div>
			<div class="box">
				<div class="right-title">
					<span class="time">03月</span>
					<div class="right-title-right">
						<span class="get">获取:</span>
						<span class="How_many">22</span>
					</div>
				</div>
				<ul class="two_ul clearfix">
					<li>
						<div class="li_left">
							<div class="where">交易退款积分扣回-SWOP超市</div>
							<div class="Time">2018-03-28</div>
						</div>
						<div class="li_right">-1</div>
					</li>
					<li>
						<div class="li_left">
							<div class="where">捐赠物品</div>
							<div class="Time">2018-03-22</div>
						</div>
						<div class="li_right">+5</div>
					</li>
					<li>
						<div class="li_left">
							<div class="where">卖出物品-冰箱</div>
							<div class="Time">2018-03-10</div>
						</div>
						<div class="li_right">+3</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="exright">
			<div class="null_box">
				<span class="first"></span>
				<span class="midd">还没有开放此更能~</span>
				<span class="last"></span>
			</div>
		</div>	
		<div class="exright">
			<div class="null_box">
				<span class="first"></span>
				<span class="midd">您还没有获得优惠卡~</span>
				<span class="last"></span>
			</div>
		</div>
	</div>
	<footer class="footer clearfix">
		<p class="clearfix">©2018 Swop网易 SWOP.com 京ICP证070791号 京公网安备11010502025545号 电子公告服务规则</p>
	</footer>
</body>
<script src="js/jifen.js"></script>
</html>