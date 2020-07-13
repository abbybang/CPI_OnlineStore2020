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
 <script>var contextPath = "${pageContext.request.contextPath}/";</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/HPviewfunctions/Homepageview.js"></script>
</head>


<body>

<!-- Work Section -->
<div class="ish-container" style="padding:50px 16px" id="products">
  <h3 class="ish-center ish-text-darkblue ish-xxlarge">PRODUCTS</h3>
 
<div class="container" >          
  <table class="table table-bordered">
 <thead>
					<tr class="ish-darkblue">
					    
					    <th></th>
					    <th class="ish-text-white">Image</th>
						<th class="ish-text-white">Product Name</th>	
						<th class="ish-text-white">Price(Peso)</th>
						<th class="ish-text-white">Brand</th>
						<th class="ish-text-white">Description</th>
				    
					</tr>
				</thead>
			<tbody>
				<c:forEach  var="list" items="${homepageList}">
					<tr>
					    <td class="productId">
							<div class="productId-div ">
								<a href="${pageContext.request.contextPath}/ShowProduct?productId=${list.productId}">VIEW</a>
							</div>
						</td>
						<td class="productimage">
								<img alt="Not Found" height= "150" width="150" type="image" src="${pageContext.request.contextPath}/productinfoimages/${productInfo.productId}.jpg">
							</td>
						<td class="productName">
							<div class="productName-div ">
								${list.productName}
							</div>
							
						<td class="price ">
						<div class="price-div ">
						<fmt:formatNumber type="number" pattern="###,###.##" value="${list.price}"/>
						</div>
						</td>
				        
						<td class="brand">
							<div class="brand-div ">
								${list.brand}
							</div>
						</td>
						<td class="description">
							<div class="description-div ">
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