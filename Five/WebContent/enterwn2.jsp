
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>企业历程</title>
   <script type="text/javascript" src="res/jquery-3.2.1.js"></script>
    <style type="text/css">
        *{list-style: none;text-decoration: none;}
        .wai{width: 100%;height: 2280px;;}
        .top{height: 30px;background-color:black;text:write;width: 100%;}
        .top1 a{color: #fff;padding-left: 21px;}
        .top2 a{color: #fff;padding-left: 5px;padding-right: 5px;font-size: 14px;}
        .top1{float:left;font-size: 14px;padding-left: 6%;padding-top: 5px;}
        .top2{float: right;line-height: 28px;margin-right: 3%;padding-right: 60px;}
        .daohang{height: 80px;font-size: 100%;width: 100%;border: 0px solid black;z-index: 2;}
        .daohang a{text-decoration: none;color: #0055a2;}
        .daohang1{float: left;width: 200px; height: 80px;border: 0px solid blue;padding-left: 7%;margin-right: 10px;}
        .daohang ul{margin: 0px;padding: 0px;}
        .daohang ul li{height: 80px;line-height: 80px;float: left;}
        .daohang ul li a{padding:0 15px;height: 80px;line-height: 80px;float: left;text-align: center;display: block;}
        .daohang2{height: 80px;width:100%;border: 0px solid red;  }
        .daohang2 ul li a:first-child{width:71px;height: 80px;line-height: 80px;}
        .daohang2 ul li{height: 80px;line-height: 80px;float: left;}
        .daohang2 ul li  a{padding: 0 15px;height: 80px;;display: block;}
        .daohang2 ul li a:hover{background-color: #0055a2;color: #fff;}

        .daohang2_5{width:100%;background:rgba(255,255,255,0.5);margin:auto;position:absolute;top:120px;left:0;right:0;}
        .daohang3{width:45%;border: 0px solid red;padding-left: 31%;}
        .daohang3 ul li{height: 80px;line-height: 80px;float: left;}
        .daohang3 ul li  a{padding: 0 15px;height: 80px;;display: block;  }
        .daohang3 ul li a:hover{background-color: cornflowerblue;color: #fff;}

        .lun {width: 100%;height:1500px;border: 0px solid yellow;background-color: #F2F2F2;}
        .per { padding-bottom: 30px;
            background: #F2F2F2
        }
        .map img{width: 100%;height: 400px;}

        .p{font-size: 13px;line-height: 16px;margin-left: 6%;color: black;color: grey;}
        .p a{color: grey;}

        .per1{width:300px;height: 1690px;border: 1px solid #ddd;background-color: #ffffff;margin-left: 6%;}
        .about_right1{width:780px;height: 1670px;border: 1px solid #ddd;background-color: #ffffff;padding-top: 20px;
            position: absolute;top:563px;left:33%; }

        .per1 ul li p{color: #0055a2;line-height: 50px;margin: auto;font-size: 22px;}
        .per1 ul{margin-left: -42px;line-height: 50px;margin-top: -2px;}
        .per1 ul li{width: 300px;height:50px;border: 1px solid gainsboro;line-height: 50px;}
        .per1 ul li a{color:grey;}
        .per1 ul li:hover{background-color:#47B4FC;}
        .per1 ul li a:hover{color: #ffffff;}


        .about_right1 {
            width: 780px;
            margin-left: 0px;
            float: left;
            min-height: 1300px;
            background: #fff;
            margin-top: 0px;
            border: 1px #ddd solid;
        }
        .location {
            width: 100%;
            color: #0055a2;
            height: 40px;
            padding-left: 0px;
            padding-top: 0px;
            font: 22px "微软雅黑";
            border-bottom: 3px solid #ddd;
        }
        .location div {
             margin-left: 20px;
         margin-top: 10px;
            color: #0055a2;

        }
        .sjz_bigbox {
            width: 619px;
            height: 1244px;
            margin: auto;
        }
        .sjz_bigbox_l {
            width: 250px;
            float: left;
        }
        .sjz_bigbox_z{
            width:20px;
            float:left;
            margin-left:50px;
            margin-top:43px;}
        .sjz_bigbox_r {
            width: 250px;
            height: 1000px;
            float: right;
            min-height: 1500px;
        }
        .zd_box {
            width: 250px;
            height: 96px;
            background: #f2f2f2;
            padding-right: 14px;
            margin-top: 9px;
        }
        .zd_box2 {
            width: 250px;
            min-height: 96px;
            background: #f2f2f2;
            padding-left: 14px;
            margin-top: 9px;
        }
        .zd_box3 {
            width: 240px;
            min-height: 160px;
            background: #f2f2f2;
            padding-left: 14px;
            margin-top: 9px;
            padding-right: 10px;
        }
        .zd_box4 {
            width: 238px;
            min-height: 160px;
            background: #f2f2f2;
            padding-left: 14px;
            margin-top: 9px;
            padding-right: 12px;
            text-align: left;
            padding-bottom: 10px;
        }
        .ttkd_jj {
            font-size: 16px;
            color: #a7a7a7;
            text-indent: 32px;
        }
        .contentDiv {
            padding: 20px;
            display: block;
            white-space: normal;
            word-break: break-all;
        }
        .nianfen1 {
            margin-left: 14px;
            font-size: 18px;
            color: #0055a2;
        }
        .nianfen {
            font-size: 18px;
            color: #0055a2;
        }
        .nianfen {
            font-size: 18px;
            color: #0055a2;
        }
        .zd_z1 {
            font-size: 16px;
            color: #0055a2;
            padding-top: 14px;
            padding-bottom: 4px;
        }
        .zd_z2 {
            font-size: 16px;
            color: #a7a7a7;
        }
        .zd_z3 {
            font-size: 16px;
            color: #0055a2;
            padding-top: 14px;
            padding-bottom: 4px;
            text-align: right;
        }
        .sjz_yuan {
            width: 20px;
            height: 20px;
            background: #0055a2;
            border-radius: 180px;
        }
        .sjz_xian {
            width: 4px;
            height: 129px;
            background: #0055a2;
            margin-left: 8px;
        }
        .left_box1 {
            text-align: right;
            margin-top: 192px;
        }
        .left_box2{
            text-align:right;
            margin-top:240px;}
        .left_box3{
            text-align:right;
            margin-top:172px;}
        .left_box4 {
            text-align: right;
            margin-top: 168px;
        }
        .right_box1 {
            margin-top: 40px;
        }
        .right_box2{
            margin-top:170px;}
        .right_box3 {
            margin-top: 106px;
        }
        .sjz_bigbox {
            width: 619px;
            height: 1244px;
            margin: auto;
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
        $(function(){
            $(".daohang3  .two").hide();
            $(".daohang2 .one>li").mouseover(function(){
                $(".daohang3  .two").hide();
                if(parseInt($(this).parent($(".daohang2")).index())!=0){
                    $(".daohang3 .two:eq(" + (parseInt($(this).parent($(".daohang2")).index()) - 1) + ")").show();
                }
            });
            $(".daohang3 .two").mouseover(function(){

                $(this).show();
            })
            $(".daohang3 .two").mouseout(function(){
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
            <a href="">加入收藏</a>
            <a href="#">联系我们</a>
        </div>
        <div class="top2">
      <a href="OA.jsp">OA系统</a> <a href="#">企业邮箱</a> <a
					href="user_clearOut">安全退出</a>
				<a href="login.jsp">登录</a> <a href="reg.jsp">注册</a>
        </div>
    </div>
    <div style="clear:both"></div>
    <!-- 导航栏 -->
    <div class="daohang">
        <div class="daohang1">
            <ul>
                <li class="aa">
                    <a><img src="picture/logo.png.png"></a>
                </li>
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
    <!-- 大图片-->
    <div class="lun">
        <div class="map">
            <img src="picture/zjtt.jpg">
        </div>

        <div class="p">
                <p>您现在的位置：<a href="index.jsp">首页></a>
                    <a href="enterwn1.jsp">走进蜗牛></a>
                    <a href="enterwn2.jsp">企业历程</a></p>
        </div>
        <div class="per">
            <div class="per1">
                <ul>
                    <li><p>&nbsp;&nbsp;&nbsp;走进蜗牛</p></li>

                   <li><a href="enterwn1.jsp">-&nbsp;企业概况</a></li>
                    <li><a href="enterwn2.jsp">-&nbsp;企业历程</a></li>
                    <li><a href="enterwn3.jsp">-&nbsp;企业荣誉</a></li>
                    <li><a href="enterwn4.jsp">-&nbsp;企业文化</a></li>
                    <li><a href="enterwn5.jsp">-&nbsp;经营理念</a></li>
                    <li><a href="enterwn6.jsp">-&nbsp;企业视频</a></li>
                </ul>
            </div>
            <div class="about_right1" id="about_right1">
                <div class="location">
                    <div>企业历程</div>
                </div>
                <div class="contentDiv">
                    <div class="contentDiv_xin">
                        <div class="ttkd_jj" >“天天快递”品牌创建于1994年，总部位于风景秀丽的杭州，自成立以来天天快递始终专注于服务质量的提升，不断满足市场的需求，建立了庞大的市场采集、市场开发、物流配送、快件收派等业务机构及服务网络。</div>
                        <div>
                            <div class="sjz_bigbox" style="float: left">
                                <div class="sjz_bigbox_l">
                                    <ul>
                                        <li class="left_box1">
                                            <p class="nianfen">2003年</p>
                                            <div class="zd_box">
                                                <p class="zd_z1">夯实基础</p>
                                                <font class="zd_z2">全网络加盟公司突破100家</font><br>
                                                <font class="zd_z2">全年快件总量突破440万件</font>
                                            </div>
                                        </li>
                                        <li class="left_box2">
                                            <p class="nianfen">2012/08/16</p>
                                            <div class="zd_box">
                                                <p class="zd_z1">重组突围</p>
                                                <font class="zd_z2">奚春阳出资收购并重组</font><br>
                                                <font class="zd_z2">天天快递开创天天新时代</font>
                                            </div>
                                        </li>
                                        <li class="left_box3">
                                            <p class="nianfen">2015/09/25</p>
                                            <div class="zd_box">
                                                <p class="zd_z1">战略合作</p>
                                                <font class="zd_z2">天天快递与申通快递</font><br>
                                                <font class="zd_z2">战略合作，开启新的征程</font>
                                            </div>
                                        </li>
                                        <li class="left_box4">
                                            <p class="nianfen">2016/02/25</p>
                                            <div class="zd_box4">
                                                <p class="zd_z3">资本助力</p>
                                                <font class="zd_z2">天天快递召开战略合作发布会，宣布完成A轮融资，6月16日召开天天快递暨云仓项目媒体见面会，宣布将于2016年底完成B轮融资，天天将在资本的助推下，加大基础设施建设，全面提升服务质量。</font>
                                            </div>
                                        </li>
                                        <!--                       	<li class="left_box2">
                                                                    <p class="nianfen">未来</p>
                                                                    <div class="zd_box1">
                                                                        <font class="zd_z2">我们一起期待</font>
                                                                    </div>
                                                                </li>-->
                                    </ul>
                                </div>
                                <div class="sjz_bigbox_z">
                                    <ul>
                                        <li class="sjz_yuan"></li>
                                        <li class="sjz_xian"></li>
                                        <li class="sjz_yuan"></li>
                                        <li class="sjz_xian"></li>
                                        <li class="sjz_yuan"></li>
                                        <li class="sjz_xian"></li>
                                        <li class="sjz_yuan"></li>
                                        <li class="sjz_xian"></li>
                                        <li class="sjz_yuan"></li>
                                        <li class="sjz_xian"></li>
                                        <li class="sjz_yuan"></li>
                                        <li class="sjz_xian"></li>
                                        <li class="sjz_yuan"></li>
                                        <li class="sjz_xian"></li>
                                        <li class="sjz_yuan"></li>
                                        <li class="sjz_xian"></li>
                                        <li class="sjz_yuan"></li>
                                    </ul>
                                </div>
                                <div class="sjz_bigbox_r">
                                    <ul>
                                        <li class="right_box1">
                                            <p class="nianfen1">1994/10/08</p>
                                            <div class="zd_box2">
                                                <p class="zd_z1">乘势起航</p>
                                                <font class="zd_z2">天天快递公司正式成立</font>
                                            </div>
                                        </li>
                                        <li class="right_box2">
                                            <p class="nianfen1">2010年</p>
                                            <div class="zd_box2">
                                                <p class="zd_z1">合作互补</p>
                                                <font class="zd_z2">海航集团出资控股天天快递</font><br>
                                                <font class="zd_z2">并对天天快递进行资源整合</font>
                                            </div>
                                        </li>
                                        <li class="right_box2">
                                            <p class="nianfen1">&nbsp;</p>
                                            <div class="zd_box3">
                                                <p class="zd_z1">飞速发展</p>
                                                <font class="zd_z2">目前，公司网点数量达一万多个，一级加盟商近700家网络遍布300多个地级市2800多个县班车30000多辆，航空线路400多条，拥有4000多个客服坐席。</font>
                                            </div>
                                        </li>
                                        <li class="right_box3">
                                            <p class="nianfen1">2015/11/11</p>
                                            <div class="zd_box3">
                                                <p class="zd_z1">质的跨越</p>
                                                <font class="zd_z2">2015年双十一当日，天天快递件量突破1500万单，跻身快递业“千万级俱乐部”，下单签收率达91.61%，取得行业第二的好成绩。</font>
                                            </div>
                                        </li>
                                        <li class="right_box3">
                                            <p class="nianfen1">2016/04/11</p>
                                            <div class="zd_box4">
                                                <p class="zd_z1">强强联合</p>
                                                <font class="zd_z2">天天快递与菜鸟网络在杭州举行战略合作发布会，双方共同启动“云+端”战略合作。天天快递弯道超车，全面开启“云+端”时代，成为首家全面打通“物流云+用户端”快递公司。</font>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>		</div>
        </div>
        <table>

        </table>
    </div>

</div>

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
                            <a target="_blank" href="OA.jsp">OA系统</a>
                        </p>
                        <p>
                            <a target="_blank" href="#">企业邮箱</a>
                        </p>
                    </li>
                    <li class="footerSplitlineLi">
                        <img src="picture/first_02.png" width="1px" height="223px"> </li>
                    <li>
                        <p>
                            <a href="select.jsp">快件查询</a>
                        </p>
                        <p>
                            <a href="onlineorder1.jsp">在线寄件</a>
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
                            <a href="kdfw.jsp">蜗牛服务</a>
                        </p>
                        <p>
                            <a href="woniuJM.jsp">蜗牛加盟</a>
                        </p>
                        <p>
                            <a href="person.jsp">蜗牛人才</a>
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
</body>
</html>