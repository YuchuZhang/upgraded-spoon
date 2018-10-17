<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>修改用户信息</title>
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

.persondiv {
	margin-left: 52px;
}

.personphotoi img {
	width: 100px;
	height: 100px;
}

.tx {
	padding: 10px 0px 10px 0px;
	text-align: right;
	width: 60px;
	height: 40px;
	color: #000;
	line-height: 30px;
	font-size: 14px;
}

.tximg {
	width: 350px;
	padding: 10px 20px 10px 0px;
	text-align: left;
	height: 40px;
	color: #787878;
	line-height: 30px;
	font-size: 14px;
}

.personphotoi {
	float: left;
	width: 100px;
	height: 100px;
	margin-left: 40px;
	position: relative;
}

.personphotoi img {
	position: absolute;
	float: left;
	width: 100px;
	height: 100px;
	border-radius: 50px;
	border-radius: 50px;
	border: solid #95C8F1 2px;
}

input[type="file"] {
	display: block;
}

.personphotoi input {
	position: absolute;
	width: 100px;
	height: 100px;
	right: 0;
	top: 0;
	opacity: 0;
}

.nan {
	float: left;
	margin-left: 40px;
	line-height: 30px;
}

.xg {
	margin-top: 10px;
	margin-left: 40px;
	width: 335px;
	height: 30px;
	background: #0055a2;
	border-width: 0px;
	font-size: 16px;
	color: #FFFFFF;
}

.xgzl_box {
	float: left;
	margin-left: 40px;
	width: 335px;
	height: 38px;
	padding-left: 5px;
	border: 1px solid #cacaca;
}

.datainp {
	float: left;
	width: 335px;
	height: 38px;
	padding-left: 5px;
	border: 1px solid #cacaca;
}

.txdate {
	padding-left: 40px;
}

.xg {
	margin-top: 10px;
	margin-left: 40px;
	width: 340px;
	height: 30px;
	background: #0055a2;
	border-width: 0px;
	font-size: 16px;
	color: #FFFFFF;
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
					<li><a href="index.html">首页</a></li>
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
					您现在的位置：<a href="index0.html">首页></a> <a href="person.html">我的蜗牛></a>
					<a href="person.html">用户信息</a>
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
						<li><p>修改用户信息</p></li>
					</ul>
					<div class="persondiv">
						<s:form action="user_updateinfo" namespace="/" method="post"
							enctype="multipart/form-data" theme="simple">
							<s:textfield label="系统id" name="userID"
								value="%{#session.user.UserID}" readonly="true" hidden="true" />
							<s:textfield label="系统id" name="userPWd"
								value="%{#session.user.userPWd}" readonly="true" hidden="true" />
							<table class="persontab">

								<tr>
									<td class="tx">头像</td>
									<td class="tximg">
										<div class="personphotoi">
											<img width="50" height="50"
												src="<s:url action='user_showimg?imgid=%{#session.user.userPicture}'/>" />
											<s:file label="头像" name="doc"></s:file>
										</div>
									</td>
								</tr>
								<tr>
									<td class="tx">昵称</td>
									<td class="tximg"><s:textfield cssClass="xgzl_box"
											label="昵称" name="userName" value="%{#session.user.userName}" /></td>
								</tr>
								<tr>
									<td class="tx">手机号码</td>
									<td class="tximg"><s:textfield label="手机号"
											name="userPhone" cssClass="xgzl_box"
											value="%{#session.user.userPhone}" readonly="true" />
								</tr>
								<tr>
									<td class="tx">性别</td>
									<td class="tximg">
										<div class="nan">
											<s:if test="#session.user.userSex==true">
												<s:radio list="#{1:'男',0:'女'}" label="性别" name="userSex"
													value="0" />
											</s:if>

											<s:else>
												<s:radio list="#{1:'男',0:'女'}" label="性别" name="userSex"
													value="1" />
											</s:else>

										</div>
									</td>
								</tr>
								<tr>
									<td class="tx">出生日期</td>
									<td class="tximg">
										<div class="txdate">
											<s:textfield cssClass="datainp" label="出生日期" name="UserBirth"
												placeholder="YYYY-MM-DD" value="%{#session.user.UserBirth}" />
										</div>
									</td>
								</tr>

								<tr>
									<td class="tx">邮箱</td>
									<td class="tximg"><s:textfield label="邮箱"
											cssClass="xgzl_box" name="UserEmail"
											value="%{#session.user.UserEmail}" placeholder="请填写邮箱" />
								</tr>
								<tr>
									<td class="tx">所在地区</td>
									<td class="tximg"><s:textfield cssClass="xgzl_box"
											label="所在城市" name="UserAdd" placeholder="请填写所在地区"
											value="%{#session.user.UserAdd}" />
								</tr>

								<tr>
									<td class="tx"><input id="" type="hidden" name="" value="">
										<input type="hidden" name="customer.headPortraitUrl" value="">
									</td>
									<td class="tximg"><input type="submit" class="xg"
										value="保存更改" /></a> <a href="login.html"> <input
											type="button" class="xg"
											style="background-color: #aaa; color: #fff;"
											value="取&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;消"></a></td>
								</tr>

							</table>
						</s:form>
					</div>

				</div>
			</div>

		</div>
		 <!--尾页开始-->

    <div class="Dfooter">
        <div class="footer1">
            <div class="ttkd_dy">
                <div class="footerZ">
                    <img src="picture/ewm.png"/>
                    <p>蜗牛快递微信</p>
                    <p>服务号扫码关注</p>
                    <div style="clear:both"></div>
                </div>
                <div class="footerR">
                    <img src="picture/ewm.png" width="103px" height="103px"/>
                    <p>蜗牛相知微信</p>
                    <p>订阅号扫码关注</p>
                    <div style="clear:both"></div>
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
                    <li class="footerSplitlineLi">
                        <img src="picture/first_02.png" width="1px" height="223px"> </li>
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
                    <li class="footerSplitlineLi">
                        <img src="picture/first_02.png" width="1px" height="223px"> </li>
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
                    <li class="footerSplitlineLi">
                        <img src="picture/first_02.png" width="1px" height="223px"> </li>
                    <li>
                        <p>
                            <a href="#">客服中心</a>
                        </p>
                        <p>
                            <a target="_blank"
           onclick="javascript:window.open('http://crm2.qq.com/page/portalpage/wpa.php?uin=4001888888&f=1&ty=1&aty=0&a=&from=6', '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');return false;">QQ咨询</a>
                        </p>
                        <p>
  <a target="_blank" href="http://amos.im.alisoft.com/getcid.aw?v=3&uid=蜗牛快递客服中心&site=cntaobao&groupid=220229&s=1&charset=utf-8">旺旺咨询</a>
                        </p>
                        <p>
                            <a href="javascript:void();">全国客服热线：</a>
                        </p>
                        <p>
                            <a href="javascript:void();">4001-888-888</a>
                        </p>

                    </li>
                    <div style="clear:both"></div>
                </ul>
            </div>
            <div style="clear:both"></div>
        </div>
    </div>

    <!--尾页结束-->

	</div>

</body>
</html>