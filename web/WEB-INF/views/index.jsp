<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<meta name="baidu-site-verification" content="PPvMGxhmTk" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="轴承, 华辉瑞德, 北京华辉瑞德, 洛阳轴承,向心轴承,推力轴承, 液体润滑轴承,调心球轴承, 推力球轴承, 深沟球轴承" />
	<link rel="icon" href="<%=basePath%>images/zhoucheng.ico" mce_href="<%=basePath%>images/zhoucheng.ico" type="image/x-icon">
<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css" media="all" />
<%--x--%>
<!--/fonts-->
<link href="<%=basePath%>css/animate.css" rel="stylesheet" type="text/css" media="all" />

<!--start-smoth-scrolling-->
</head>
<body>
	<div id="home" class="banner a-banner">
		<!-- container -->
		<!-- <div class="container" style="width: 1500px"> -->
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
						<%-- <li class="hvr-sweep-to-bottom" style="width: 170px"><a href="<%=basePath%>index/newsg1">人才招聘<i><img
									src="<%=basePath%>images/nav-but4.png" alt="" /></i></a></li> --%>
						<li class="hvr-sweep-to-bottom" style="width: 170px"><a href="<%=basePath%>index/mail">联系我们<i><img
									src="<%=basePath%>images/nav-but5.png" alt="" /></i></a></li>

						<div class="clearfix"></div>
					</ul>
				</div>
			</div>
		</div>

		<!-- //container -->
		<div class="container">
			<div id="top" class="callbacks_container"></div>
		</div>
	</div>
	<%--<div>--%>
		<%--nn查找：<input type="input" name="type" placeholder="请输入型号">--%>
	<%--</div>--%>
	<div class="container">
		<div class="banner-bottom-grids">
			<div class="col-md-10 banner-bottom-grid-text">
				<form action="<%=basePath%>/index/find" method="post" class="bs-example bs-example-form" role="form">
					<div class="row">
						<%--<div class="col-lg-6">--%>
							<%--<div class="input-group">--%>
								<%--<input name="type" type="text" class="form-control" placeholder="请输入型号"/>--%>
								<%--<span class="input-group-btn">--%>
								<%--<button class="btn btn-default" type="submit">查找</button>--%>
							<%--</span>--%>
							<%--</div><!-- /input-group -->--%>
						<%--</div><!-- /.col-lg-6 -->--%>
					</div><!-- /.row -->
				</form>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<!-- container -->
		<div class="container">
			<div class="banner-bottom-grids">
				<div class="col-md-7 banner-bottom-grid-text">
					<div class="jumbotron banner-bottom-left wow fadeInLeft animated" data-wow-delay="0.5s"
						style="visibility: visible; -webkit-animation-delay: 0.5s;">
						<h3>北京华辉瑞德机械设备有限公司</h3>
						<h5>
							北京市顺义区顺沙路东海洪商业街 <span>(洛阳轴承)</span>
						</h5>
						<p style="text-indent: 2em;">北京华辉瑞德机械设备有限公司成立于1993年，其前身是北京阳光兴业机电设备有限公司。公司位于首都北京，注册资本100万元人民币，常年备有大量轴承库存。公司专业从事轴承销售，涉及领域有矿山、水泥、汽车制造、冶金化工、纺织、石油、机床、电子、农业等行业。本公司有多名经验丰富的工程师常年为用户提供设计、选型、安装、维护、保养等配套服务。</p>
						<div class="see-button">
							<a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal"
								href="<%=basePath%>index/about" role="button">查看更多</a>
						</div>
					</div>
				</div>
				<div class="col-md-5 banner-bottom-right wow fadeInRight animated" data-wow-delay="0.5s"
					style="visibility: visible; -webkit-animation-delay: 0.5s;">
					<img src="<%=basePath%>images/4.gif" alt="" />
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //banner-bottom -->
	<div class="copyrights">
		<%--Collect from <a href="http://www.cssmoban.com/">免费网站模板</a>--%>
	</div>
	<!-- specialty -->
	<div class="specialty">
		<!-- container -->
		<div class="container">
			<div class="col-md-5 specialty-info wow fadeInLeft animated" data-wow-delay="0.5s"
				style="visibility: visible; -webkit-animation-delay: 0.5s;">
				<h3>我们的产品</h3>
				<h5>我们提供的产品种类齐全、满足您各种机械的要求</h5>
				<p>
					&nbsp; &nbsp; &nbsp;
					&nbsp;我们的产品包括但不限于向心轴承、推力轴承，液体润滑轴承、不完全液体润滑轴承、无润滑轴承。调心球轴承、调心滚子轴承、圆锥滚子轴承、双列深沟球轴承、推力球轴承、深沟球轴承、角接触球轴承、圆柱滚子轴承、滚针轴承。
					<span>&nbsp; &nbsp; &nbsp; &nbsp;我们的产品涉及的品牌包括但不限于国内品牌轴承有： ZWZ、HRB、TR、TWB、TBM、NF、HXW
						公司涉及进口轴承有：SKF、FAG、INA、TIMKEN、NSK、NTN、NACHI、IKO、ASAHI 。</span>
				</p>
				<div class="see-button">
					<a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal specialty-button"
						href="<%=basePath%>index/product" role="button">查看更多</a>
				</div>
			</div>
			<div class="col-md-7 specialty-grids">
				<div class="specialty-grids-top">
					<div class="col-md-6 service-box wow fadeInRight animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
						<figure class="icon">
							<img src="<%=basePath%>images/1.png" alt="" />
						</figure>
						<h5>单向深沟球轴承</h5>
						<p style="text-indent: 2em;">单向深沟球轴承亦可称为单向离合器，也就是仅能单一方面传动，当动力源传动被动元件时，只有单一方向传动，若动力源改变方面时（如顺时针变为逆时针方向），被动元件之传送功将停止传动。</p>
					</div>
					<div class="col-md-6 service-box wow fadeInLeft animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
						<figure class="icon">
							<img src="<%=basePath%>images/2.png" alt="" />
						</figure>
						<h5>圆锥滚子轴承双列</h5>
						<p style="text-indent: 2em;">圆锥滚子轴承属于分离型轴承，轴承的内、外圈均具有锥形滚道。该类轴承按所装滚子的列数分为单列、双列和四列圆锥滚子轴承等不同的结构型式。</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="specialty-grids-top">
					<div class="col-md-6 service-box wow fadeInRight animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
						<figure class="icon">
							<img src="<%=basePath%>images/3.png" alt="" />
						</figure>
						<h5>SKF轴承</h5>
						<p style="text-indent: 2em;">斯凯孚公司主要客户群来自钢铁业、造纸、水泥、塑胶及各类OEM之制造厂商。此外，SKF台湾亦提供下列各项技术予客户：技术咨询与轴承选择、轴承维修、轴承配组/加工、技术训练。</p>
					</div>
					<div class="col-md-6 service-box wow fadeInLeft animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
						<figure class="icon">
							<img src="<%=basePath%>images/4.png" alt="" />
						</figure>
						<h5>球面滚子轴承</h5>
						<p style="text-indent: 2em;">滚子轴承是用短圆柱、圆锥或腰鼓形滚子作滚动体的滚动轴承。主要有向心短圆柱滚子、双列向心球面滚子、圆锥滚子和推力滚子等结构型式。</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //container -->
	</div>
	<!-- //specialty -->
	<!-- testimonials -->
	<%--<div class="testimonials">--%>
		<%--<div class="container">--%>
			<%--<div class="testimonial-nfo wow fadeInLeft animated" data-wow-delay="0.4s"--%>
				<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>
				<%--<h3>华辉瑞德机械设备有限公司</h3>--%>
				<%--<h5>--%>
					<%--轴承集散地<span>万种型号大本营</span>--%>
				<%--</h5>--%>
			<%--</div>--%>
			<%--<div class="testimonial-grids wow fadeInRight animated" data-wow-delay="0.4s"--%>
				<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>
				<%--<div class="testimonial-grid">--%>
					<%--<p>--%>
						<%--<span>"</span>本公司是洛阳轴承最权威的代理商，同时与多个轴承品牌建立了良好的合作机制，我们会针对您的需求提供最满意的优质服务，同时提供各种大宗团购服务，同时本店还经营各种五金器材，为轴承需求者和相关产品需求者提供全面服务，欢迎您前来进店选购。<span>--%>
							<%--"</span>--%>
					<%--</p>--%>
				<%--</div>--%>
			<%--</div>--%>
		<%--</div>--%>
	<%--</div>--%>
	<!-- //testimonials -->

	<!-- news -->
	<%--<div class="news">--%>
		<%--<div class="container">--%>
			<%--<div class="news-text">--%>
				<%--<h3>合作伙伴</h3>--%>
				<%--<h5>--%>
					<%--本公司所销售产品均有一下正规企业提供<span>保证产品的质量 </span>--%>
				<%--</h5>--%>
			<%--</div>--%>
			<%--<div class="news-grids">--%>
				<%--<div class="col-md-3 news-grid wow fadeInLeft animated" data-wow-delay="0.4s"--%>
					<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>

					<%--<img src="<%=basePath%>images/img1.jpg" alt="" />--%>
					<%--<div class="news-info">--%>
						<%--<p>洛阳LYC轴承有限公司是中国轴承行业规模最大的综合性轴承制造企业之一。</p>--%>
					<%--</div>--%>
				<%--</div>--%>
				<%--<div class="col-md-3 news-grid wow fadeInLeft animated" data-wow-delay="0.4s"--%>
					<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>

					<%--<img src="<%=basePath%>images/img2.png" alt="" />--%>
					<%--<div class="news-info">--%>
						<%--<p>SKF集团总部设立于瑞典哥特堡，是轴承科技与制造的领导者，由Sven Wingquist于1907年创立。</p>--%>
					<%--</div>--%>
				<%--</div>--%>
				<%--<div class="col-md-3 news-grid wow fadeInRight animated" data-wow-delay="0.4s"--%>
					<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>

					<%--<img src="<%=basePath%>images/img3.jpg" alt="" />--%>
					<%--<div class="news-info">--%>
						<%--<p>东莞市TR轴承有限公司的前身是东莞市轴承厂，是带座外球面球轴承的专业生产企业。</p>--%>
					<%--</div>--%>
				<%--</div>--%>
				<%--<div class="col-md-3 news-grid wow fadeInRight animated" data-wow-delay="0.4s"--%>
					<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>

					<%--<img src="<%=basePath%>images/img4.jpg" alt="" />--%>
					<%--<div class="news-info">--%>
						<%--<p>大连冶金轴承集团有限公司座落于大连瓦房店市瓦窝高新技术工业园区，下辖大连冶金轴承股份有限公司</p>--%>
					<%--</div>--%>
				<%--</div>--%>
				<%--<div class="news-grids">--%>
					<%--<div class="col-md-3 news-grid wow fadeInLeft animated" data-wow-delay="0.4s"--%>
						<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>

						<%--<img src="<%=basePath%>images/img5.jpg" alt="" />--%>
						<%--<div class="news-info">--%>
							<%--<p>FAG品牌属于德国舍弗勒集团(SCHEAFFLER)旗下，该集团是全球范围内生产滚动轴承和直线运动产品的领导企业，也是汽车制造业中极富声誉的供货商之一</p>--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="col-md-3 news-grid wow fadeInLeft animated" data-wow-delay="0.4s"--%>
						<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>

						<%--<img src="<%=basePath%>images/img6.jpg" alt="" />--%>
						<%--<div class="news-info">--%>
							<%--<p>哈尔滨轴承集团公司创建于1950年，是中国轴承行业三大生产基地之一。</p>--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="col-md-3 news-grid wow fadeInRight animated" data-wow-delay="0.4s"--%>
						<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>

						<%--<img src="<%=basePath%>images/img7.jpg" alt="" />--%>
						<%--<div class="news-info">--%>
							<%--<p>山东湖西王集团铸业有限公司坐落在中国牡丹之乡菏泽，是一大型现代化的铸造企业。</p>--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="col-md-3 news-grid wow fadeInRight animated" data-wow-delay="0.4s"--%>
						<%--style="visibility: visible; -webkit-animation-delay: 0.4s;">--%>

						<%--<img src="<%=basePath%>images/img8.jpg" alt="" />--%>
						<%--<div class="news-info">--%>
							<%--<p>TIMKEN(铁姆肯)公司是全球领先的优质轴承、合金钢及相关部件和配件制造商。</p>--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="clearfix"></div>--%>
				<%--</div>--%>
			<%--</div>--%>
		<%--</div>--%>
	<%--</div>--%>
	<!-- //news -->
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
	<script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
	<%--<script type="application/x-javascript">--%>
        <%--addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }--%>
	<%--</script>--%>
	<%--<script src="<%=basePath%>js/wow.min.js"></script>--%>
	<%--<script>--%>
        <%--new WOW().init();--%>
	<%--</script>--%>
	<!--start-smoth-scrolling-->
	<script type="text/javascript" src="<%=basePath%>js/move-top.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/easing.js"></script>
	<script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop : $(this.hash).offset().top
                }, 900);
            });
        });
        //添加用户
        function find() {
            var form = document.forms[0];
            form.action = "<%=basePath%>/index/find";

            form.method = "post";
            form.submit();
        }
	</script>
	<%--<script type="text/javascript">--%>

		<%--var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"--%>
				<%--: " http://");--%>
		<%--document.write(unescape("%3Cscript src='"--%>
						<%--+ _bdhmProtocol--%>
						<%--+ "hm.baidu.com/h.js%3F4ee3a1d84daa87d17004026c291b2f45' type='text/javascript'%3E%3C/script%3E"))--%>
	<%--</script>--%>
	<!-- script-for-menu -->
	<script>
        $("span.menu").click(function() {
            $("ul.nav1").slideToggle(300, function() {
                // Animation complete.
            });
        });
	</script>
	<!-- /script-for-menu -->
</body>
</html>