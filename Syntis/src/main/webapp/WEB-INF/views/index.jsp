<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Syntis</title>
</head>
<body>
	<h1>Hello! Index!</h1>
	<div id="chart"></div>
	<script>
	var obj = [{
		"itemTypeName" : "前下巴",
		"count" : 2
	}, {
		"itemTypeName" : "後下巴",
		"count" : 3
	}, {
		"itemTypeName" : "後擾流",
		"count" : 5
	}, {
		"itemTypeName" : "配件",
		"count" : 7
	}, {
		"itemTypeName" : "避震器",
		"count" : 3
	}, {
		"itemTypeName" : "手自排換檔/鋁合金產品",
		"count" : 4
	}, {
		"itemTypeName" : "汽油引擎改裝",
		"count" : 3
	}, {
		"itemTypeName" : "柴油引擎改裝",
		"count" : 3
	}];
		var chart = c3.generate({
			bindto : '#chart',
			data: {
	            json: obj,
	            keys: {
                x: 'itemTypeName', // it's possible to specify 'x' when category axis
	                value: ['count'],
	            }
	        },
	        axis: {
	            x: {
                type: 'category'
	            }
	        }
		});
	</script>
</body>
</html>