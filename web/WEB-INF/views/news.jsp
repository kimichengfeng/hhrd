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

	<meta name="keywords" content="轴承, 华辉瑞德, 北京华辉瑞德, 洛阳轴承,向心轴承,推力轴承, 液体润滑轴承,调心球轴承, 推力球轴承, 深沟球轴承" />
<script type="application/x-javascript">
 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- bootstarp-css -->
<%--<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />--%>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/news/normalize.css">


<link href="<%=basePath%>css/news/bootstrap.min.css" rel="stylesheet" type="text/css">

<link href="<%=basePath%>css/news/bootstrap-theme.min.css" rel="stylesheet" type="text/css">

<link href="<%=basePath%>css/news/site.css" rel="stylesheet" type="text/css">

<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css" media="all" />
<!--// css -->
<script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
<!--fonts-->

<link href="<%=basePath%>css/animate.css" rel="stylesheet" type="text/css" media="all">

<!--start-smoth-scrolling-->

</head>
<body>
	<!-- banner -->
	<div id="home" class="banner a-banner">
		<!-- container -->
		<div class="container" >
			<div class="header">
				<div class="head-logo">
					<a href="index.html"><img src="<%=basePath%>images/logo.png" alt="" /></a>
				</div>
				<div class="top-nav" >
					<span class="menu"><img src="<%=basePath%>images/menu.png" alt=""></span>
					<ul class="nav1">
						<li class="hvr-sweep-to-bottom active" style="width:170px"><a href="<%=basePath%>index/index">主页<i><img
									src="<%=basePath%>images/nav-but1.png" alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" style="width:170px"><a href="<%=basePath%>index/about">关于我们<i><img
									src="<%=basePath%>images/nav-but2.png" alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" style="width:170px"><a href="<%=basePath%>index/product">产品中心<i><img
									src="<%=basePath%>images/nav-but3.png" alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" style="width:170px"><a href="<%=basePath%>index/news">行业资讯<i><img
									src="<%=basePath%>images/nav-but4.png" alt="" /></i></a></li>
					<%-- 	<li class="hvr-sweep-to-bottom" style="width:170px"><a href="<%=basePath%>index/newsg1">人才招聘<i><img
									src="<%=basePath%>images/nav-but4.png" alt="" /></i></a></li> --%>
						<li class="hvr-sweep-to-bottom" style="width:170px"><a href="<%=basePath%>index/mail">联系我们<i><img
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
				<h3>新闻资讯</h3>
				<!-- <h5>
					<span>公司新闻与行业新闻 </span>
				</h5> -->
			</div>
			<!-- news start -->
			<div class="htmleaf-container">

				<header class="htmleaf-header bgcolor-10">

					<h1>
						行业新闻动态 <span>Bearing industry news dynamic</span>
					</h1>



				</header>

				<div class="container mp30">

					<div class="row">

						<div class="col-md-4">

							<div class="panel panel-default">

								<div class="panel-heading">

									<span class="glyphicon glyphicon-list-alt"></span><b>国际咨询</b>
								</div>

								<div class="panel-body">

									<div class="row" >

										<div class="col-xs-12" >

											<ul class="demo1" >
												<li class="news-item" >

													<table cellpadding="4">

														<tbody>
															<tr >

																<td><img src="<%=basePath%>images/guoji.png" width="60" class="img-circle"></td>

																<td>舍弗勒开发新型滚动轴承旋转试验台，该试验台在3,000倍重力加速度下产生高载荷，对轴承进行试验。... <a
																	href="<%=basePath%>index/news1">Read more...</a>
																</td>

															</tr>

														</tbody>
													</table>

												</li>
												
												<li class="news-item">

													<table cellpadding="4">

														<tbody>
															<tr>

																<td><img src="<%=basePath%>images/guoji.png" width="60" class="img-circle"></td>
																<td>三峡集团对德国海上风电资产发起投标，进一步表明中国投资者对欧洲资产的购买兴趣正在大幅增强。... <a
																	href="<%=basePath%>index/news2">Read more...</a>
																</td>

															</tr>

														</tbody>
													</table>

												</li>
												<li class="news-item">

													<table cellpadding="4">

														<tbody>
															<tr>

																<td><img src="<%=basePath%>images/guoji.png" width="60" class="img-circle"></td>
																<td>全球第100万个UniAir在舍弗勒下线，UniAir可根据需求控制发动机气门，实现几乎所有类型的气门升程，从而有效降低能耗与排放，并显著改善扭矩曲线。... <a
																	href="<%=basePath%>index/news3">Read more...</a>
																</td>

															</tr>

														</tbody>
													</table>

												</li>
												<li class="news-item">

													<table cellpadding="4">

														<tbody>
															<tr>

																<td><img src="<%=basePath%>images/guoji.png" width="60" class="img-circle"></td>
																<td>SKF公司推出新高性能快速油水分离设备，能够快速方便分离船用和海上用污油柜中的油和水。... <a
																	href="<%=basePath%>index/news4">Read more...</a>
																</td>

															</tr>

														</tbody>
													</table>

												</li>
												<li style="display: none;" class="news-item">

													<table cellpadding="4">

														<tbody>
															<tr>
																<td><img src="<%=basePath%>images/guoji.png" width="60" class="img-circle"></td>
																<td>Thordon轴承公司开发的海水润滑轴承系统获欧洲提名，据悉，该奖项将于今年4月在荷兰阿姆斯特丹揭晓。... <a
																	href="<%=basePath%>index/news5">Read more...</a>
																</td>

															</tr>

														</tbody>
													</table>

												</li>
												<li style="display: none;" class="news-item">

													<table cellpadding="4">

														<tbody>
															<tr>
																<td><img src="<%=basePath%>images/guoji.png" width="60" class="img-circle"></td>
																<td>斯凯孚推出全新的移动应用程序，该应用程序中的内容为SKF液压驱动法，可在轴承安装的过程中使用。... <a
																	href="<%=basePath%>index/news6">Read more...</a>
																</td>

															</tr>

														</tbody>
													</table>

												</li>

											</ul>

										</div>

									</div>

								</div>

								<div class="panel-footer">



									<ul class="pagination pull-right" style="margin: 0px;">
										<li><a href="http://www.jq22.com/demo/jquery-bootstrup-150504220625/#" class="prev"><span
												class="glyphicon glyphicon-chevron-down"></span></a></li>
										<li><a href="http://www.jq22.com/demo/jquery-bootstrup-150504220625/#" class="next"><span
												class="glyphicon glyphicon-chevron-up"></span></a></li>
									</ul>
									<div class="clearfix"></div>
								</div>

							</div>

						</div>



						<div class="col-md-4">

							<div class="panel panel-default">

								<div class="panel-heading">

									<span class="glyphicon glyphicon-list-alt"></span><b>国内新闻</b>
								</div>

								<div class="panel-body">

									<div class="row">

										<div class="col-xs-12">

											<ul class="demo2" style="overflow-y: hidden; height: 600px;">
												<li class="news-item">徐工自主研制的超大吨位拖拉机油缸在国际市场上突破，400吨级挖掘机油缸，日前装车发往澳大利亚，实现了自主超大吨位挖掘机油缸在国际市场上的突破。... <a
													href="<%=basePath%>index/newsn1">Read more...</a>
												</li>
												<li class="news-item">加快轴承工业强国建设为中国工业作出突出贡献，2016年2月1日，中国轴承工业协会秘书长周宇在接受记者采访时说：“‘十三五’，中国汽车轴承工业增加值将年均递增7%。... <a
													href="<%=basePath%>index/newsn2">Read more...</a>
												</li>
												<li class="news-item">全国润滑油企业联盟在北京隆重成立，43家成员单位向全国润滑油企业发出自律倡议书，要切实做到守法经营、诚信守信,建立诚信体系,提高产品质量,实施品牌战略,接受社会监督,共同提升民族品牌,促进润滑油行业可持续发展。... <a
													href="<%=basePath%>index/newsn3">Read more...</a>
												</li>
												<li class="news-item">市场对塑料成型加工设备需求大幅度提高，许多企业通过与国外同类企业进行合资、合作和购买生产制造许可证等方式，从国外引进先进技术和设计并进行消化吸收，使我国塑料机械产业有了一个显著的提升，产品开始初步满足工程塑料加工工业的一般需求。... <a
													href="<%=basePath%>index/newsn4">Read more...</a>
												</li>
												
											</ul>

										</div>

									</div>

								</div>

								<div class="panel-footer"></div>

							</div>

						</div>



						<div class="col-md-4">

							<div class="panel panel-default">

								<div class="panel-heading">

									<span class="glyphicon glyphicon-list-alt"></span><b>网站公告</b>
								</div>

								<div class="panel-body">

									<div class="row">

										<div class="col-xs-12">

											<ul class="demo2" style="overflow-y: hidden; height:600px;">

											
												
												<li class="news-item">急聘电话销售 客服 网络在线销售 底薪面议... <a
													href="<%=basePath%>index/newsg1">Read more...</a>
												</li>
												<li class="news-item">
													本公司急聘电话销售、网络客服专员，薪资诱人，待遇优厚，欢迎有志人士加入我公司，与我们一起构建轴承行业卓越的互联网时代平台。详情请见人才招聘版块。
												</li>
												<li class="news-item">
													本公司是洛阳轴承最权威的代理商，同时与多个轴承品牌建立了良好的合作机制，我们会针对您的需求提供最满意的优质服务，同时提供各种大宗团购服务，同时本店还经营各种五金器材，为轴承需求者和相关产品需求者提供全面服务，欢迎您前来进店选购。
												</li>
                                                    
											</ul>

										</div>

									</div>

								</div>

								<div class="panel-footer">



									<ul class="pagination pull-right" style="margin: 0px;">
										<li><a href="http://www.jq22.com/demo/jquery-bootstrup-150504220625/#" class="prev"><span
												class="glyphicon glyphicon-chevron-down"></span></a></li>
										<li><a href="http://www.jq22.com/demo/jquery-bootstrup-150504220625/#" class="next"><span
												class="glyphicon glyphicon-chevron-up"></span></a></li>
									</ul>
									<div class="clearfix"></div>
								</div>

							</div>

						</div>

					</div>

				</div>



			</div>



			<!-- 			<script src="./jquery.min(1).js" type="text/javascript"></script> -->

			<script src="<%=basePath%>js/news/jquery.bootstrap.newsbox.min.js" type="text/javascript"></script>

			<script type="text/javascript">
				$(function() {

					$(".demo1").bootstrapNews({

						newsPerPage : 8,

						autoplay : true,

						pauseOnHover : true,

						direction : 'up',

						newsTickerInterval : 4000,

						onToDo : function() {

							//console.log(this);

						}

					});

					$(".demo2").bootstrapNews({

						newsPerPage : 6,

						autoplay : true,

						pauseOnHover : true,

						navigation : false,

						direction : 'down',

						newsTickerInterval : 2500,

						onToDo : function() {

							//console.log(this);

						}

					});

					$(".demo3").bootstrapNews({

						newsPerPage : 5,

						autoplay : false,

						onToDo : function() {

							//console.log(this);

						}

					});

				});
			</script>
			<!-- news end -->
		</div>
		<!-- //container -->
	</div>

	<!-- //about-bottom -->
	<!-- team -->

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
				<%--<form>--%>
					<%--<input type="text" placeholder="Email" required=""> <input type="submit"--%>
						<%--value="Subscribe">--%>
				<%--</form>--%>
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
	<%--<script src="<%=basePath%>js/wow.min.js"></script>--%>
	<%--<script>--%>
        <%--new WOW().init();--%>
	<%--</script>--%>
	<!--start-smoth-scrolling-->
	<%--<script type="text/javascript" src="js/move-top.js"></script>--%>
	<%--<script type="text/javascript" src="js/easing.js"></script>--%>
	<%--<script type="text/javascript">--%>
        <%--jQuery(document).ready(function($) {--%>
            <%--$(".scroll").click(function(event) {--%>
                <%--event.preventDefault();--%>
                <%--$('html,body').animate({--%>
                    <%--scrollTop : $(this.hash).offset().top--%>
                <%--}, 900);--%>
            <%--});--%>
        <%--});--%>
	<%--</script>--%>
</body>
</html>