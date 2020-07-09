<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
	<div id="mainContents">
		<h2>CPI Online Store</h2>
		<table border="1">
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Stock</th>
			</tr>
			<c:forEach var="item" items="${items}">
				<tr>
					<th>ID</th>
						<th>Product Name</th>
						<th>Stock</th>
						<th>Price</th>
						<th>Brand</th>
						<th>Description</th>
				</tr>
			</c:forEach>
		</table>
		<br/>
		Product ID:<input type="number" id="productId">
		<br/>
		Quantity:<input type="number" id="quantity"><br>
		<br/>
		<button id="add">Add Item</button>
		<button id="checkOut">Checkout</button>
	
		<hr/>
	</div>
</body>
</html>