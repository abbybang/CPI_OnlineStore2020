<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Page</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/adminStyle.css">
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
			<table class="table" id="productTable">
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
			<tbody id="tbody">
				<c:forEach  var="list" items="${productList}">
					<tr>
						<td>
							<div class="custom-control custom-checkbox">
  								<input type="checkbox" class="custom-control-input" id="th-checkbox" name="toDelete" value="${list.productId}">
							</div>
						</td>
						<td class="productId">
								${list.productId}
						</td>
						<td class="productName">
								${list.productName}

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
	
	<input type="button" value="Add" class="btn btn-success" data-toggle="modal" data-target="#modalForm" id="addForm">
	<input type="button" value="Edit" class="btn btn-primary" data-toggle="modal" data-target="#modalForm" id="editForm">
	<input type="button" value="delete" class="btn btn-danger" id="delete">

<!-- Modal -->
<div class="modal fade" id="modalForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" 
                   data-dismiss="modal">
                       <span aria-hidden="true">&times;</span>
                       <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Add Product</h4>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">                
                <form role="form">
                	<div class="form-group">
			            <label for="productId">Product ID</label>
			             <input type="text" class="form-control" id="productId" placeholder="ID" required/>
		            </div>
                	<table>
                		<tr>
                			<td colspan="2">
								<div class="form-group">
			                    	<label for="productName">Product Name</label>
			                    	<input type="text" class="form-control" id="productName" placeholder="Enter Product Name" required/>
		                  		</div>
                			</td>
                		</tr>
                		<tr>
                			<td colspan="2">
								<div class="form-group">
			                    	<label for="brand">Brand</label>
			                    	<input type="text" class="form-control" id="brand" placeholder="Enter Brand Name" required/>
		                  		</div>
                			</td>
                		</tr>
		                <tr>
		                	<td>
		                		<div class="form-group">
			                    	<label for="price">Price</label>
			                    	<input type="text" class="form-control" id="price" placeholder="Php 0.00" required/>
			                  	</div>
		                	</td>
		                	<td>
		                		<div class="form-group">
				                	<label for="stock">Stocks</label>
									<input type="text" class="form-control" id="stock" placeholder="0" required/>
				                </div> 
		                	</td>
		                </tr>
		                <tr>
		                	<td colspan="2">
		                		<div class="form-group">
				                	<label for="description">Description</label>
									<textarea class="form-control" style="resize:none" id="description" placeholder="Write description" rows="4" cols="50" required></textarea>
				                </div>
		                	</td>
		                </tr>                  
	                 </table>     
                </form>             
            </div>
            
            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="add">Save</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>