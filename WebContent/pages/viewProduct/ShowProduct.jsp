<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<link rel="stylesheet" type="text/css" href="css/viewProductCss/product.css">
<head>
<link rel="icon" href="homeimages/favicon.ico" type="image/gif" sizes="16x16">
<meta charset="ISO-8859-1">
	<title>Products</title>
	<script>var stock = '${productInfo.stock}'; 
			var contextPath = '${pageContext.request.contextPath}' + '/';
			var userId = '${sessionScope.user.userId}';
			alert(userId);
	</script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/third-party/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/productinfo.js"></script>
	<link rel="stylesheet" href= "css/HomePageCss/Preloader.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/HPviewfunctions/Homepageview.js"></script> 
</head>
<body>
	<div class="Product">
	  <img alt="Not Found" height= "400" width="400" type="image" src="${pageContext.request.contextPath}/productinfoimages/${productInfo.productId}.jpg">
	  <div class="productname">${productInfo.productName}</div>
	  <div class="brand">${productInfo.brand}</div>
	  <p class="price"><fmt:formatNumber type="number" pattern="###,###.##" value="${productInfo.price}"/></p>
	 
	  <form>
		  <input type="button" value="-" id="minus"> 
		  <input type="text" max="20" value="0" name="quantity" id="quantityValue" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
		  <input type="button" value="+" id="add"><br><br>
	  </form>

	  <p><button id="addProductCart">Add to Cart</button></p>
	  <p><button>Checkout</button></p>
	</div>
</body>
	<jsp:include page="/pages/Homepagemain/homepagefooter.jsp"/>
</html>