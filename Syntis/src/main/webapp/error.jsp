<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Page</title>
</head>
<body>
<div class="col-md-6">
<h1>Page Not Found</h1>
<h3>Looks like this is a broken page or doesn't exist.</h3>
</div>
<div class="col-md-6">
<img src="${pageContext.request.contextPath}/resources/img/oops.png" alt="error" class="img-medium img-circle">
</div>
</body>
</html>