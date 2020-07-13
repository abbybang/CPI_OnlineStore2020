<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/receiptCss/receiptStyle.css">
</head>
<body>
	<div class="header">
			<div class="title-div">
				<p>
					<p class="title-bottom"><span class="title">Customer Reciept</span><br>
					Your order has been confirmed and will be shipping soon</p>
				</p>
			</div>
		</div>
		<table id="receipt">
			<tr>
				<th colspan="3">Order Summary</th>
			</tr>
			<c:forEach  var="list" items="${productList}">
				<tr class="border">
					<td id="pic-div">
						<img src="macbook.jpg" id="pic">
					</td>
					<td class="name-qty"> 
						<div class="name-qty-div">
							${productName}<br>
							${quanity}x
						</div>
					</td>
					<td class="item-total">
						<div class="item-total-div">
							<span>P</span>${itemTotal}
						</div>
						<p></p>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="2" class="subtotal">
					<div class="subtotal-div">Subtotal</div>
				</td>
				<td class="subtotal">
					<div class="subtotal-div">P${subtotal}</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="subtotal">
					<div class="subtotal-div">Shipping</div>
				</td>
				<td class="subtotal">
					<div class="subtotal-div">P0.00</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="total">
					<div class="total-div">
						<span>Total</span>
					</div>
				</td>
				<td class="total">
					<div class="total-div">
						<span>P${total}</span>
					</div>
				</td>
			</tr>
		</table>
</body>
</html>