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
	<link rel="stylesheet" href= "css/HomePageCss/Preloader.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/HPviewfunctions/Homepageview.js"></script> 
</head>

<body>
   <div class="content">

   <div class="loader-wrapper">
   <div class="loader"></div>

    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>
  </div>


		<div class="Products" id="showProducts">
			<table class="showProduct" align="center">
				<thead>
					<tr>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td class="productimage">
								<img alt="Not Found" height= "500" width="500" type="image" src="${pageContext.request.contextPath}/productinfoimages/99.jpg">
							</td>
							<td class="ProductDetails">
								<div class="productName-div">
									${productInfo.productName}
								</div>
								<div class="stock-div">
									${productInfo.stock}
									<%-- Stock: < id="stock" value="${productInfo.stock}"/> element--%>
								</div>
								<div class="price-div">
									Price: <fmt:formatNumber type="number" pattern="###,###.##" value="${productInfo.price}"/>
								</div>
								<div class="brand-div">
									Brand: ${productInfo.brand}
								</div>
								<div class="description-div">
									${productInfo.description}
								</div>
								<form>
									<label>Quantity</label>
									<input type="button" value="-" id="minus"> 
									<input type="number" value="0" name="quantity" id="quantityValue" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
									<input type="button" value="+" id="add"><br><br>
									<input type="button" value="Add to Cart" id="addToCartBtn"> 
									<input type="button" value="Checkout"id="checkout">
									<input type="submit">
								</form>
							</td>
						</tr>
				</tbody>
			</table>
		</div>

</body>
</html>