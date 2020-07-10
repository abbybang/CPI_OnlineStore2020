<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<link rel="stylesheet" type="text/css" href="css/viewProductCss/product.css">
<head>
<meta charset="ISO-8859-1">
	<title>Products</title>
	<script>var contextPath = '${pageContext.request.contextPath}' + '/';</script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/third-party/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/productinfo.js"></script>
	
</head>
<body>
		<div class="Products" id="showProducts">
			<table class="showProduct" align="center">
				<thead>
					<tr>
					</tr>
				</thead>
				<tbody>
					<c:forEach  var="list" items="${productList}">
						<tr>
							<td class="productimage">
								<img alt="Not Found" height= "500" width="500" type="image" src="${pageContext.request.contextPath}/productinfoimages/99.jpg">
							</td>
							<td class="ProductDetails">
								<div class="productName-div">
									${list.productName}
								</div>
								<div class="stock-div">
									${list.stock}
								</div>
								<div class="price-div">
									${list.price}
								</div>
								<div class="brand-div">
									${list.brand}
								</div>
								<div class="description-div">
									${list.description}
								</div>
								<label>Quantity</label>
								<input type="button" value="-" id="minus"> 
								<input type="text" value="0" name="quantity" id="quantityValue" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
								<input type="button" value="+" id="add"> 
								<input type="button" value="Add to Cart" id="addToCartBtn"> 
								<input type="button" id="logoutButton" value="Logout">
							</td>
						</tr>
					</c:forEach>
								
				</tbody>
			</table>
		</div>

</body>
</html>