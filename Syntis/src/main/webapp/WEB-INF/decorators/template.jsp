<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="Syntis">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><sitemesh:write property='title'/></title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- ANGULAR -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.20/angular-route.min.js"></script>
<script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/ppvn/css/component.css" />
<script src="${pageContext.request.contextPath}/resources/ppvn/js/modernizr.custom.25376.js"></script>
<sitemesh:write property="head"/>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/controllers/CoreItemController.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/controllers/IndexController.js"></script>
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
							<p><button id="showMenu">Show Menu</button></p>
							<p>Click on this button to see the content being pushed away in 3D to reveal a navigation or other items.</p>
						</div>
					</div><!-- /main -->
					<hr/>
					 <div ng-view></div>
					<sitemesh:write property="body"/>
				</div><!-- wrapper -->
			</div><!-- /container -->
			<nav class="outer-nav right vertical">
				<a href="${pageContext.request.contextPath}/welcome" >☺ Home</a>
				<a href="${pageContext.request.contextPath}/coreitem/layout" >☺ CoreItem</a> 
			</nav>
		</div><!-- /perspective -->
		<script src="${pageContext.request.contextPath}/resources/js/classie.js"></script>
		<script src="${pageContext.request.contextPath}/resources/ppvn/js/menu.js"></script>
</body>
</html>