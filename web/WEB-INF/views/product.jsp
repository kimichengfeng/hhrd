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
	<link rel="icon" href="<%=basePath%>images/zhoucheng.ico" mce_href="<%=basePath%>images/zhoucheng.ico" type="image/x-icon">

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="轴承, 华辉瑞德, 北京华辉瑞德, 洛阳轴承,向心轴承,推力轴承, 液体润滑轴承,调心球轴承, 推力球轴承, 深沟球轴承" />

<!-- bootstarp-css -->
<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css" media="all" />
<!--// css -->
<!--fonts-->
<!--/fonts-->
<link href="<%=basePath%>css/animate.css" rel="stylesheet" type="text/css" media="all">

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
						<%-- <li class="hvr-sweep-to-bottom" style="width:170px"><a href="<%=basePath%>index/newsg1">人才招聘<i><img
									src="<%=basePath%>images/nav-but4.png" alt="" /></i></a></li> --%>
						<li class="hvr-sweep-to-bottom" style="width:170px"><a href="<%=basePath%>index/mail">联系我们<i><img
									src="<%=basePath%>images/nav-but5.png" alt="" /></i></a></li>
						<!-- <div class="clearfix"></div> -->
					</ul>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //banner -->
	<!-- product -->


	<!-- //about-bottom -->
	<div class="domain">
		<div class="container">
			<div class="row PageHead">
				<div  class="about-info wow fadeInLeft animated" data-wow-delay="0.4s"
				style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<br/><br/>
					<h3>产品中心</h3>
					<h4 style="text-indent: 2em;">
					本公司除可以提供具有标准结构和标准尺寸系列的滚动轴承以外，还可以根据顾客的个性化要求，提供有特殊使用性能要求的专用轴承。近年来形成以下优势产品群：
				</h4>
				<br/>
				</div>
			</div>
			<!-- <div class="row">
				<div class="col-md-8 col-md-offset-2">
					<form action="https://yourwebsite.com/whmcs/domainchecker.php" method="post">
						<input type="hidden" name="direct" value="true" />
						<div class="row">
							<div class="col-sm-12 form-group">
								<div class="input-group">
									<input class="form-control" type="text" name="domain" size="5" placeholder="轴承类别"/>
<span class="input-group-btn">
<input class="form-control" type="text" name="domain" size="5" placeholder="轴承子类别"/>
</span>
									<span class="input-group-btn">
									<h3>轴承类别</h3>
									<select class="btn btn-default" name="ext">
										<option selected>开式深沟球轴承</option>
										<option>外圈有止动槽的深沟球轴承</option>
										<option>带防尘盖的深沟球轴承</option>

									</select>


									<h3>轴承子类别</h3>
									<select class="btn btn-default" name="ext">
										<option selected>球面内圈调心球轴承</option>
										<option>开式深沟球轴承</option>

									</select> <input class="form-control" type="text" name="domain" size="5" placeholder="型号" />
								</div>
							</div>
						</div>
						<div class="submitbtn">
							<input type="submit" class="btn btn-success btn-lg" value="查询" />
						</div>
					</form>
				</div>
			</div> -->
		</div>
	</div>
	<div class="new-domains">
		<!-- <div class="container">
			<h4 class="domain-head1">轴承列表</h4>
			<div class="new_domain">
				<div class="col-md-6">
					<ul class="list_3">
						<li><span>.nyc</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
						<li><span>.vegas</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
						<li><span>.website</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
						<li><span>.app</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
						<li><span>.ask</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
					</ul>
				</div>
				<div class="col-md-6">
					<ul class="list_3">
						<li><span>.lip</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
						<li><span>.wiki</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
						<li><span>.do</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
						<li><span>.go</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
						<li><span>.zipo</span><a class="dt-sc-button small" href="#" target="_blank">Register</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div> -->
	</div>
	<!-- 添加前 -->
	<div class="container">
		<!-- <h3>主导产品</h3> -->
		<!-- <h5>本公司除可以提供具有标准结构和标准尺寸系列的滚动轴承以外，还可以根据顾客的个性化要求，提供有特殊使用性能要求的专用轴承。近年来形成以下优势产品群：</h5> -->
		<div id="products" class="products">
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<a href="<%=basePath%>images/ly0.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly0.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>转盘轴承</h4>
					<p style="text-indent: 2em;">公司可提供用于雷达跟踪系统，高精度机床转台，医疗器械，风力发电、港口机械、工程机械等的转盘轴承。外径尺寸已经达到11米（目前国内最大），旋转精度可以达到精密级。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<a href="<%=basePath%>images/ly1.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly1.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>轧机轴承</h4>
					<p style="text-indent: 2em;">轧机轴承是用于精密薄板轧机的高精密轴承，该轴承除尺寸精度和旋转精度达到P4、P2级公差外，还要求有很高的截面高度相互差。公司提供的森吉米尔精密轧机轴承，使用寿命已超过了国外同类型产品。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.4s"
						style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<a href="<%=basePath%>images/ly2.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly2.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>轧机轴承</h4>
					<p style="text-indent: 2em;">轧辊用密封四列圆锥滚子轴承除具有高寿命、重载、冲击性能外，针对使用环境条件，重点设计了各种结构的密封装置来防止有害物质侵入轴承内部，其使用寿命明显高于不带密封的开式轴承。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.8s"
						style="visibility: visible; -webkit-animation-delay: 0.8s;">
				<a href="<%=basePath%>images/ly3.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly3.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>风力发电机轴承系列</h4>
					<p style="text-indent: 2em;">包括偏航轴承、变浆轴承、发电机轴承、主轴轴承、变速箱轴承等。产品具有高承载能力、高寿命（20年）和高可靠性等特点。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.8s"
						style="visibility: visible; -webkit-animation-delay: 0.8s;">
				<a href="<%=basePath%>images/ly4.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly4.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>水利工程用轴承</h4>
					<p style="text-indent: 2em;">公司在国内轴承行业率先推出滚动轴承替代滑动轴承使用于水库闸门，产品具有高承载能力、低摩擦、长寿命和高可靠性的特点。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.8s"
						style="visibility: visible; -webkit-animation-delay: 0.8s;">
				<a href="<%=basePath%>images/ly5.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly5.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>剖分式轴承</h4>
					<p style="text-indent: 2em;">剖分式轴承可以替代整体轴承，用于受结构限制拆装困难、检修不便的场合，广泛应用于冶金机械、造纸机械等大型设备，公司可以提供各种结构的剖分式轴承。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.16s"
						style="visibility: visible; -webkit-animation-delay: 0.16s;">
				<a href="<%=basePath%>images/ly6.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly6.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>精密机床轴承 主轴轴承</h4>
					<p style="text-indent: 2em;">公司提供的B3-706、B3-707镗床主轴轴承荣获国家产品质量金质奖，标志着国内轴承制造的最高水平。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.16s"
						style="visibility: visible; -webkit-animation-delay: 0.16s;">
				<a href="<%=basePath%>images/ly7.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly7.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>精密机床轴承 转台轴承</h4>
					<p style="text-indent: 2em;">YRT系列轴承是具有高精度、高刚性、高承载、低摩擦力矩的组合轴承，可承受径向载荷、双向轴向载荷和倾覆力矩。适用于回转工作台、卡盘、铣刀头以及测量和试验设备中的轴承配置。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.16s"
						style="visibility: visible; -webkit-animation-delay: 0.16s;">
				<a href="<%=basePath%>images/ly8.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly8.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>医疗器械轴承</h4>
					<p style="text-indent: 2em;">公司提供的高精度、低噪音、高寿命、高可靠性系列医疗器械主轴轴承，已被广泛应用于伽玛刀、CT机、核磁共振机等大型医疗器械，该类轴承制造技术被列入河南省高新技术产业化重点项目进行推广应用。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.32s"
						style="visibility: visible; -webkit-animation-delay: 0.32s;">
				<a href="<%=basePath%>images/ly9.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly9.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>特种专用轴承   异形轴承  </h4>
					<p style="text-indent: 2em;">异形轴承可以简化主机结构，减轻主机重量，方便安装。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.32s"
						style="visibility: visible; -webkit-animation-delay: 0.32s;">
				<a href="<%=basePath%>images/ly10.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly10.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>汽车轴承 </h4>
					<p style="text-indent: 2em;">提供各种汽车轴承，可以满足不同顾客对产品提出的个性化要求。产品除了为国内上百家整车及零部件生产厂家提供配套服务外，还远销美国、英国、意大利等国家。
					</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.32s"
						style="visibility: visible; -webkit-animation-delay: 0.32s;">
				<a href="<%=basePath%>images/ly11.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly11.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>铁路轴承 </h4>
					<p style="text-indent: 2em;">提供各种结构、精度等级和规格的铁路用机车、客车、货车轴承。准高速铁路客车轴承的各项性能指标均达到和超过设计标准要求，使用可靠度达99.999%，80万公里疲劳寿命可靠度达99%以上。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.46s"
						style="visibility: visible; -webkit-animation-delay: 0.46s;">
				<a href="<%=basePath%>images/ly12.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly12.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>电主轴 </h4>
					<p style="text-indent: 2em;">目前，公司产品能满足磨削、铣削、钻削、高速离心等各种加工性能要求，特别在平面磨削、天文镜片磨削等特种主轴方面积累了丰富的生产经验。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.46s"
						style="visibility: visible; -webkit-animation-delay: 0.46s;">
				<a href="<%=basePath%>images/ly13.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly13.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>绝缘轴承 </h4>
					<p style="text-indent: 2em;">公司提供的绝缘轴承应用于铁路牵引电机、水力发电、火力发电、风力发电设备用电机、煤矿机械用电机等易受电击或有杂散电流通过的场合。</p>
				</div>
			</div>
			<div class="col-md-4 product-grid wow bounceIn animated" data-wow-delay="0.46s"
						style="visibility: visible; -webkit-animation-delay: 0.46s;">
				<a href="<%=basePath%>images/ly14.jpg" class="b-link-stripe b-animate-go1   swipebox" title="">
					<img src="<%=basePath%>images/ly14.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4>陶瓷轴</h4>
					<p style="text-indent: 2em;">陶瓷轴承具有转速和加速能力高、耐磨损、耐磨蚀、摩擦小、刚性大、耐高温、无磁性不导电等优点，应用于使用条件比较苛刻的场合。</p>
				</div>
			</div>
			
			
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="news">
		<div class="container">
			<div class="news-text">
				<h3>合作伙伴</h3>
				<h5>
					本公司所销售产品均有一下正规企业提供<span>保证产品的质量 </span>
				</h5>
			</div>
			<div class="news-grids">
				<div class="col-md-3 news-grid wow fadeInLeft animated" data-wow-delay="0.4s"
					 style="visibility: visible; -webkit-animation-delay: 0.4s;">

					<img src="<%=basePath%>images/img1.jpg" alt="" />
					<div class="news-info">
						<p>洛阳LYC轴承有限公司是中国轴承行业规模最大的综合性轴承制造企业之一。</p>
					</div>
				</div>
				<div class="col-md-3 news-grid wow fadeInLeft animated" data-wow-delay="0.4s"
					 style="visibility: visible; -webkit-animation-delay: 0.4s;">

					<img src="<%=basePath%>images/img2.png" alt="" />
					<div class="news-info">
						<p>SKF集团总部设立于瑞典哥特堡，是轴承科技与制造的领导者，由Sven Wingquist于1907年创立。</p>
					</div>
				</div>
				<div class="col-md-3 news-grid wow fadeInRight animated" data-wow-delay="0.4s"
					 style="visibility: visible; -webkit-animation-delay: 0.4s;">

					<img src="<%=basePath%>images/img3.jpg" alt="" />
					<div class="news-info">
						<p>东莞市TR轴承有限公司的前身是东莞市轴承厂，是带座外球面球轴承的专业生产企业。</p>
					</div>
				</div>
				<div class="col-md-3 news-grid wow fadeInRight animated" data-wow-delay="0.4s"
					 style="visibility: visible; -webkit-animation-delay: 0.4s;">

					<img src="<%=basePath%>images/img4.jpg" alt="" />
					<div class="news-info">
						<p>大连冶金轴承集团有限公司座落于大连瓦房店市瓦窝高新技术工业园区，下辖大连冶金轴承股份有限公司</p>
					</div>
				</div>
				<div class="news-grids">
					<div class="col-md-3 news-grid wow fadeInLeft animated" data-wow-delay="0.4s"
						 style="visibility: visible; -webkit-animation-delay: 0.4s;">

						<img src="<%=basePath%>images/img5.jpg" alt="" />
						<div class="news-info">
							<p>FAG品牌属于德国舍弗勒集团(SCHEAFFLER)旗下，该集团是全球范围内生产滚动轴承和直线运动产品的领导企业，也是汽车制造业中极富声誉的供货商之一</p>
						</div>
					</div>
					<div class="col-md-3 news-grid wow fadeInLeft animated" data-wow-delay="0.4s"
						 style="visibility: visible; -webkit-animation-delay: 0.4s;">

						<img src="<%=basePath%>images/img6.jpg" alt="" />
						<div class="news-info">
							<p>哈尔滨轴承集团公司创建于1950年，是中国轴承行业三大生产基地之一。</p>
						</div>
					</div>
					<div class="col-md-3 news-grid wow fadeInRight animated" data-wow-delay="0.4s"
						 style="visibility: visible; -webkit-animation-delay: 0.4s;">

						<img src="<%=basePath%>images/img7.jpg" alt="" />
						<div class="news-info">
							<p>山东湖西王集团铸业有限公司坐落在中国牡丹之乡菏泽，是一大型现代化的铸造企业。</p>
						</div>
					</div>
					<div class="col-md-3 news-grid wow fadeInRight animated" data-wow-delay="0.4s"
						 style="visibility: visible; -webkit-animation-delay: 0.4s;">

						<img src="<%=basePath%>images/img8.jpg" alt="" />
						<div class="news-info">
							<p>TIMKEN(铁姆肯)公司是全球领先的优质轴承、合金钢及相关部件和配件制造商。</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- 添加完 -->
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
				<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
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
	<!-- script-for-menu -->
	<script>
        $("span.menu").click(function() {
            $("ul.nav1").slideToggle(300, function() {
                // Animation complete.
            });
        });
	</script>
	<!-- /script-for-menu -->
	<script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }

	</script>
	<script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>

</body>
</html>