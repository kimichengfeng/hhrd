<%@ page language="java" import="java.util.*,java.net.URL" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>华辉瑞德</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="icon" href="<%=basePath%>images/zhoucheng.ico" mce_href="<%=basePath%>images/zhoucheng.ico" type="image/x-icon">


<!-- bootstarp-css -->
<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css" media="all" />

</head>
<body>
	<!-- banner -->
	<div id="home" class="banner a-banner">
		<!-- container -->
		<div class="container" style="width: 1500px">
			<div class="header">
				<div class="head-logo">
					<a href="index.html"><img src="<%=basePath%>images/logo.png" alt="" /></a>
				</div>
				<div class="top-nav">
					<span class="menu"><img src="<%=basePath%>images/menu.png" alt=""></span>
					<ul class="nav1">
						<li class="hvr-sweep-to-bottom active" style="width: 170px"><a
							href="<%=basePath%>index/index">主页<i><img src="<%=basePath%>images/nav-but1.png"
									alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" style="width: 170px"><a href="<%=basePath%>index/about">关于我们<i><img
									src="<%=basePath%>images/nav-but2.png" alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" style="width: 170px"><a href="<%=basePath%>index/product">产品中心<i><img
									src="<%=basePath%>images/nav-but3.png" alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" style="width: 170px"><a href="<%=basePath%>index/news">行业资讯<i><img
									src="<%=basePath%>images/nav-but4.png" alt="" /></i></a></li>
					<%-- 	<li class="hvr-sweep-to-bottom" style="width: 170px"><a href="<%=basePath%>index/newsg1">人才招聘<i><img
									src="<%=basePath%>images/nav-but4.png" alt="" /></i></a></li> --%>
						<li class="hvr-sweep-to-bottom" style="width: 170px"><a href="<%=basePath%>index/mail">联系我们<i><img
									src="<%=basePath%>images/nav-but5.png" alt="" /></i></a></li>
						<!-- <div class="clearfix"></div> -->
					</ul>
					<!-- script-for-menu -->
					<script>
						$("span.menu").click(function() {
							$("ul.nav1").slideToggle(300, function() {
								// Animation complete.
							});
						});
					</script>
					<!-- /script-for-menu -->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //banner -->
	<!-- mail -->
	<div class="mail">
		<!-- container -->
		<div class="container">
			<div class="map footer-middle wow bounceIn animated" data-wow-delay="0.4s"
				style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<!-- 	<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d789648.8275273686!2d-94.99758062072284!3d39.36606983615378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sweb+designing+software+usa!5e0!3m2!1sen!2sin!4v1434416660807"frameborder="0" style="border:0"></iframe> -->
				<!-- 百度地图 -->

				<!--引用百度地图API-->
				<style type="text/css">
html, body {
	margin: 0;
	padding: 0;
}

.iw_poi_title {
	color: #CC5522;
	font-size: 14px;
	font-weight: bold;
	overflow: hidden;
	padding-right: 13px;
	white-space: nowrap
}

.iw_poi_content {
	font: 12px arial, sans-serif;
	overflow: visible;
	padding-top: 4px;
	white-space: -moz-pre-wrap;
	word-wrap: break-word
}
</style>
				<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>


				<!--百度地图容器-->
				<div style="width: 1100px; height: 550px; border: #ccc solid 1px;" id="dituContent"></div>

				<script type="text/javascript">
					//创建和初始化地图函数：
					function initMap() {
						createMap();//创建地图
						setMapEvent();//设置地图事件
						addMapControl();//向地图添加控件
						addMarker();//向地图中添加marker
					}

					//创建地图函数：
					function createMap() {
						var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
						var point = new BMap.Point(116.632073, 40.145271);//定义一个中心点坐标
						map.centerAndZoom(point, 17);//设定地图的中心点和坐标并将地图显示在地图容器中
						window.map = map;//将map变量存储在全局
					}

					//地图事件设置函数：
					function setMapEvent() {
						map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
						map.enableScrollWheelZoom();//启用地图滚轮放大缩小
						map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
						map.enableKeyboard();//启用键盘上下左右键移动地图
					}

					//地图控件添加函数：
					function addMapControl() {
						//向地图中添加缩放控件
						var ctrl_nav = new BMap.NavigationControl({
							anchor : BMAP_ANCHOR_TOP_LEFT,
							type : BMAP_NAVIGATION_CONTROL_LARGE
						});
						map.addControl(ctrl_nav);
						//向地图中添加缩略图控件
						var ctrl_ove = new BMap.OverviewMapControl({
							anchor : BMAP_ANCHOR_BOTTOM_RIGHT,
							isOpen : 1
						});
						map.addControl(ctrl_ove);
						//向地图中添加比例尺控件
						var ctrl_sca = new BMap.ScaleControl({
							anchor : BMAP_ANCHOR_BOTTOM_LEFT
						});
						map.addControl(ctrl_sca);
					}

					//标注点数组
					var markerArr = [ {
						title : "北京华辉瑞德机械设备有限公司",
						content : "针对个人或企业订购轴承，品质保障，价格优惠！",
						point : "116.631903|40.14556",
						isOpen : 0,
						icon : {
							w : 21,
							h : 21,
							l : 0,
							t : 0,
							x : 6,
							lb : 5
						}
					} ];
					//创建marker
					function addMarker() {
						for (var i = 0; i < markerArr.length; i++) {
							var json = markerArr[i];
							var p0 = json.point.split("|")[0];
							var p1 = json.point.split("|")[1];
							var point = new BMap.Point(p0, p1);
							var iconImg = createIcon(json.icon);
							var marker = new BMap.Marker(point, {
								icon : iconImg
							});
							var iw = createInfoWindow(i);
							var label = new BMap.Label(json.title, {
								"offset" : new BMap.Size(json.icon.lb
										- json.icon.x + 10, -20)
							});
							marker.setLabel(label);
							map.addOverlay(marker);
							label.setStyle({
								borderColor : "#808080",
								color : "#333",
								cursor : "pointer"
							});

							(function() {
								var index = i;
								var _iw = createInfoWindow(i);
								var _marker = marker;
								_marker.addEventListener("click", function() {
									this.openInfoWindow(_iw);
								});
								_iw.addEventListener("open", function() {
									_marker.getLabel().hide();
								})
								_iw.addEventListener("close", function() {
									_marker.getLabel().show();
								})
								label.addEventListener("click", function() {
									_marker.openInfoWindow(_iw);
								})
								if (!!json.isOpen) {
									label.hide();
									_marker.openInfoWindow(_iw);
								}
							})()
						}
					}
					//创建InfoWindow
					function createInfoWindow(i) {
						var json = markerArr[i];
						var iw = new BMap.InfoWindow(
								"<b class='iw_poi_title' title='" + json.title + "'>"
										+ json.title
										+ "</b><div class='iw_poi_content'>"
										+ json.content + "</div>");
						return iw;
					}
					//创建一个Icon
					function createIcon(json) {
						var icon = new BMap.Icon(
								"http://app.baidu.com/map/images/us_mk_icon.png",
								new BMap.Size(json.w, json.h), {
									imageOffset : new BMap.Size(-json.l,
											-json.t),
									infoWindowOffset : new BMap.Size(
											json.lb + 5, 1),
									offset : new BMap.Size(json.x, json.h)
								})
						return icon;
					}

					initMap();//创建和初始化地图
				</script>

				<!-- 百度地图结束 -->
			</div>
			<div class="mail-grids">
				<div class="col-md-6 mail-grid-left wow fadeInLeft animated" data-wow-delay="0.4s"
					style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<h3>联系我们</h3>
					<h5>
						本公司提供各种具有标准结构和标准尺寸系列的轴承 <span>不管您是个人购买还是企业购买，请及时与我们联系。 </span>
					</h5>
					<h4>公司地址</h4>
					<p>
						北京市顺义区顺沙路东海洪商业街。 <span>(洛阳轴承)</span>

					</p>
					<h4>联系方式</h4>
					<p>
						电话: 010—69420885,69429623 <span>手机: 13801291341</span><span>QQ: 2298386904</span> 邮箱: <a
							href="">bjhhrdjx-2009@126.com</a>
					</p>
				</div>
				<div class="col-md-6 contact-form wow fadeInRight animated" data-wow-delay="0.4s"
					style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<form>
						<!-- <input type="text" placeholder="Name" required=""> <input type="text"
							placeholder="Email" required=""> <input type="text" placeholder="Subject" required="">
						<textarea placeholder="Message" required=""></textarea>
						<input type="submit" value="SEND"> -->
						<div class="div-left">
							<table>
								<tr>
									<td vAlign=middle align=center height=14>
										<p align=center>
											<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2298386904&site=qq&menu=yes"><img
												border="0" src="http://wpa.qq.com/pa?p=2:2298386904:53" alt="点击这里给我发消息"
												title="点击这里给我发消息" /></a>
										</p>
									</td>
								</tr>
							</table>
						</div>

					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //mail -->
	<!-- footer -->
	<div class="footer">
		<!-- container -->
		<div class="container">
			<div class="col-md-6 footer-left  wow fadeInLeft animated" data-wow-delay="0.4s"
				style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<ul>
					<li><a href="<%=basePath%>index/index">主页</a></li>
					<li><a href="<%=basePath%>index/about">关于我们</a></li>
					<li><a href="<%=basePath%>index/product">产品中心</a></li>
						<li><a href="<%=basePath%>index/news">行业资讯</a></li>
					<li><a href="<%=basePath%>index/mail">联系我们</a></li>
				</ul>
				<!-- <form>
						<input type="text" placeholder="Email" required=""> <input type="submit"
							value="Subscribe">
					</form> -->
			</div>
			<div class="col-md-3 footer-middle wow bounceIn animated" data-wow-delay="0.4s"
				style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<h3>地址</h3>
				<div class="address">
					<p>
						北京市顺义区顺沙路东海洪商业街 <span>(洛阳轴承)</span>
					</p>
				</div>
				<div class="phone">
					<p>010—69420885,69429623</p>
				</div>
			</div>
			<div class="col-md-3 footer-right  wow fadeInRight animated" data-wow-delay="0.4s"
				style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<a href="#"><img src="<%=basePath%>images/logo.png" alt="" /></a>
				<p>联系人：刘建辉</p>
				<p>手机号：13801291341</p>
				<p>传真：010-52130931</p>
				<p>邮箱：bjhhrdjx-2009@126.com</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //container -->
	</div>
	<!-- //footer -->
	<div class="copyright">
		<!-- container -->
		<div class="container">
			<div class="copyright-left wow fadeInLeft animated" data-wow-delay="0.4s"
				style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<p>版权 &copy; 2016.北京华辉瑞德机械设备有限公司版权所有。</p>
			</div>
			<div class="copyright-right wow fadeInRight animated" data-wow-delay="0.4s"
				style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<div class="bdsharebuttonbox">
					<a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone"
						title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a
						href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren"
						data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin"
						title="分享到微信"></a>
				</div>
				<script>
					window._bd_share_config = {
						"common" : {
							"bdSnsKey" : {},
							"bdText" : "",
							"bdMini" : "2",
							"bdPic" : "",
							"bdStyle" : "0",
							"bdSize" : "16"
						},
						"share" : {}
					};
					with (document)
						0[(getElementsByTagName('head')[0] || body)
								.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
								+ ~(-new Date() / 36e5)];
				</script>
			</div>
			<div class="clearfix"></div>
			<script type="text/javascript">
				$(document).ready(function() {
					/*
					var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear' 
					};
					 */

					$().UItoTop({
						easingType : 'easeOutQuart'
					});

				});
			</script>
			<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover"
				style="opacity: 1;"> </span></a>

		</div>
		<!-- //container -->
	</div>
	<%--<script type="text/javascript">--%>
		<%--var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"--%>
				<%--: " http://");--%>
		<%--document--%>
				<%--.write(unescape("%3Cscript src='"--%>
						<%--+ _bdhmProtocol--%>
						<%--+ "hm.baidu.com/h.js%3F4ee3a1d84daa87d17004026c291b2f45' type='text/javascript'%3E%3C/script%3E"))--%>
	<%--</script>--%>

</body>
</html>