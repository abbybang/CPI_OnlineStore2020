<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
<!-- 	<meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
	<script type="text/javascript">var contextPath = '${pageContext.request.contextPath}' + '/';</script>
	<script type="text/javascript" src="js/third-party/jquery-3.5.1.js"></script>
<!-- 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
	<script type="text/javascript" src="js/cart/index_cart.js"></script>
</head>
<body>
	<h1>Inside index.jsp</h1>
	<div id="mainDiv" class="container-fluid">
<!-- 		<button type="button" id="viewCartBtn">View Cart</button> -->
		<a href="${pageContext.request.contextPath}/cart">View Cart</a>
	</div>
</body>
</html>