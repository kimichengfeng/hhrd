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
<link rel="icon" href="<%=basePath%>images/zhoucheng.ico" mce_href="<%=basePath%>images/zhoucheng.ico" type="image/x-icon">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="轴承, 华辉瑞德, 北京华辉瑞德, 洛阳轴承,向心轴承,推力轴承, 液体润滑轴承,调心球轴承, 推力球轴承, 深沟球轴承" />

<!-- bootstarp-css -->
<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css" media="all" />
<!--// css -->
<link href="<%=basePath%>css/animate.css" rel="stylesheet" type="text/css" media="all">
<!--start-smoth-scrolling-->
<!--start-smoth-scrolling-->

</head>
<body>
	<!-- banner -->
	<div id="home" class="banner a-banner">
		<!-- container -->
		<div class="container">
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
						<%-- <li class="hvr-sweep-to-bottom" style="width:170px"><a href="<%=basePath%>index/newsg1">人才招聘<i><img
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
	<!-- about -->
	<div class="about-top">
		<!-- container -->
		<div class="container">
			<div class="about-info wow fadeInLeft animated" data-wow-delay="0.4s"
				style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<h3>一句话介绍我们</h3>
				<h5>
					我们只提供最好的 轴承<span>追求品质，精益求精 </span>
				</h5>
			</div>
			<div class="banner-bottom-grids a-banner-bottom-grids">
				<div class="col-md-5 banner-bottom-right wow fadeInRight animated animated"
					data-wow-delay="0.5s" style="visibility: visible; -webkit-animation-delay: 0.5s;">
					<img src="<%=basePath%>images/img1-2.png" alt="">
				</div>
				<div class="col-md-7 a-banner-bottom-text">
					<div class="jumbotron banner-bottom-left wow fadeInLeft animated animated"
						data-wow-delay="0.5s" style="visibility: visible; -webkit-animation-delay: 0.5s;">
						<h3>北京华辉瑞德机械设备有限公司</h3>
						<h5>
							北京市顺义区顺沙路东海洪商业街 <span>(洛阳轴承)</span>
						</h5>
						<p>&nbsp; &nbsp; &nbsp; &nbsp;
							多年来，稳定可靠的产品质量和高于业界的售后水准为公司赢得了市场，公司产品深受国内客户青睐，为冀东水泥、河北钢铁、北京现代、福田汽车、三一重工、首都钢铁等多家知名企业中的多种工业主机厂配套，是国内重要的轴承销售企业之一。
							公司将继续以优质的产品质量、一流的售后服务，愿与新老客户精诚合作，在发展中实现双赢，不断创造业界新高。</p>
						<p>&nbsp; &nbsp; &nbsp; &nbsp; 公司是LYC、DYZV特许授权经销商，除此之外还涉及国内品牌轴承有：
							ZWZ、HRB、TR、TWB、TBM、NF、HXW 公司涉及进口轴承有：SKF、FAG、INA、TIMKEN、NSK、NTN、NACHI、IKO、ASAHI
							。轴承销售类别主要有深沟球轴承、调心球轴承、圆柱滚子轴承、调心滚子轴承、滚针轴承、角接触球轴承、圆锥滚子轴承、推力球轴承、推力滚子轴承、外球面轴承等多个类别。</p>
						<p>&nbsp; &nbsp; &nbsp; &nbsp; 为满足客户的需要，本公司已经形成了良好的进口轴承、国产轴承库存结构，公司库存
							已达5000余万元，一流的企业体系，一流的轴承产品，一流的售后服务，一流的库存查询是我们对用户提供最优质服务的最有力的保证。
							本公司基于对轴承行业长期的摸索与实践，专业的销售团队、稳定的进货源头、大量的库存、齐全的型号、方便快捷的物流服务和最及时的售后服务，已经成为北京华辉瑞德机械设备有限公司每一位员工为广大客户服务的最大优势。
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //container -->
	</div>

	<!-- //about-bottom -->
	<!-- team -->
	<div class="team">
		<!-- container -->
		<div class="container">
			<div class="team-info">
				<h3 class="wow bounceIn animated" data-wow-delay="0.4s"
					style="visibility: visible; -webkit-animation-delay: 0.4s;">我们的授权</h3>
				<div class="team-grids">
					<div class="col-md-3 team-grid wow bounceIn animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
						<img src="<%=basePath%>images/b9.jpg" alt="">
						<!-- <h6>洛阳轴承2012-1013度特许经销证书</h6> -->
						<h6>洛阳轴承2009-1010度特许经销证书</h6>
					</div>
					<div class="col-md-3 team-grid wow bounceIn animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
						<img src="<%=basePath%>images/b10.jpg" alt="">
						<!-- <h6>洛阳轴承2013-1014度特许经销证书</h6> -->
						<h6>洛阳轴承2010-1011度特许经销证书</h6>
					</div>
					<div class="col-md-3 team-grid wow bounceIn animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
						<img src="<%=basePath%>images/b7.jpg" alt="">
						<!-- 	<h6>洛阳轴承2014-1015度特许经销证书</h6> -->
						<h6>洛阳轴承2011-1012度特许经销证书</h6>
					</div>
					<div class="col-md-3 team-grid wow bounceIn animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
						<img src="<%=basePath%>images/b8.jpg" alt="">
						<h6>洛阳轴承2015-1016度特许经销证书</h6>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!-- //container -->
	</div>

	<!-- //team -->
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
				<form>
					<input type="text" placeholder="Email" required=""> <input type="submit"
						value="Subscribe">
				</form>
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
	<script type="text/javascript">
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3F4ee3a1d84daa87d17004026c291b2f45' type='text/javascript'%3E%3C/script%3E"))
	</script>
</body>
</html>