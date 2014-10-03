<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CoreItem</title>
<!-- LESS cdn 
<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/1.7.5/less.min.js"></script>-->
</head>
<body>
	<div class="logo-desc">
		<button type="button" ng-click="charts('line')"
			ng-controller="CoreItemController" class="btn btn-default">draw
			line</button>
		<button type="button" ng-click="charts('pie')"
			ng-controller="CoreItemController" class="btn btn-default">draw
			pie</button>
		<button type="button" ng-click="charts('donut')"
			ng-controller="CoreItemController" class="btn btn-default">draw
			donut</button>
		<h2 id="DATA-VALUE"></h2>
		<div id="chart"></div>
	</div>

	<h3>Item List</h3>
	<table class="table table-bordered table-striped"
		style="width: 450px; margin-left: 100px;"
		ng-controller="CoreItemController">
		<thead>
			<tr>
				<th style="text-align: center;">Id</th>
				<th style="text-align: center;">Name</th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="i in items">
				<td>{{i.dataId}}</td>
				<td>{{i.name}}</td>
			</tr>
		</tbody>
	</table>
</body>
</html>