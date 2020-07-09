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
</head>
<body>
		<div class="Products">
			<table border="1" class="showProduct" align="center">
				<thead>
					<tr>
						<th>Product Name</th>
						<th>Stock</th>
						<th>Price</th>
						<th>Brand</th>
						<th>Description</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach  var="list" items="${productList}">
						<tr>
							<td class="productimage">
								<img alt="Not Found" height= "400" width="250" type="image" src="../../productinfoimages/99.jpg">
							</td>
							<td class="productName">
								<div class="productName-div">
									${list.productName}
								</div>
							</td>
							<td class="stock">
								<div class="stock-div">
									${list.stock}
								</div>
							</td>
								<td class="price">
								<div class="price-div">
									${list.price}
								</div>
							</td>
							<td class="brand">
								<div class="brand-div">
									${list.brand}
								</div>
							</td>
							<td class="description">
								<div class="description-div">
									${list.description}
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>

</body>
</html>