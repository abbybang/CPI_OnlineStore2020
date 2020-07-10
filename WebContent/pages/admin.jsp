<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="homeimages/favicon.ico" type="image/gif" sizes="16x16">
	<meta charset="ISO-8859-1">
	<title>Admin Page</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<script type="text/javascript" src="js/adminJS.js"></script>
<script>
	var contextPath = '${pageContext.request.contextPath}' + '/';
</script>
</head>
<body>

	<div class="container" id="container-div">
		<div class="table-responsive">          
			<table class="table">
				<thead>
					<tr>
						<th>
							<div class="custom-control custom-checkbox">
  								<input type="checkbox" class="custom-control-input" id="th-checkbox">
							</div>
						</th>
						<th>ID</th>
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
						<td>
							<div class="custom-control custom-checkbox">
  								<input type="checkbox" class="custom-control-input" id="th-checkbox" name="toDelete" value="${list.productId}">
							</div>
						</td>
						<td class="productId">
							<div class="productId-div">
								${list.productId}
							</div>
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
	</div>
	<input type="button" value="delete" id="delete">
</body>
</html>