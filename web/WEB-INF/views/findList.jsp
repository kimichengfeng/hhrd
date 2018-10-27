<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" import="java.util.*,java.net.URL" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<meta name="baidu-site-verification" content="PPvMGxhmTk" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="轴承, 华辉瑞德, 北京华辉瑞德, 洛阳轴承,向心轴承,推力轴承, 液体润滑轴承,调心球轴承, 推力球轴承, 深沟球轴承" />

<!-- bootstarp-css -->
<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css" media="all" />
<!--// css -->
<%--<script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>--%>

<%--<link href="<%=basePath%>css/animate.css" rel="stylesheet" type="text/css" media="all" />--%>
<%--<!--start-smoth-scrolling-->--%>
<%--<script type="text/javascript" src="<%=basePath%>js/move-top.js"></script>--%>
<%--<script type="text/javascript" src="<%=basePath%>js/easing.js"></script>--%>
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
						<%-- 	<li class="hvr-sweep-to-bottom active" ><a
							href="<%=basePath%>index/index">主页<i><img src="<%=basePath%>images/nav-but1.png"
									alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" ><a href="<%=basePath%>index/about">关于我们<i><img
									src="<%=basePath%>images/nav-but2.png" alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" ><a href="<%=basePath%>index/product">产品中心<i><img
									src="<%=basePath%>images/nav-but3.png" alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" ><a href="<%=basePath%>index/news">行业资讯<i><img
									src="<%=basePath%>images/nav-but4.png" alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" ><a href="<%=basePath%>index/newsg1">人才招聘<i><img
									src="<%=basePath%>images/nav-but4.png" alt="" /></i></a></li>
						<li class="hvr-sweep-to-bottom" ><a href="<%=basePath%>index/mail">联系我们<i><img
									src="<%=basePath%>images/nav-but5.png" alt="" /></i></a></li> --%>
						<div class="clearfix"></div>
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
		<div class="container">
			<script src="<%=basePath%>js/responsiveslides.min.js"></script>
			<script>
				// You can also use "$(window).load(function() {"
				$(function() {
					// Slideshow 4
					$("#slider3").responsiveSlides(
							{
								auto : true,
								pager : true,
								nav : false,
								speed : 500,
								namespace : "callbacks",
								before : function() {
									$('.events').append(
											"<li>before event fired.</li>");
								},
								after : function() {
									$('.events').append(
											"<li>after event fired.</li>");
								}
							});

				});
			</script>
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
                        <div class="col-lg-6">
                            <%--<div class="input-group">--%>
                                <%--<input value="${type}" name="type" type="text" class="form-control" placeholder="请输入型号"/>--%>
                                <%--<span class="input-group-btn">--%>
								<%--<button class="btn btn-default" type="submit">查找</button>--%>
							<%--</span>--%>
                            <%--</div><!-- /input-group -->--%>
                        </div><!-- /.col-lg-6 -->
                    </div><!-- /.row -->
                </form>

                <table class="table table-striped">
                    <caption>轴承详情</caption>
                    <thead>
                    <tr>
                        <th>型号</th>
                        <th>原代号</th>
                        <th>库存代码</th>
                        <th>95价格</th>
                        <th>单重</th>
                        <th>包装/内径X外径X高</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items ="${requestScope.map}" var= "m">
                        <tr>
                            <td>${m.value.bear_type}</td>
                            <td>${m.value.old_code}</td>
                            <td>${m.value.storage_code}</td>
                            <td>${m.value.jiu5_price}</td>
                            <td>${m.value.unit_weight}</td>
                            <td>${m.value.pack}</td>
                        </tr>
                    </c:forEach >

                    </tbody>
                </table>

            </div>
        </div>
    </div>
	<!-- //banner -->
	<!-- banner-bottom -->

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