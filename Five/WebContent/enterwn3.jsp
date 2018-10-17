<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>企业荣誉</title>
<script type="text/javascript" src="res/jquery-3.2.1.js"></script>
    <style type="text/css">
        *{list-style: none;text-decoration: none;}
        .wai{width: 100%;height: 2530px;;}
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
            background: #F2F2F2
        }
        .map img{width: 100%;height: 400px;}

        .p{font-size: 13px;line-height: 16px;margin-left: 6%;color: black;color: grey;}
        .p a{color: grey;}
        .per1{width:320px;height: 1940px;border: 1px solid #ddd;background-color: #ffffff;margin-left: 6%;}
        .about_right1{width:780px;height: 1920px;border: 1px solid #ddd;background-color: #ffffff;padding-top: 20px;
            position: absolute;top:563px;left:33%;}

        .per1 ul li p{color: #0055a2;line-height: 50px;margin: auto;font-size: 22px;}
        .per1 ul{margin-left: -42px;line-height: 50px;margin-top: -2px;}
        .per1 ul li{width: 320px;height:50px;border: 1px solid gainsboro;line-height: 50px;}
        .per1 ul li a{color:grey;}
        .per1 ul li:hover{background-color:#47B4FC;}
        .per1 ul li a:hover{color: #ffffff;}


        .about_right1 {
            width: 780px;
            margin-left: 20px;
            float: left;
            min-height: 1000px;
            background: #fff;
            margin-top: 0px;
            border: 1px #ddd solid;
        }
        .yuan {
            width: 20px;
            height: 20px;
            padding-left: 0px;
            background: #0055a2;
            border-radius: 180px;
        }
        .yxian1 {
            width: 2px;
            height: 55px;
            background: #0055a2;
            margin-left: 9px;

        }
        .right_box {
            float: left;
            margin-left: 50px;
            height: 24px;
            width: 764px;

            text-align: left;
        }
        .right_box p {
            padding: 0px;
            font-size: 18px;
            line-height: 24px;
            height: 0px ;
            color: #0055a2;
            margin-top: 0px;
        }
        .right_box font {
            padding: 0px;
            font-size: 14px;
            color: #a7a7a7;
        }
        .contentDiv {
            padding: 0px;
            display: block;
            white-space: normal;
            word-break: break-all;
        }

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
                <a href="enterwn3.jsp">企业荣誉</a></p>
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
                </ul>
            </div>
            <div class="about_right1" id="about_right1">
                <div class="location">
                    <div>企业荣誉</div>
                </div>
                <div class="contentDiv">
                    <div class="contentDiv_xin">
                        <div class="date_left">
                            <ul>
                                <li class="yuan"><div class="right_box"><p>2010年</p><font>天天快递被评为中国物流十大影响力企业</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2011年</p><font>天天快递被上海市企业诚信创建活动组委会、上海市快递行业协会评选为三星级“诚信创建企业”。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2013/07</p><font>天天快递被评为2013全国交通运输企业诚信建设先进单位。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2013/07</p><font>奚春阳被评为2013全国交通运输行业诚信企业家。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2013/08/28</p><font>天天快递在2013浙江省企业领袖峰会中荣获“特别贡献奖”。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2013/12</p><font>天天快递被评为2013年度中国电子商务物流服务五十强。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2014/02/09</p><font>杭州市公安局为天天快递董事长奚春阳颁发2013年度治安一等荣誉奖章。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2014/09</p><font>天天快递被评为全国质量诚信优秀典型企业。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2015/03/16</p><font>天天快递荣获全国质量和服务诚信优秀企业称号。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2015/04/22</p><font>天天快递淮安有限公司在2015年淮安市邮政行业荣获淮安市快递行业放心消费创建活动先进单位荣誉称号。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2015/05/28</p><font>天天快递荣获2014年度杭州市残疾人按比例就业工作先进单位称号。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2015/07/27</p><font>天天快递有限公司获得“浙江省电子商务和物流协同发展10强企业”荣誉称号</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2015/09/19</p><font>天天快递参加浙江省首届快递业务员职业技能竞赛并荣获多项大奖，荣誉的取得彰显了勇攀高峰的勇气和信心。</font>
                                </div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2015/09</p><font>北京市邮政管理局对在“两项活动”期间表现突出的企业进行表彰奖励，荣获安全保障先进单位称号</font>
                                </div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2015/12</p><font>天天快递北京公司获北京市邮政监管办公室表彰。。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/01/05</p><font>天天快递东莞分拨荣获“2015年度诚信企业”荣誉称号。</font>
                                </div></li><li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/01/15</p><font>丹东市邮政管理局召开2015年度“快递之星”评选表彰大会，两名员工入选丹东市首届“快递之星”称号。</font>
                                </div></li><li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/01/22</p><font>天天快递荣获2015年度责任品牌奖。</font>
                                </div></li><li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/01/26</p><font>天快递淮安公司荣获“全市快递行业放心消费创建活动先进单位”称号。</font>
                                </div></li><li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/04</p><font>天天快递荣获2015年度杭州市残疾人按比例就业工作先进单位称号。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/07/12</p><font>第四届“京交会”快递服务板块总结表彰大会在北京市邮电服务中心召开，天天快递荣获“最佳组织奖”。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/10/24</p><font>由国家交通运输部颁布《交通运输企业安全生产标准化建设等级证明》
                                </font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/10</p><font>天天快递有限公司荣获2016年度“浙江省企业之星”称号。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/11</p><font>天天快递被评为“十二五”浙江省商贸百强企业。</font></div></li>
                                <li class="yxian1"></li>
                                <li class="yuan"><div class="right_box"><p>2016/12</p><font>天天快递有限公司被浙江省物流与采购协会评为创新标杆企业。</font></div></li>
                            </ul>
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