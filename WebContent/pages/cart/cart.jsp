<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script type="text/javascript" src="js/third-party/jquery-3.5.1.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
		<link rel="stylesheet" type="text/css" href="css\cart\cart_style.css" />
		<script type="text/javascript" src="js/cart/cart.js"></script>
		<script type="text/javascript">
			var contextPath = '${pageContext.request.contextPath}' + '/';
			var customerID = "${customerID}";
		// 	var customerID = "${sessionScope.user.userId}";
			var grandTotal = "${grandTotal}";
		</script>
	</head>
	<body>
		<div class="container-fluid" id="cartDiv">
			<div class="row" id="headerDiv">
				<div class="col-md-1"></div>
				<div class="col-md-4">
					<h2>
						YOUR CART
						<small>
							<c:out value="${itemCount }"></c:out>
							<c:out value="${(itemCount > 1 || itemCount == 0) ? ' ITEMS' : ' ITEM'}"></c:out>
						</small>
					</h2>
				</div>
				<div class="col-md-2">
					<div id="shopBtnDiv">
						<button class="btn btn-primary" id="shopBtn" type="button">Continue Shopping</button>
					</div>
				</div>
				<div class="col-md-5"></div>
			</div>
			<div class="row" id="contentDiv">
				<div class="col-md-1"></div>
				<div class="col-md-6" id="cartItemsDiv">
					<c:if test="${cartItems.size() > 0 }">
						<table class="table table-hover table-responsive">
							<tbody>
		<!-- 						<tr> -->
		<!-- 							<td></td>	Product image here -->
		<!-- 							<td></td>	Product name and unit price here -->
		<!-- 							<td></td>	Product order quantity here -->
		<!-- 							<td></td>	Product order subtotal here -->
		<!-- 						</tr> -->
		<!-- 						<tr> -->
		<!-- 							<td> -->
		<!-- 								<div class="imageDiv"> -->
		<!-- 									<img class="img-responsive" src="img\cart\black-laptop.png"> -->
		<!-- 								</div> -->
		<!-- 							</td>	Product image here -->
		<!-- 							<td> -->
		<!-- 								<button class="prodNameBtn" type="button"> -->
		<!-- 									<p class="lead prodNamePrg"> -->
		<!-- 										SAMPLE PRODUCT NAME -->
		<!-- 									</p> -->
		<!-- 								</button> -->
		<!-- 								<p> -->
		<%-- 									<fmt:formatNumber value="9999.99" type="currency" currencySymbol="&#8369;"></fmt:formatNumber> --%>
		<!-- 								</p> -->
		<!-- 							</td>	Product name and unit price here -->
		<!-- 							<td> -->
		<!-- 								<p class="text-right"> -->
		<!-- 									1 -->
		<!-- 								</p> -->
		<!-- 							</td>	Order quantity here -->
		<!-- 							<td> -->
		<!-- 								<p class="text-right"> -->
		<%-- 									<fmt:formatNumber value="9999.99" type="currency" currencySymbol="&#8369;"></fmt:formatNumber> --%>
		<!-- 								</p> -->
		<!-- 							</td>	Product order subtotal here -->
		<!-- 						</tr>	Dummy row -->
								<c:forEach var="item" items="${cartItems }">
									<tr>
										<td>
											<div class="imageDiv">
												<img class="img-responsive" alt="Laptop sample's image" src="img\cart\black-laptop.png">
											</div>
										</td>
										<td>
											<button class="prodNameBtn" id="prod${item.getProductId() }_Btn" type="button">
												<p class="lead prodNamePrg">
													<c:out value="${item.getProductName() }"></c:out>
												</p>
											</button>
											<p>
												<fmt:formatNumber value="${item.getPrice() }" type="currency" currencySymbol="&#8369;"></fmt:formatNumber>
											</p>
										</td>
										<td>
											<p class="text-right">
												<c:out value="${item.getQuantity() }"></c:out>
											</p>
										</td>
										<td>
											<p class="text-right">
												<fmt:formatNumber value="${item.getPrice() * item.getQuantity() }" type="currency" currencySymbol="&#8369;"></fmt:formatNumber>
											</p>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:if>
					<c:if test="${cartItems.size() < 1 }">
						<div class="well">
							<div class="imageDiv" id="emptyCartDiv">
								<img class="img-responsive" alt="Empty shopping cart logo" src="img\cart\empty-cart.png">
							</div>
							<p class="lead" id="emptyCartPrg">
								Your shopping cart is empty.
								<br>
								Get your own laptop now to open the doors of new possibilities!
							</p>
						</div>
					</c:if>
				</div>
				<div class="col-md-4" id="summaryDiv">
					<h3>
						ORDER SUMMARY
						<small>
							<c:out value="${itemCount }"></c:out>
							<c:out value="${(itemCount > 1 || itemCount == 0) ? ' PRODUCTS' : ' PRODUCT'}"></c:out>
						</small>
					</h3>
					<hr>
					<c:if test="${cartItems.size() > 0 }">
						<table class="table">
							<thead>
								<tr>
									<th>
										<p>
											Name
										</p>
									</th>	<!-- Product name here -->
									<th>
										<p class="text-right">
											Quantity
										</p>
									</th>	<!-- Order quantity here -->
									<th>
										<p class="text-right">
											Subtotal
										</p>
									</th>	<!-- Product order subtotal here -->
								</tr>
							</thead>
							<tbody>
		<!-- 						<tr> -->
		<!-- 							<td> -->
		<!-- 								<p> -->
		<!-- 									Sample Product Name -->
		<!-- 								</p> -->
		<!-- 							</td>	Product name here -->
		<!-- 							<td> -->
		<!-- 								<p class="text-right"> -->
		<!-- 									3 -->
		<!-- 								</p> -->
		<!-- 							</td>	Order quantity here -->
		<!-- 							<td> -->
		<!-- 								<p class="text-right"> -->
		<%-- 									<fmt:formatNumber value="29999.97" type="currency" currencySymbol="&#8369;"></fmt:formatNumber> --%>
		<!-- 								</p> -->
		<!-- 							</td>	Product order subtotal here -->
		<!-- 						</tr>	Dummy row -->
									<c:forEach var="item" items="${cartItems }">
										<tr>
											<td>
												<p>
													<c:out value="${item.getProductName() }"></c:out>
												</p>
											</td>
											<td>
												<p class="text-right">
													<c:out value="${item.getQuantity() }"></c:out>
												</p>
											</td>
											<td>
												<p class="text-right">
													<fmt:formatNumber value="${item.getPrice() * item.getQuantity() }" type="currency" currencySymbol="&#8369;"></fmt:formatNumber>
												</p>
											</td>
										</tr>
									</c:forEach>
									<tr class="info" id="gTotalRow">
										<td colspan=2>
											<p>
												Total
											</p>
										</td>
										<td>
											<p class="text-right">
												<fmt:formatNumber value="${grandTotal }" type="currency" currencySymbol="&#8369;"></fmt:formatNumber>
											</p>
										</td>	<!-- Grand total here  -->
									</tr>
							</tbody>
						</table>
						<div id="checkoutDiv">
							<button class="btn btn-success" id="checkoutBtn" type="button" data-toggle="modal" data-target="#confirmModal">CHECKOUT</button>
							<div id="confirmModal" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Order Confirmation</h4>
										</div>
										<div class="modal-body">
											<p>Please confirm your order.</p>
										</div>
										<div class="modal-footer">
											<button class="btn btn-success" id="confirmBtn" type="button" data-dismiss="modal">Confirm</button>
											<button class="btn btn-default" type="button" data-dismiss="modal">Cancel</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</div>
				<div class="col-md-1"></div>
			</div>
			<br>
		</div>
	</body>
	<script type="text/javascript">
		$(document).ready(function() {
			initCartPage();
		});
 	</script>
</html>
