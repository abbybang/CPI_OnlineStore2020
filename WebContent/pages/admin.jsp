<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Page</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
  <h2>Table</h2>
  <p>The .table-responsive class creates a responsive table which will scroll horizontally on small devices (under 768px). When viewing on anything larger than 768px wide, there is no difference:</p>                                                                                      
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Product Name</th>
        <th>Description</th>
        <th>Age</th>
        <th>City</th>
        <th>Country</th>
      </tr>
    </thead>
    <tbody>
        <c:forEach  var="list" items="${productList}">
			<tr>
				<td class="Id">
					<div class="Id-div">
						${list.productId}
					</div>
				</td>
				<td class="name">
					<div class="name-div">
						${list.productName}
					</div>
				</td>
				
				<td class="price">
					<div class="price-div">
						${list.price}
					</div>
				</td>
				<td class="stocks">
					<div class="stocks-div">
						${list.stocks}
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