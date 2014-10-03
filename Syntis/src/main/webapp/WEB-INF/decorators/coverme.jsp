<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="Syntis">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title><sitemesh:write property='title' /></title>
<%@include file="/WEB-INF/decorators/globalscript.jsp"%>
<link href="${pageContext.request.contextPath}/resources/template/coverme/css/style.css" rel="stylesheet" type="text/css" media="all" />
<sitemesh:write property="head" />
</head>
<body>
	<div class="profile">
		<div class="profile-img">
			<img src="${pageContext.request.contextPath}/resources/template/coverme//images/cover-page.jpg" alt="logo" />
			<div class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Syntis</a>
					</div>
					<div class="navbar-collapse collapse" style="height: 1px;">
						<ul class="nav navbar-nav">
							<li><a href="${pageContext.request.contextPath}/coverme_welcome">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/coverme_coreitem/layout">Coreitem</a></li>
							<li><a href="#contact">Contact</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Dropdown <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Nav header</li>
									<li><a href="#">Separated link</a></li>
									<li><a href="#">One more separated link</a></li>
								</ul></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#">nav right</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
		</div>
		<sitemesh:write property="body" />
		<div class="profile">
		<div class="profile-details">
			<div class="profile-desc">
				<div class="profile-description">
					<div class="user-details">
						<h2>Gerry robins</h2>
						<p>
							<span>UX & GUI Designer, Expert in social</span>
						</p>
						<p>media and surfing waves</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="user-followers">
				<ul>
					<li><span>642</span><br>Followers</li>
					<li><span>256</span><br>Likes</li>
					<li><span>52</span><br>Projects</li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	
</body>
</html>