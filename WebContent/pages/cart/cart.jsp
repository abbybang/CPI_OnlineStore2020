<link rel="stylesheet" type="text/css" href="css\cart\cart_style.css" />
<script type="text/javascript">var contextPath = '${pageContext.request.contextPath}' + '/';</script>
<div id="cartDiv">
	<p id="cartHeader">
		<span>YOUR SHOPPING CART</span>&nbsp;
		<span>1 ITEM</span>&nbsp;
		<a>Continue Shopping</a>
	</p>
	<div id="ordersDiv">
		<table border="1">
			<tbody>
				<tr>
					<td></td>	<!-- Product image here -->
					<td></td>	<!-- Product name, unit price, description here -->
					<td></td>	<!-- Quantity selector, 'Remove' button here -->
					<td></td>	<!-- Product order subtotal here -->
				</tr>
				<tr>
					<td>
						<img alt="" src="img\cart\200x200_029991_fff.png">
					</td>	<!-- Product image here -->
					<td>
						<p>SAMPLE PRODUCT NAME</p>
						<p>PHP 9,999.99</p>
					</td>	<!-- Product name and unit price here -->
					<td>
						<button type="button">Remove</button>
					</td>	<!-- 'Remove' button here -->
					<td>PHP 29,999.97</td>	<!-- Product order subtotal here -->
				</tr>	<!-- Dummy row -->
			</tbody>
		</table>
	</div>
	<div id="summaryDiv">
		<p>ORDER SUMMARY:</p>
		<table border="1">
			<thead>
				<tr>
					<th colspan="3">1 PRODUCT</th>
				</tr>
				<tr>
					<th>Name</th>	<!-- Product name here -->
					<th>Quantity</th>	<!-- Order quantity here -->
					<th>Subtotal</th>	<!-- Product order subtotal here -->
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Sample Product Name</td>	<!-- Product name here -->
					<td>3</td>	<!-- Order quantity here -->
					<td>PHP 29,999.97</td>	<!-- Product order subtotal here -->
				</tr>
			</tbody>
		</table>
		<br>
		<table>
			<tbody>
				<tr>
					<td colspan=2>Total</td>
					<td>PHP 29,999.97</td>	<!-- Grand total here  -->
				</tr>
				<tr>
					<td colspan=2>Enter Payment</td>
					<td>
						<input type="number">
					</td>	<!-- Payment amount input here -->
				</tr>
			</tbody>
		</table>
		<button type="button">CHECKOUT</button>
	</div>
</div>
<script type="text/javascript" src="js/cart/cart.js">
	$(document).ready(function() {
		initCartPage();
	})
</script>