
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>企业概况</title>
   <script type="text/javascript" src="res/jquery-3.2.1.js"></script>
    <style type="text/css">
        *{list-style: none;text-decoration: none;}
        .wai{width: 100%;height: 1590px;;}
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

        .lun {width: 100%;height:1140px;border: 0px solid yellow;background-color: #F2F2F2;}
        .per { padding-bottom: 30px;
            background: #F2F2F2;
        }
        .map img{width: 100%;height: 400px;}

        .p{font-size: 13px;line-height: 16px;margin-left: 6%;color: black;color: grey;}
        .p a{color: grey;}
        .per1{width:300px;height: 1002px;border: 1px solid #ddd;background-color: #ffffff;margin-left: 6%;}
        .per2{width:780px;height: 985px;border: 1px solid #ddd;background-color: #ffffff;padding-top: 20px;
            position: absolute;top:563px;left:33%;}

        .per1 ul li p{color: #0055a2;line-height: 50px;margin: auto;font-size: 22px;}
        .per1 ul{margin-left: -42px;line-height: 50px;margin-top: -2px;}
        .per1 ul li{width: 300px;height:50px;border: 1px solid gainsboro;line-height: 50px;}
        .per1 ul li a{color:grey;}
        .per1 ul li:hover{background-color:#47B4FC;}
        .per1 ul li a:hover{color: #ffffff;}
          .location {
            width: 100%;
            color: rgb(0, 85, 162);
            height: 40px;
            padding-left: 0px;
            padding-top: 0px;
            font: 22px 微软雅黑;
            border-bottom: 3px solid rgb(221, 221, 221);
        }
        .location div {
            margin-left: 20px;
            margin-top: 10px;
        }

        .per2title{font-size: 18px;margin-left: -20px;}
        .per2body{color:#8c8c8c;font-size:16px;line-height: 28px;margin-left: -20px;}
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
                <a href="enterwn1.jsp">企业概况</a></p>
        </div>
        <div class="per">
            <div class="per1">
                <ul class="per2title">
                    <li><p>&nbsp;&nbsp;走进蜗牛</p></li>

                    <li><a href="enterwn1.jsp">-&nbsp;企业概况</a></li>
                    <li><a href="enterwn2.jsp">-&nbsp;企业历程</a></li>
                    <li><a href="enterwn3.jsp">-&nbsp;企业荣誉</a></li>
                    <li><a href="enterwn4.jsp">-&nbsp;企业文化</a></li>
                    <li><a href="enterwn5.jsp">-&nbsp;经营理念</a></li>
                    <li><a href="enterwn6.jsp">-&nbsp;企业视频</a></li>
                </ul>
            </div>
            <div class="per2">
                <ul class="per2title">
                    <li><div class="location">
                    <div>企业概况</div>
                </div></li>


                    <p class="per2body">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“天天快递”品牌创建于1994年，总部位于风景秀丽的杭州，自成立以来天天快递始终专注于服务质量的提升，不断满足市场的需求，建立了庞大的市场采集、市场开发、物流配送、快件收派等业务机构及服务网络。</p>




                    <p class="per2body">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目前天天快递服务客户30万余家，其中世界500强客户100多家，客户群体遍及电子商务、纺织服装、医药化工、高科技IT产业、货代企业、进出口贸易、制造业等多个领域。</p>

                    <img src="picture/qygk.png">
                    <p class="per2body">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     二十多年来，天天快递一直秉承“服务大众、奉献社会”的企业宗旨，本着“快速物流、安全抵达、品质服务、追求满意”的企业理念，坚持“诚信、务实、创新”的企业精神，竭诚为客户提供快捷、安全、贴心、可靠的快递服务。</p>

                </ul>

            </div>
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