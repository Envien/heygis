<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
	<head>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=fUcsLQ6HipBeGCQUMrpNKhqt"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="js/jquery.form.js"></script>
		<script type="text/javascript" src="js/loginJS.js"></script>
		<link href="css/navCSS.css" rel="stylesheet" type="text/css">
		<link href="css/footStyle.css" rel="stylesheet" type="text/css">
		<link href="css/indexSourceStyle.css" rel="stylesheet" type="text/css">
		<link href="css/loginStyle.css" rel="stylesheet" type="text/css" />
		<link href="css/main.css" rel="stylesheet" type="text/css" />
		<title>heygis-首页</title>
	</head>

	<body>
		<div class="navbar navbar-default navbar-fixed-top navbar-inverse nav">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp"><span class="heygis">HeyGIS</span></a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-ex-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active">
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="index.jsp#bbs">论坛区</a>
						</li>
						<li>
							<a href="sourceServlet">资源区</a>
						</li>
						<li>
							<a href="index.jsp#lkdVR">林科大全景</a>
						</li>
					<%if(session.getAttribute("loged") != null){ %>
						<%if(session.getAttribute("loged").equals(true)){ %>
						<li>
							<a href="selfCenterServlet">个人中心</a>
						</li>
						<li>
							<a class="btn" href="javascript:document:logout.submit()" >退出</a>
						</li>
						<%} %>
				<%}else{ %>
						<li>
							<a class="btn theme-login" href="javascript:;">登录</a>
						</li>
						<li>
							<a class="btn " href="register.jsp">注册</a>
						</li>
					<%} %>
					</ul>
				</div>
			</div>
		</div>
		<div class="site-wrapper area">
			<div class="site-wrapper-inner area">
				<div class="cover-container">
					<div class="innered">
						<h1 class="cover-heading">欢迎来到GIS协会</h1>
						<p class="lead">LET US TAKE YOU DOWN!</p>
						<br /><br /><br />
						<p class="lead">你以为我们应该有学术社团的严肃?不，我们只是严谨。<br />
							你以为我们应该有艺体社团的多样？不，我们只是专一。那GIS协会有什么好骄傲？<br />
							我们的确没什么了不起，只是我们一直坚持授新生以渔，学会一门编程语言是为了培养新生的编程思维；<br />
							我们没什么了不起，只是我们富有无限创造力，总结大会上学员的作品总能让老师称赞；<br />
							我们没什么了不起，只是到最后选择我们的你们都成为了了不起！
						</p>
						<a href=""><button class="btn btn-lg btn-toolbar">加入我们!</button><a>
					</div>
				</div>
			</div>
		</div>
		<div class="section bbscontainer"  id="bbs">
			<div class="container-fluid" style="padding: 0px;">
				
				<section id="one" class="wrapper spotlight style1">
					<div class="col-md-12">
						<h1 class="text-center text-primary" >论坛区</h1>
					</div>
					<div class="inner">
						<a href="forumsServlet?fid=1&page=1" class="image"><img src="img/bbs-1.JPG" alt="" /></a>
						<div class="content">
							<h2 class="major">课程区</h2>
							<p>你要追求足够好，而不是学了就放，放了就忘。
							</p>
							<a href="#" class="special">Learn more</a>
						</div>
					</div>
				</section>

				<!-- Two -->
				<section id="two" class="wrapper alt spotlight style2">
					<div class="inner style22">
						<a href="#" class="image"><img src="img/bbs-3.JPG" /></a>
						<div class="content">
							<h2 class="major">讨论区</h2>
							<p>不要害怕未知，在这里问到你想要的答案。
							</p>
							<a href="#" class="special">Learn more</a>
						</div>
					</div>
				</section>

				<!-- Three -->
				<section id="three" class="wrapper spotlight style3">
					<div class="inner">
						<a href="#" class="image"><img src="img/mainbodybgimg.jpg" alt="" /></a>
						<div class="content">
							<h2 class="major">灌水区</h2>
							<p>玩法，吐槽，生活我都有。
							</p>
							<a href="#" class="special">Learn more</a>
						</div>
					</div>
				</section>
			</div>
		</div>
		<div class="section" id="sourceDownLoad">
		<br />
		<br />
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-center text-primary" >资源下载区</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 col-sm-6 box">
						<a href="sourceServlet" id="f-diw" class="footer-box">
							<h5>总结大会</h5>
							<p>
								大神离去后，他们的源码都留在了这里。
							</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 box">
						<a href="sourceServlet" id="f-qod" class="footer-box">
							<h5>课堂源码</h5>
							<p>
								这里是你丢掉的笔记，我们帮你捡回来了，请认领！
							</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 box">
						<a href="sourceServlet" id="f-htmlipsum" class="footer-box">
							<h5>开发工具</h5>
							<p>
								各种开发软件的下载链接都整理在了这里，支持下载，有安装教程。
							</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 box">
						<a href="sourceServlet" id="f-bookshelf" class="footer-box">
							<h5>拓展强化</h5>
							<p>
								如果学有余力的话，欢迎多来这里看看，下载资源学习来强化自己。
							</p>
						</a>
					</div>
				</div>
			</div>
		</div>
		<br />
		<br />
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12" >
						<h1 class="text-center text-primary" id="aboutUS">林科大全景</h1>
						<div class="col-md-9" id="allmap">
						</div>
						<div class="col-md-3 hidden-sm" id="tableLBS">
							<table class="table table-striped">
								<th><h3 class="text-center">索引</h3></th>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							 	 <tr class="">
							 	 	<td>ceshi</td>
							 	 </tr>
							</table>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<br />
		<br />
		<div class="container-fluid footer">
			<div class="container row-fluid foot">
				<div class="col-md-4  col-sm-6 foot-left">
					<h1 class="footh1">联系我们</h1> Email:heygis@163.com
					<br /> QQ:12345678
					<br /> Address:长沙市韶山南路498号中南林业科技大学
					<br />
				</div>
				<div class="col-md-4  col-sm-6 foot-right">
					<h1 class="footh1">相关链接</h1> 
					<a href="feedbackServlet">意见反馈</a>
					<br /> <a href="aboutWeb.jsp">关于本网站</a>
					<br /> <a href="aboutMaker.jsp"> 关于制作者</a>
					<br />
				</div>
				<div class="col-md-4  col-sm-12 shenming">
					<span>注意：本站资源均来源于原创或网络,如有侵权请联系站长清除。</span>
					<br />
					<a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">湘ICP备16006264</a>

				</div>
			</div>
		</div>
		<div class="theme-popover col-md-12">
			<div class="theme-poptit">
				<a href="javascript:;" title="关闭" class="close">×</a>
				<h3>登录 是一种态度</h3>
			</div>
			<div class="theme-popbod dform">
				<form id="loginForm" class="theme-signin" name="loginform"  method="post" onsubmit="return login()">
					<ol>
						<li>
							<h4 id="loginMessage">你必须先登录！</h4>
						</li>
						<li><strong>用户名：</strong>
							<input class="ipt" type="text" name="account" value="1234" size="20" />
						</li>
						<li><strong>密码：</strong>
							<input class="ipt" type="password" name="password" value="1234" size="20" />
						</li>
						<li>
							<input class="btn btn-primary" type="submit" name="submit" value=" 登 录 " />
						</li>
					</ol>
				</form>
				<form id="logout" method="post" action="logoutServlet">
					<INPUT TYPE="submit" name="test" value = "go" style="display:none"> 
				</form>
			</div>
		</div>
		<div class="theme-popover-mask"></div>
	</body>

</html>
<script type="text/javascript" src="js/LBSJS.js"></script>