<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODUCTS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href= "css/HomePageCss/HomePageCss.css">
<link rel="stylesheet" href= "css/HomePageCss/hoverpageselection.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>


<body>

<!-- Work Section -->
<div class="ish-container" style="padding:0px 16px" id="laptops">
  <h3 class="ish-center">LAPTOPS DEALS</h3>
 
<div class="container" class="container" >          
  <table class="table table-bordered">
 <thead>
					<tr>
					    <th>
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
				<c:forEach  var="list" items="${homepageList}">
					<tr>
					    <td class="productId">
							<div class="productId-div">
								<button id="add">VIEW</button>

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
  

</body>
</html>