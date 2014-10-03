<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="Syntis">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><sitemesh:write property='title'/></title>
<%@include file="/WEB-INF/decorators/globalscript.jsp"%>
<link href="${pageContext.request.contextPath}/resources/template/perspective/ppvn/css/component.css"  rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/resources/template/perspective/ppvn/js/modernizr.custom.25376.js"></script>
<sitemesh:write property="head"/>
</head>
<body>
<div id="perspective" class="perspective effect-rotateleft">
			<div class="container">
				<div class="wrapper"><!-- wrapper needed for scroll -->
					<header class="codrops-header">
						<h1>Perspective Page View Navigation <span>Transforms the page in 3D to reveal a menu</span></h1>	
					</header>
					<div class="main clearfix">
						<div class="column">
							<p><button id="showMenu" class="btn btn-danger">Show Menu</button></p>
							<p>Click on this button to see the content being pushed away in 3D to reveal a navigation or other items.</p>
						</div>
					</div><!-- /main -->
					<hr/>
					 <div ng-view></div>
					<sitemesh:write property="body"/>
				</div><!-- wrapper -->
			</div><!-- /container -->
			<nav class="outer-nav right vertical">
				<a href="${pageContext.request.contextPath}/perspective_welcome" >☺ Home</a>
				<a href="${pageContext.request.contextPath}/perspective_coreitem/layout" >☺ CoreItem</a> 
			</nav>
		</div><!-- /perspective -->
		<script src="${pageContext.request.contextPath}/resources/js/classie.js"></script>
		<script src="${pageContext.request.contextPath}/resources/template/perspective/ppvn/js/menu.js"></script>
</body>
</html>