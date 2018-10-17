<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="res/jquery-3.2.1.js"></script>
<style type="text/css">
* {
	list-style: none;
	text-decoration: none;
}

.wai {
	width: 100%;
	height: 1200px;;
}

.top {
	height: 30px;
	background-color: black;
	text: write;
	width: 100%;
}

.top1 a {
	color: #fff;
	padding-left: 21px;
}

.top2 a {
	color: #fff;
	padding-left: 5px;
	padding-right: 5px;
	font-size: 14px;
}

.top1 {
	float: left;
	font-size: 14px;
	padding-left: 80px;
	padding-top: 5px;
}

.top2 {
	float: right;
	line-height: 28px;
	margin-right: 21px;
	padding-right: 60px;
}

.daohang {
	height: 80px;
	font-size: 100%;
	width: 100%;
	border: 0px solid black;
	z-index: 2;
}

.daohang a {
	text-decoration: none;
	color: #0055a2;
}

.daohang1 {
	float: left;
	width: 200px;
	height: 80px;
	border: 0px solid blue;
	padding-left: 100px;
}

.daohang ul {
	margin: 0px;
	padding: 0px;
}

.daohang ul li {
	height: 80px;
	line-height: 80px;
	float: left;
}

.daohang ul li a {
	padding: 0 15px;
	height: 80px;
	line-height: 80px;
	float: left;
	text-align: center;
	display: block;
}

.daohang2 {
	height: 80px;
	width: 1100px;
	border: 0px solid red;
	padding-left: 230px;
}

.daohang2 ul li a:first-child {
	width: 80px;
	height: 80px;
	line-height: 80px;
}

.daohang2 ul li {
	height: 80px;
	line-height: 80px;
	float: left;
}

.daohang2 ul li  a {
	padding: 0 15px;
	height: 80px;;
	display: block;
}

.daohang2 ul li a:hover {
	background-color: #0055a2;
	color: #fff;
}

.daohang2_5 {
	width: 100%;
	background: rgba(255, 255, 255, 0.5);
	margin: auto;
	position: absolute;
	top: 120px;
	left: 0;
	right: 0;
}

.daohang3 {
	width: 45%;
	border: 0px solid red;
	padding-left: 31%;
}

.daohang3 ul li {
	height: 80px;
	line-height: 80px;
	float: left;
}

.daohang3 ul li  a {
	padding: 0 15px;
	height: 80px;;
	display: block;
}

.daohang3 ul li a:hover {
	background-color: cornflowerblue;
	color: #fff;
}

.fl_s {
	width: 100%;
	height: 567px;
	border: 0px solid red;
}

.tu {
	width: 100%;
	height: 567px;
}

.tu img {
	width: 100%;
	height: 567px;
	display: none;
}

.ups {
	display: none;
}

.btn_left {
	width: 30px;
	height: 44px;
	position: absolute;
	left: 100px;
	top: 350px;
	cursor: pointer;
	background-color: #0055a2;
	alpha
	(opacity=50);
}

.btn_right {
	width: 30px;
	height: 44px;
	position: absolute;
	right: 100px;
	top: 350px;
	cursor: pointer;
	background-color: #0055a2;
	alpha
	(opacity=50);
}

.lun {
	width: 100%;
	height: 1110px;
	border: 0px solid yellow;
	margin: 0 auto;
}

.bigbox {
	width: 100%;
	height: 540px;
	border: 0px solid red;
	margin: 0 auto;
	text-align: center;
}

.box0 {
	width: 100%;
	height: 130px;
	border: 0px solid red;
	text-align: center;
	padding-top: 40px;
}

.box0 a {
	font-size: 26px;
	color: #0055a2;
	line-height: 26px;
}

.box1 {
	width: 100%;
	height: 400px;
	border: 0px solid black;
	padding-left: 45px;
	padding-top: 20px;
	text-align: center;
}

.box1-0 {
	width: 280px;
	height: 280px;
	border: 1px solid black;
	float: left;
	margin-left: 20px;
	line-height: 30px;
}

.box1-0 a img:first-child {
	padding-top: 20px;
}

.box1-1 {
	width: 280px;
	height: 280px;
	border: 1px solid black;
	float: left;
	margin-left: 20px;
	line-height: 30px;
}

.box1-1 a img {
	padding-top: 20px;
}

.box1-2 {
	width: 280px;
	height: 280px;
	border: 1px solid black;
	float: left;
	margin-left: 20px;
	line-height: 30px;
}

.box1-2 a img {
	padding-top: 20px;
}

.box1-3 {
	width: 280px;
	height: 280px;
	border: 1px solid black;
	float: left;
	margin-left: 20px;
	line-height: 30px;
}

.box1-3 a img {
	padding-top: 20px;
}

.box1-1:hover {
	width: 280px;
	height: 300px;
	background-color: cornflowerblue; alpha (opacity=50);
	color: #ffffff;
}

.box1-2:hover {
	width: 280px;
	height: 300px;
	background-color: cornflowerblue; alpha (opacity=50);
	color: #ffffff;
}

.box1-3:hover {
	width: 280px;
	height: 300px;
	background-color: cornflowerblue; alpha (opacity=50);
	color: #ffffff;
}

/*尾页样式css代码开始*/
.Dfooter {
	background: #313234;
	height: 315px;
	width: 100%;
	text-align: center;
}

.footer1 {
	width: 1200px;
	margin: 0px auto;
	height: 315px;
}

.footerZ {
	float: left;
	margin-top: 52px;
	padding-bottom: 25px;
	text-align: center;
	color: #fff;
	font-size: 14px;
}

.footerZ {
	float: left;
	margin-top: 52px;
	text-align: center;
	color: #fff;
}

.footerZ_1 {
	margin-left: 9px
}

.footerZ_1 p {
	width: 100%;
}

.footerR {
	margin-left: 30px;
	float: left;
	margin-top: 52px;
	text-align: center;
	color: #fff;
	font-size: 14px;
}

.footerR_1 {
	margin-left: 9px;
	margin-top: 5px
}

.footerR_1 p {
	width: 100%;
}

.ttkd_dy {
	width: 320px;
	height: 200px;
	float: right;
}

.ttkd_dy img {
	margin-bottom: 22px;
}

.ttkd_dy p {
	margin-bottom: 5px;
}

.footer2L {
	float: left;
	margin-top: 52px;
}

.footer2L ul li {
	float: left;
	margin-right: 50px;
	height: 30px;
	line-height: 30px;
}

.footer2L ul li p {
	text-align: left;
}

.footer2L ul li a {
	text-decoration: none;
	color: #FFF;
	font-size: 14px;
}

.footerSplitlineLi {
	margin-top: 10px;
	margin-left: 10px;
	margin-right: 10px;
	margin-right: 10px;
}

#orderId {
	border: 1px solid #0055A2;
	height: 150px;
	width: 230px;
}

#zycfont {
	font-weight: bold;
	font-size: 19px;
	color: #0C5BA4;
}
/*css代码样式结束*/
</style>
<script type="text/javascript" language="JavaScript">
	/* 导航栏显示*/
	$(function() {
		$(".daohang3  .two").hide();
		$(".daohang2 .one>li").mouseover(
				function() {
					$(".daohang3  .two").hide();
					if (parseInt($(this).parent($(".daohang2")).index()) != 0) {
						$(
								".daohang3 .two:eq("
										+ (parseInt($(this).parent(
												$(".daohang2")).index()) - 1)
										+ ")").show();
					}
				});
		$(".daohang3 .two").mouseover(function() {

			$(this).show();
		})
		$(".daohang3 .two").mouseout(function() {
			$(".daohang3 .two").hide();
		})
	});
	/*轮播效果 */
	$(function() {
		var c = 0
		function timer() {
			c++;
			c = (c == 3) ? 0 : c;
			//获得序号
			$('.fl_s .tu img').eq(c).stop().show().siblings().hide();
		}
		time = setInterval(timer, 2000);
		$('.fl_s').hover(function() {
			//清除定时器//显示图片
			clearInterval(time);
			$('.ups').css({
				'display' : 'block'
			});
		}, function() {
			//回调函数//恢复定时器//隐藏图片
			$('.fl_s .ups').css({
				'display' : 'none'
			});
			time = setInterval(timer, 2000);
		})
		//右单击
		$('.fl_s .btn_right').click(function() {
			c++;
			c = (c == 3) ? 0 : c;
			//获得的序号
			$('.fl_s .tu img').eq(c).stop().show().siblings().hide();
		})
		//左单击
		$('.fl_s .btn_left').click(function() {
			c--;
			c = (c == 0) ? 0 : c;
			//获得序号
			$('.fl_s .tu img').eq(c).stop().show().siblings().hide();

		})
		/* 图片移入移出 */
		$(".box1-1").mousemove(function() {
			$(this).find('img').attr("src", "picture/box1-1.png");
		});
		$(".box1-1").mouseout(function() {
			$(this).find('img').attr("src", "picture/box1.png");
		});

		$(".box1-2").mousemove(function() {
			$(this).find('img').attr("src", "picture/box1-2.png");
		});
		$(".box1-2").mouseout(function() {
			$(this).find('img').attr("src", "picture/box2.png");
		});

		$(".box1-3").mousemove(function() {
			$(this).find('img').attr("src", "picture/box1-3.png");
		});
		$(".box1-3").mouseout(function() {
			$(this).find('img').attr("src", "picture/box3.png");
		});
		$(".alertText").click(function() {
			$(".find1").attr("style", "display:none;")
			$(".find2").attr("style", "display:show;")
		})
		/* 图片移入移出 */
	})
	/*加入收藏*/
	function addFavorite() {
		if (document.all) {//IE
			try {
				window.external.addFavorite(window.location.href,
						document.title);
			} catch (e) {
				alert("加入收藏失败，请使用Ctrl+D进行添加");
			}

		} else if (window.sidebar) {
			window.sidebar.addPanel(document.title, window.location.href, "");
		} else {
			alert("加入收藏失败，请使用Ctrl+D进行添加");
		}
	}
</script>
</head>
<body>
	<div class="wai">
		<!-- 首页第一行-->
		<div class="top">
			<div class="top1">
				<a onclick="addFavorite();" href="#">加入收藏</a> 
				 <a href="#">联系我们</a>
			</div>
			<div class="top2">
				<a href="OA.jsp">OA系统</a> <a href="#">企业邮箱</a> <a
					href="user_clearOut">安全退出</a>				<a href="login.jsp">登录</a> <a href="reg.jsp">注册</a>
			</div>
		</div>
		<div style="clear: both"></div>
		<!-- 导航栏 -->
		<div class="daohang">
			<div class="daohang1">
				<ul>
					<li class="aa"><a><img src="picture/logo.png.png"></a></li>
				</ul>
			</div>

			<div class="daohang2">
				<ul class="one">
					<li><a href="index.jsp">首页</a></li>
				</ul>
				<ul class="one">
					<li><a href="enterwn1.jsp">走进蜗牛</a></li>
				</ul>
				<ul class="one">
					<li><a href="woniuNews.jsp">蜗牛新闻</a></li>
				</ul>
				<ul class="one">
					<li><a href="kdfw.jsp">蜗牛服务</a></li>
				</ul>

				<ul class="one">
					<li><a href="woniuJM.jsp">蜗牛加盟</a></li>
				</ul>
				<ul class="one">
					<li><a href="person.jsp">蜗牛人才</a></li>
				</ul>
				<ul class="one">
					<li><a href="#">蜗牛旗下</a></li>
				</ul>
				<ul class="one">
					<li><a href="#">蜗牛国际</a></li>
				</ul>
				<ul class="one">
					<li><a href="loginsuccess.jsp">我的蜗牛</a></li>
				</ul>


			</div>
			<div class="daohang2_5">
				<div class="daohang3">

					<ul class="two">
						<li><a href="enterwn1.jsp">企业概况</a></li>
						<li><a href="enterwn2.jsp">企业历程</a></li>
						<li><a href="enterwn3.jsp">企业荣誉</a></li>
						<li><a href="enterwn4.jsp">企业文化</a></li>
						<li><a href="enterwn5.jsp">经营理念</a></li>
						<li><a href="enterwn6.jsp">企业视频</a></li>
					</ul>
					<ul class="two">
						<li><a href="woniuNews.jsp">企业新闻</a></li>
						<li><a href="xxgg.jsp">信息公告</a></li>
						<li><a href="hydt.jsp">行业动态</a></li>
					</ul>
					<ul class="two">
						<li><a href="kdfw.jsp">快递服务</a></li>
						<li><a href="zzfw.jsp">增值服务</a></li>
						<li><a href="cpyth.jsp">仓配一体化服务</a></li>
						<li><a href="dzsw.jsp">电子商务服务</a></li>
						<li><a href="fwbzzc.jsp">服务保障支持</a></li>
						<li><a href="fwzc.jsp">服务专区</a></li>
						<li><a href="ydzq.jsp">移动应用</a></li>
						<li><a href="khzn.jsp">客户指南</a></li>
					</ul>



					<ul class="two">
						<li><a href="woniuJM.jsp">加盟须知</a></li>
						<li><a href="JM2.jsp">加盟流程</a></li>
						<li><a href="JM3.jsp">加盟热线</a></li>
						<li><a href="JM4.jsp">招商区域</a></li>
					</ul>
					<ul class="two">
						<li><a href="person.jsp">人才计划</a></li>
						<li><a href="person2.jsp">虚位以待</a></li>
						<li><a href="person3.jsp">职业成长</a></li>
					</ul>

				</div>
			</div>
		</div>
		<!-- 轮播-->
		<div class="lun">
			<div class="fl_s">
				<div class="tu">

					<img src="picture/tt1.jpg" alt="" style="display: block;" /> <img
						src="picture/tt2.jpg" alt="" /> <img src="picture/tt3.jpg" alt="" />

				</div>
				<div class="ups">
					<a href="javascript:void(0)" class="btn_left"></a> <a
						href="javascript:void(0)" class="btn_right"></a>
				</div>
			</div>
			<!-- 中间部分-->
			<div class="bigbox">
				<!-- 客户服务-->
				<div class="box0">
					<a>客户服务</a><br> <a><img src="picture/first_01.png"></a><br>
					<a style="color: darkgray">customer service</a>
				</div>
				<!-- 四个部分-->
				<div class="box1">
					<div class="box1-0">
						<div class="find1">
							<a ><img src="picture/box1-0.png"></a><br>
							<a style="font-size: 26px; color: #0055a2;">快件查询</a><br> <a>快速查询订单详情方便快捷</a>
							<a><img src="picture/box-0-1.png" class="alertText"></a>
						</div>
						<div class="find2" style="display: none;">
							<p id="zycfont">快件查询</p>
							<form action="order_selectOrderID">
								<textarea id="orderId" name="orderID" rows="4"></textarea>
								<br /> <input type="submit" value="查询">
							</form>
						</div>

					</div>
					<div class="box1-1">
						<a href="createorder.jsp"><img src="picture/box1.png"></a><br>
						<a style="font-size: 26px; color: #0055a2;">在线寄件</a><br> <a>客户寄件流程</a><br>
						<a>注意事项寄件方便快捷</a>
					</div>
					<div class="box1-2">
						<a href="baiduAPI.jsp"><img src="picture/box2.png"></a><br>
						<a style="font-size: 26px; color: #0055a2;">网点查询</a><br> <a>全国网点分布查询</a><br>
						<a>根据加盟须知了解具体详情</a><br> <a>方便双方签订了解和熟悉</a>
					</div>
					<div class="box1-3">
						<a href="zxkf.jsp"><img src="picture/box3.png"></a><br>
						<a style="font-size: 26px; color: #0055a2;">在线客服</a><br> <a>直接联系QQ或旺旺客服</a><br>
						<a>或者拨打全国统一客服热线</a><br> <a>4001-888-888</a>
					</div>

				</div>

			</div>


		</div>
		<!--尾页开始-->

		<div class="Dfooter">
			<div class="footer1">
				<div class="ttkd_dy">
					<div class="footerZ">
						<img src="picture/ewm.png" />
						<p>蜗牛快递微信</p>
						<p>服务号扫码关注</p>
						<div style="clear: both"></div>
					</div>
					<div class="footerR">
						<img src="picture/ewm.png" width="103px" height="103px" />
						<p>蜗牛相知微信</p>
						<p>订阅号扫码关注</p>
						<div style="clear: both"></div>
					</div>
				</div>
				<div class="footer2L">
					<ul>
						<li>
							<p>
								<a target="_blank" href="OA.jsp">OA系统</a>
							</p>
							<p>
								<a target="_blank" href="#">企业邮箱</a>
							</p>
						</li>
						<li class="footerSplitlineLi"><img src="picture/first_02.png"
							width="1px" height="223px"></li>
						<li>
							<p>
								<a href="select.jsp">快件查询</a>
							</p>
							<p>
								<a href="createorder1.jsp">在线寄件</a>
							</p>
							<p>
								<a href="baiduAPI.jsp">网点查询</a>
							</p>
							<p>
								<a href="#">禁运品</a>
							</p>
							<p>
								<a href="#">计费方式</a>
							</p>
							<p>
								<a href="ydzq.jsp">移动应用</a>
							</p>
						</li>
						<li class="footerSplitlineLi"><img src="picture/first_02.png"
							width="1px" height="223px"></li>
						<li>
							<p>
								<a href="#">联系我们</a>
							</p>
							<p>
								<a href="#">投诉建议</a>
							</p>
							<p>
								<a href="kdfw.jsp">蜗牛服务</a>
							</p>
							<p>
								<a href="woniuJM.jsp">蜗牛加盟</a>
							</p>
							<p>
								<a href="person.jsp">蜗牛人才</a>
							</p>
						</li>
						<li class="footerSplitlineLi"><img src="picture/first_02.png"
							width="1px" height="223px"></li>
						<li>
							<p>
								<a href="#">客服中心</a>
							</p>
							<p>
								<a target="_blank"
									onclick="javascript:window.open('http://crm2.qq.com/page/portalpage/wpa.php?uin=4001888888&f=1&ty=1&aty=0&a=&from=6', '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');return false;">QQ咨询</a>
							</p>
							<p>
								<a target="_blank"
									href="http://amos.im.alisoft.com/getcid.aw?v=3&uid=蜗牛快递客服中心&site=cntaobao&groupid=220229&s=1&charset=utf-8">旺旺咨询</a>
							</p>
							<p>
								<a href="javascript:void();">全国客服热线：</a>
							</p>
							<p>
								<a href="javascript:void();">4001-888-888</a>
							</p>

						</li>
						<div style="clear: both"></div>
					</ul>
				</div>
				<div style="clear: both"></div>
			</div>
		</div>

		<!--尾页结束-->
	</div>
</body>
</html>