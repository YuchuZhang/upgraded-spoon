<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>加盟须知</title>
   <script type="text/javascript" src="res/jquery-3.2.1.js"></script>
    <style type="text/css">
        *{list-style: none;text-decoration: none;}
        .wai{width: 100%;height: 1420px;;}
        .top{height: 30px;background-color:black;text:write;width: 100%;}
        .top1 a{color: #fff;padding-left: 21px;}
        .top2 a{color: #fff;padding-left: 5px;padding-right: 5px;font-size: 14px;}
        .top1{float:left;font-size: 14px;padding-left: 80px;padding-top: 5px;}
        .top2{float: right;line-height: 28px;margin-right: 21px;padding-right: 60px;}
        .daohang{height: 80px;font-size: 100%;width: 100%;border: 0px solid black;z-index: 2;}
        .daohang a{text-decoration: none;color: #0055a2;}
        .daohang1{float: left;width: 200px; height: 80px;border: 0px solid blue;padding-left: 100px;}
        .daohang ul{margin: 0px;padding: 0px;}
        .daohang ul li{height: 80px;line-height: 80px;float: left;}
        .daohang ul li a{padding:0 15px;height: 80px;line-height: 80px;float: left;text-align: center;display: block;}
        .daohang2{height: 80px;width:980px;border: 0px solid red;padding-left: 230px;}
        .daohang2 ul li a:first-child{width:71px;height: 80px;line-height: 80px;}
        .daohang2 ul li{height: 80px;line-height: 80px;float: left;}
        .daohang2 ul li  a{padding: 0 15px;height: 80px;;display: block;}
        .daohang2 ul li a:hover{background-color: #0055a2;color: #fff;}

        .daohang2_5{width:100%;background:rgba(255,255,255,0.5);margin:auto;position:absolute;top:120px;left:0;right:0;}
        .daohang3{width:45%;border: 0px solid red;padding-left: 31%;}
        .daohang3 ul li{height: 80px;line-height: 80px;float: left;}
        .daohang3 ul li  a{padding: 0 15px;height: 80px;;display: block;  }
        .daohang3 ul li a:hover{background-color: cornflowerblue;color: #fff;}

        .lun {width: 100%;height:1340px;border: 0px solid yellow;background-color: gainsboro;}
        .map img{width: 100%;height: 400px;}

        .p{font-size: 13px;line-height: 16px;margin-left: 70px;color: black;color: grey;}
        .p a{color: grey;}
        .per1{width:300px;height: 850px;border: 1px solid #ffffff;background-color: #ffffff;margin-left: 90px;}
        .per2{width:855px;height:830px;border: 1px solid #ffffff;background-color: #ffffff;padding-top: 20px;
         position: absolute;top:563px;right:70px; }
        #qxw{font-size: 22px;color: #0055a2;}
        .per2 ul li{margin-top: 11px;color: cornflowerblue;}
        .per2 ul li span{float: right;margin-right: 10px;}
        .per2 ul li a:hover{color: red;}
         .per2 p{margin-left: 50px;}
         .pxnr textarea{width: 150px; height: 60px;}
         .dj ul li{display: inline;}

        .per1 ul li p{color: #0055a2;line-height: 50px;margin: auto;font-size: 22px;}
        .per1 ul{margin-left: -42px;line-height: 50px;margin-top: -2px;}
        .per1 ul li{width: 301px;height:50px;border: 1px solid gainsboro;line-height: 50px;}
        .per1 ul li a{color:grey;}
        .per1 ul li:hover{background-color:#47B4FC;}
        .per1 ul li a:hover{color: #ffffff;}

        /*尾页样式css代码开始*/
        .Dfooter {
            background: #313234;
            height: 315px;
            width: 100%;
            text-align: center;
            margin-top: 30px;
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
            <img src="picture/JM.jpg">
        </div>
        <div class="p">
            <p>您现在的位置：<a href="index.jsp">首页></a>
                <a href="woniuJM.jsp">蜗牛加盟></a>
                <a href="woniuJM.jsp">加盟须知</a></p>
        </div>
        <div class="per">
            <div class="per1">
                <ul>
                    <li><p>&nbsp;&nbsp;&nbsp;蜗牛加盟</p></li>
                    <li><a href="woniuJM.jsp">-&nbsp;加盟须知</a></li>
                    <li><a href="JM2.jsp">-&nbsp;加盟流程</a></li>
                    <li><a href="JM3.jsp">-&nbsp;加盟热线</a></li>
                    <li><a href="JM4.jsp">-&nbsp;招商区域</a></li>
                </ul>
            </div>
            <div class="per2">
                <ul><span id="qxw">加盟须知</span>
                    <hr style="height:1px;border:none;border-top:3px solid blue;" />
                </ul>
                    <p class="requirement">一、加盟商加盟要求</p>
                    <div class="tj_box">
                        <ul>
                            <li class="tj_box_margin1">
                            	<div><font  size="2" color="#808080">企业法定代表人须有初中及以上文化程度，
                            		有2年以上经营管理经验者优先，有团队合作精神，有责任心。</font></div></li>
                            <li class="tj_box_margin2">
                            	<div><font  size="2" color="#808080">依法注册公司，经营范围应有快递服务项目，
                            		办理《快递经营许可证》<br>注册资金：省会城市100万元地级城市以下50万元。
                            			</font></div></li>
                            <li class="tj_box_margin3">
                            	<div><font  size="2" color="#808080">经营过程中需备足流动资金流动资金：
                            		省会城市50万元地级城市30万元，县级城市15万。</font></li>
                        </ul>
                    </div>
                    <p class="requirement1">
                    	二、加盟商应提交的资料及要求</p>
                    <div class="tjd1">
                    	<div><font  size="2" color="#808080">加盟商需提交：《身份证复印件》、《加盟商申请简历表》、《派送范围》、《企业法人营业执照》、《税务登记证》
                        《组织机构代码证》、《道路运输许可证》、《快递业务经营许可证》、《房屋租赁协议》(必须注明租金、期限、房屋面积
                        房屋地址、双方签字)《市场调研报告及运营、投资计划》、《风险措施解决方案》《交接信息》</font><br>
                        <font  size="2" color="#808080">（注：身份证复印件和个人简历必须提供企业法人与职业经理人的，简历填写必须详细）</font></div></div>
                    <div class="tjd2"><div><font  size="2" color="#808080">营业执照的注册资金必须为50万，经营范围必须有快递、速递、寄递等项目。投资计划：机动车辆配置与金额；人员配置与具体人员薪资；通讯设备周转资金具体金额。</font></div></div>
                    <p class="requirement1">三、加盟商开业前培训内容</p>
                <div class="pxnr">
                   <textarea>
                       <font  size="5" color="#808080">企业历史简介以及政策解读</font>
                   </textarea>+
                    <textarea>
                       <font  size="5" color="#808080">快递运作流程信息部系统操作</font>
                   </textarea>+
                    <textarea>
                       <font  size="5" color="#808080">查询系统的操作及语言标准化</font>
                   </textarea>+
                    <textarea>
                       <font  size="5" color="#808080">仲裁系统的操作及经典案例的讲解</font>
                   </textarea>+
                    <textarea>
                       <font  size="5" color="#808080">财务结算系统的操作</font>
                   </textarea>
                </div>
                <p class="requirement1">四、开业前审核标准</p>
                <div class="shbz">
                    <ul>
                        <li>
                        	<font  size="2" color="#808080">
                        		1、全体员工必须着工装(穿带有“蜗牛快递”标识的工作服)。</font></li>
                        <li>
                        	<font  size="2" color="#808080">
                        		2、加盟商必须有一线派送车辆和中转车辆，车辆必须带有“蜗牛快递”标识。</font></li>
                        <li>
                        	<font  size="2" color="#808080">
                        		3、门面必须由总部统一设计(字体、颜色、图案等)，门边必须有“蜗牛快递”字样。</font></li>
                        <li>
                        	<font  size="2" color="#808080">
                        		4、办公设备齐全(电脑、传真、电话、复印机、桌、椅等)。</font></li>
                        <li>
                        	<font  size="2" color="#808080">
                        		5、在办公场所适当的位置装订财务、客服、仓管、快递员相关规章制度及业务操作规范。</font></li>
                    </ul>
                </div>
                <p class="requirement1">五、开业公告</p>
                <div class="shbz">
                    <ul>
                        <li><font  size="2" color="#808080">1、审核通过后，加盟商做好开业准备报总部发布开业公告。</font></li>
                        <li><font  size="2" color="#808080">2、总部以OA公告和业务通告的形式向全网宣布开业。</font></li>
                    </ul>
                </div>
                <!--<p class="djxz">加盟商需要提交的资料(点击可下载)</p>
                <div class="dj">
                    <ul>
                        <li><a href="#">1、加盟商应提交材料明细表</a></li>
                        <li><a href="#">2、蜗牛快递加盟商申请简历表</a></li>
                        <li><a href="#">3、派送范围申报表</a></li>
                        <li><a href="#">4、市场调查报告及运营计划</a></li>
                        <li><a href="#">5、风险措施解决方案</a></li>
                    </ul>
                </div>-->
        </div>
        <table>
        </table>
    </div>

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