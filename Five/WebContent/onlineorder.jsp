<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>在线下单</title>
<script type="text/javascript" src="res/jquery-3.2.1.js"></script>
<style type="text/css">
* {
	list-style: none;
	text-decoration: none;
}

.wai {
	width: 100%;
	height: 3000px;
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
	width: 1300px;
	border: 0px solid red;
	padding-left: 230px;
}

.daohang2 ul li a:first-child {
	width: 71px;
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

.lun {
	width: 100%;
	height: 1500px;
	border: 0px solid yellow;
	background-color: gainsboro;
}

.map img {
	width: 100%;
	height: 400px;
}

.p {
	font-size: 13px;
	line-height: 16px;
	margin-left: 70px;
	color: black;
	color: grey;
}

.p a {
	color: grey;
}

.per1 {
	width: 290px;
	height: 1020px;
	border: 1px solid #ffffff;
	background-color: #ffffff;
	margin-left: 70px;
}

.per2 {
	width: 755px;
	height: 1000px;
	border: 1px solid #ffffff;
	background-color: #ffffff;
	padding-top: 20px;
	position: absolute;
	top: 563px;
	right: 70px;
}

.per1 ul li p {
	color: #0055a2;
	line-height: 50px;
	margin: auto;
	font-size: 22px;
}

.per1 ul {
	margin-left: -42px;
	line-height: 50px;
	margin-top: -2px;
}

.per1 ul li {
	width: 292px;
	height: 50px;
	border: 1px solid gainsboro;
	line-height: 50px;
}

.per1 ul li a {
	color: grey;
}

.per1 ul li:hover {
	background-color: #47B4FC;
}

.per1 ul li a:hover {
	color: #ffffff;
}

.per2 ul {
	float: left;
}

.per2 ul li p {
	color: #0055a2;
	line-height: 50px;
	margin: auto;
	font-size: 22px;
	margin: auto;
	padding-left: 20px;
}

.per2 ul li {
	width: 755px;;
	height: 50px;
	border: 0px solid gainsboro;
	line-height: 50px;
	margin-left: -40px;
	margin-top: -37px;
	border-bottom: 3px solid gainsboro;
}

.addre {
	padding: 20px;
	display: block;
	white-space: normal;
	word-break: break-all;
}

.addre table {
	border-spacing: 0;
	border-collapse: collapse;
}

.modtab-1 {
	text-align: right;
	padding: 8px 5px 10px 5px;
	width: 80px;
	line-height: 28px;
	vertical-align: middle;
}

.modtab-1 span {
	color: red;
}

.modtab-2 {
	padding: 8px 5px 10px 10px;
	width: 340px;
}

.modtab-2 input {
	line-height: 28px;
	border: 1px #ccc solid;
	padding-left: 10px;
}

.modtab tr td {
	padding-top: 8px;
	padding-bottom: 8px;
	padding-left: 8px;
	margin: 5px;
}

.modtab0 {
	font-size: 16px;
	font-weight: bold;
	color: #0055a2;
}

.homeAddress {
	border-color: #CCCCCC;
	border-style: solid;
	border-width: 1px;
	font-family: arial, sans-serif;
	font-size: 14px;
	height: 80px;
	padding: 5px 10px 5px 10px;
	outline-color: -moz-use-text-color;
	outline-style: none;
	outline-width: medium;
	width: 315px;
	resize: none;
}

textarea {
	overflow: auto;
}

.modtab tr td {
	padding-top: 8px;
	padding-bottom: 8px;
	padding-left: 8px;
	margin: 5px;
}

.modtabcen {
	padding: 0px 0px 10px 0px;
	margin: 0px;
	width: 700px;
	height: 5px;
}

.modtabcen hr {
	width: 700px;
	height: 2px;
	background-color: #0055A2;
}

.modtab-3 input {
	width: 335px;
	height: 40px;
	font-weight: bold;
	font-size: 18px;
	background-color: #0055A2;
	color: #ffffff;
	margin-top: 30px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 80px;
	padding-right: 80px;
	border-style: none;
}
/*隐藏内容*/
.theme-popover {
	z-index: 9999;
	position: fixed;
	top: 50%;
	left: 50%;
	width: 800px;
	height: 500px;
	margin: -250px 0 0 -410px; .
	border-radius: 5px;
	border: solid 2px #666;
	background-color: #fff;
	display: none;
	box-shadow: 0 0 10px #666;
}

.theme-poptit {
	border-bottom: 1px solid #ddd;
	padding: 12px;
	position: relative;
}

.theme-poptit h3 {
	color: #0055a2;
	margin-left: 20px;
}

.theme-poptit .close {
	float: right;
	color: #999;
	padding: 5px;
	margin: -2px -5px -5px;
	font: bold 14px/14px simsun;
}

.theme-popbod {
	padding: 0px 40px 30px 40px;
	color: #444;
	height: 300px;
}

.modtab table {
	border-spacing: 0;
	border-collapse: collapse;
}

.modtab-1 {
	text-align: right;
	padding: 8px 5px 10px 5px;
	width: 80px;
	line-height: 28px;
	vertical-align: middle;
}

.modtab-1 span {
	color: red;
}

.modtab-2 {
	padding: 8px 5px 10px 10px;
	width: 340px;
}

.modtab-2 input {
	line-height: 28px;
	border: 1px #ccc solid;
	padding-left: 10px;
}

.modtab-3 {
	width: 155px;
	
	text-align: center;
	border: 0px #aaa solid;
	line-height: 32px;
	background-color: #fff;
	border-radius: 3px;
}

.modtab-4 {
	margin-left: 20px;
	width: 160px;
	text-align: center;
	border-radius: 3px;
	line-height: 32px;
	background-color: #0055A2;
	color: #fff;
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
/*css代码样式结束*/
.xlbd {
	width: 100%;
	height: 38px;
	margin-top: 15px;
	border: 1px solid #e1e1e1;
	background: #f1f1f1;
}

.xlbd li {
	float: left;
	text-align: center;
}

.xlbd_box1 {
	width: 139px;
	border-right: 1px solid #e1e1e1;
}

.xlbd_box2 {
	width: 148px;
	border-right: 1px solid #e1e1e1;
}

.xlbd_box4 {
	width: 374px;
}

.xlbd_box5 {
	width: 242px;
	border-right: 1px solid #e1e1e1;
}

.xlbd_box6 {
	width: 100px;
}

.ttle_address_xxt_address			li {
	float: left;
	text-align: center;
}
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
	jQuery(document)
			.ready(
					function($) {
						$('#addAddressLibraryLink')
								.click(
										function() {

											$
													.ajax({
														type : "post",
														url : "json/get_addressJson",
														dateType : "json",
														success : function(data) {
															$(".seeyou").remove();
															for (var i = 0; i < data.length; i++) {
																var item = "<ul class='seeyou'><li class='xlbd_box1'>"
																		+ data[i].addressMan
																		+ "</li><li class='xlbd_box2'>"
																		+ data[i].addressPhone
																		+ "</li><li class='xlbd_box5'>"
																		+ data[i].addressName
																		+ "</li><li class='xlbd_box6'> <input type='button' class='a'  value='选择'></li></ul>"
															
																$(".ttle_address_xxt_address").append(item)
															
															}
															$('.a').click(function(){
																var $li=$(this).closest('ul').find('li');
																$(".nameZ").val($li.eq(0).text())
																$(".nameY").val($li.eq(1).text())
																$(".nameC").val($li.eq(2).text())
																$('.theme-popover').hide();
															})

														}
													})

											$('.theme-popover-mask')
													.fadeIn(100);
											$('.theme-popover').slideDown(200);
											var token = $("#cdToken").val();
											$("#token").val(token);
										})
						$('.theme-poptit .close').click(function() {
							$('.theme-popover').hide();
						})

					});
</script>
</head>
<body>
	<div class="wai">
		<!-- 首页第一行-->
		<div class="top">
			<div class="top1">
				<a href="">加入收藏</a> <a href="#">联系我们</a>
			</div>
			<div class="top2">
				<a href="OA.jsp">OA系统</a> <a href="#">企业邮箱</a> <a
					href="user_clearOut">安全退出</a>
				<a href="login.jsp">登录</a> <a href="reg.jsp">注册</a>
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
					<li><a href="#">走进蜗牛</a></li>
				</ul>
				<ul class="one">
					<li><a href="#">蜗牛新闻</a></li>
				</ul>
				<ul class="one">
					<li><a href="#">蜗牛服务</a></li>
				</ul>

				<ul class="one">
					<li><a href="#">蜗牛加盟</a></li>
				</ul>
				<ul class="one">
					<li><a href="person.html">蜗牛人才</a></li>
				</ul>
				<ul class="one">
					<li><a href="#">蜗牛旗下</a></li>
				</ul>
				<ul class="one">
					<li><a href="#">蜗牛国际</a></li>
				</ul>
				<ul class="one">
					<li><a href="#">我的蜗牛</a></li>
				</ul>


			</div>
			<div class="daohang2_5">
				<div class="daohang3">

					<ul class="two">
						<li><a href="#">企业概况</a></li>
						<li><a href="#">企业历程</a></li>
						<li><a href="#">企业荣誉</a></li>
						<li><a href="#">企业文化</a></li>
						<li><a href="#">经营理念</a></li>
						<li><a href="#">企业视频</a></li>
					</ul>
					<ul class="two">
						<li><a href="#">企业新闻</a></li>
						<li><a href="#">信息公告</a></li>
						<li><a href="#">行业动态</a></li>
					</ul>
					<ul class="two">
						<li><a href="#">快递服务</a></li>
						<li><a href="#">增值服务</a></li>
						<li><a href="#">仓配一体化服务</a></li>
						<li><a href="#">电子商务服务</a></li>
						<li><a href="#">服务保障支持</a></li>
						<li><a href="#">服务专区</a></li>
						<li><a href="#">移动应用</a></li>
						<li><a href="#">客户指南</a></li>
					</ul>
					<ul class="two">
						<li><a href="#">加盟须知</a></li>
						<li><a href="#">加盟流程</a></li>
						<li><a href="#">加盟热线</a></li>
						<li><a href="#">招商区域</a></li>
					</ul>
					<ul class="two">
						<li><a href="#">人才计划</a></li>
						<li><a href="#">虚位以待</a></li>
						<li><a href="#">职业成长</a></li>
					</ul>

				</div>
			</div>
		</div>
		<!-- 大图片-->
		<div class="lun">
			<div class="map">
				<img src="picture/map.jpg">
			</div>
			<div class="p">
				<p>
					您现在的位置：<a href="indexjsp">首页></a> <a href="loginsuccess.html">我的蜗牛></a>
					<a href="loginsuccess.html">在线下单</a>
				</p>
			</div>
			<div class="per">
				<div class="per1">
					<ul>
						<li><p>&nbsp;&nbsp;&nbsp;我的蜗牛</p></li>
						<li><a href="loginsuccess.jsp">&nbsp;&nbsp;-&nbsp;用户信息</a></li>
						<li><a href="onlineorder.jsp">&nbsp;&nbsp;-&nbsp;在线下单</a></li>
						<li><a href="order_userOrder">&nbsp;&nbsp;-&nbsp;我的订单</a></li>
						<li><a href="add_userAddressInfo">&nbsp;&nbsp;-&nbsp;我的地址库</a></li>
						<li><a href="pwdmod.jsp">&nbsp;&nbsp;-&nbsp;修改密码</a></li>
					</ul>
				</div>
				<div class="per2">
					<ul>
						<li><p>在线下单</p></li>
					</ul>
					<div class="addre">
						<!-- 表单信息 -->
						<form action="order_onlineOrder" method="post">
							<table class="modtab">
								<tr>
									<td class="modtab0" required="">收件人信息</td>

								</tr>
								<tr>
									<td class="modtab-1"><span>*</span>姓名</td>
									<td class="modtab-2"><input name="inputName" class="nameZ" type="text"
										style="width: 325px; border: 1px solid rgb(204, 204, 204);"
										placeholder="请输入姓名"></td>
									<td colspan="2"><a id="addAddressLibraryLink"> <img
											id="" src="picture/ttjm_1.png" width="22" height="22" /></a> <span
										id=""></span></td>
								</tr>

								<tr>
									<td class="modtab-1"><span>*</span>手机/固话</td>
									<td class="modtab-2"><input name="inputPhone" class="nameY" type="text"
										style="width: 325px; border: 1px solid rgb(204, 204, 204);"
										placeholder="请输入正确的手机号码/固话"></td>
									<td><span id="" class=""></span></td>
								</tr>

								<tr>
									<td class="modtab-1"><span>*</span>收货地址</td>
									<td class="modtab-2"><input name="inputAdd" type="text"  class="nameC"
										style="width: 325px; border: 1px solid rgb(204, 204, 204);"
										placeholder="请输入省/市/区/街道/门牌信息"></td>
									<td><span id="" class=""></span></td>
								</tr>


								<tr>
									<td class="modtab-1"><span></span>备注</td>
									<td class="modtab-2"><textarea name="noteInfo"
											class="homeAddress" placeholder="易碎品、液体、贵重物品等特别说明"></textarea>
								</tr>
							</table>
							<div class="modtabcen">
								<hr>
							</div>

							<table class="modtab">
								<tr>
									<td class="modtab0" required="">寄件人信息</td>
								</tr>
								<tr>
									<td class="modtab-1"><span>*</span>姓名</td>
									<td class="modtab-2"><input readonly="readonly"
										name="outputName"
										value="<s:property value="#session.user.userName" />"
										type="text"
										style="width: 325px; border: 1px solid rgb(204, 204, 204);"
										placeholder="请输入姓名"></td>
									<td><span id="" class=""></span></td>
								</tr>

								<tr>
									<td class="modtab-1"><span>*</span>手机/固话</td>
									<td class="modtab-2"><input readonly="readonly"
										name="outputPhone"
										value='<s:property value="#session.user.userPhone" /> '
										type="text"
										style="width: 325px; border: 1px solid rgb(204, 204, 204);"
										placeholder="请输入正确的手机号码/固话"></td>
									<td><span id="" class=""></span></td>
								</tr>

								<tr>
									<td class="modtab-1"><span>*</span>上门地址</td>
									<td class="modtab-2"><input name="output" type="text"
										style="width: 325px; border: 1px solid rgb(204, 204, 204);"
										placeholder="请输入省/市/区/街道/门牌信息"></td>
									<td><span id="" class=""></span></td>
								</tr>
								<tr>
									<td class="modtab-1"><span></span></td>
									<td class="modtab-3"><input type="submit" value="提交订单"></td>
								</tr>

							</table>
						</form>
					</div>

				</div>
				<div class="theme-popover" style="display: none;">
					<div class="theme-poptit">
						<a href="javascript:;" title="关闭" class="close">×</a>
						<h3>添加地址</h3>
					</div>
					<div class="theme-popbod">
						<div class="xlbd">
							<ul>
								<li class="xlbd_box1">姓名</li>
								<li class="xlbd_box2">联系方式</li>
								<li class="xlbd_box5">地址</li>
								<li class="xlbd_box6">选择</li>
							</ul>
						</div>
						<div class="ttle_address_xxt_address"></div>
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
								<a target="_blank" href="#">OA系统</a>
							</p>
							<p>
								<a target="_blank" href="#">企业邮箱</a>
							</p>
						</li>
						<li class="footerSplitlineLi"><img src="picture/first_02.png"
							width="1px" height="223px"></li>
						<li>
							<p>
								<a href="#">快件查询</a>
							</p>
							<p>
								<a href="#">在线寄件</a>
							</p>
							<p>
								<a href="#">网点查询</a>
							</p>
							<p>
								<a href="#">禁运品</a>
							</p>
							<p>
								<a href="#">计费方式</a>
							</p>
							<p>
								<a href="#">移动应用</a>
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
								<a href="#">蜗牛服务</a>
							</p>
							<p>
								<a href="#">蜗牛加盟</a>
							</p>
							<p>
								<a href="#">蜗牛人才</a>
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

