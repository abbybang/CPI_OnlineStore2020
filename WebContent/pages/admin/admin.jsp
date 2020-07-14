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
	
	<link rel="stylesheet" href="css/adminStyle.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<script type="text/javascript" src="js/adminJS.js"></script>
<script>
	var contextPath = '${pageContext.request.contextPath}' + '/';
</script>
</head>
<body>
	<div id="header">
		<div id="buttons">
			<button type="button" value="Add" class="btn btn-crud" data-toggle="modal" data-target="#modalForm" id="addForm" title="Add">
				<i class="glyphicon glyphicon-plus"></i>
			</button>
			<button type="button" value="Edit" class="btn btn-crud" data-toggle="modal" data-target="#modalForm" id="editForm" title="Edit">
				<i class="glyphicon glyphicon-pencil"></i>
			</button>
			<button type="button" value="delete" class="btn btn-crud" id="delete" title="Delete">
				<i class="glyphicon glyphicon-trash"></i>
			</button>
			<button type="button" class="btn btn-danger" id="logout">
				<i class="glyphicon glyphicon-log-out"></i>
				<span>Logout</span>
			</button>
		</div>
	</div>
	<div class="container" id="container-div">
		<div class="table-responsive">          
			<table class="table table-fixed table-hover" id="productTable">
				<thead>
					<tr>
						<th width="2%">			
						</th>
						<th id="th-id" width="0%">ID</th>
						<th width="20%">Product Name</th>
						<th width="12%">Stock</th>
						<th width="12%">Price(Php)</th>
						<th width="13%">Brand</th>
						<th width="40%">Description</th>
					</tr>
				</thead>
				<tbody id="tbody">
					<c:forEach  var="list" items="${productList}">
						<tr>
							<td>
								<div class="custom-control custom-checkbox">
  									<input type="checkbox" class="custom-control-input" name="toDelete" value="${list.productId}">
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
                	<table id="inputForm">
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
			                    	<input type="text" class="form-control" id="price" onkeypress='return isNumberKey(event)' placeholder="Php 0.00" required/>
			                  	</div>
		                	</td>
		                	<td>
		                		<div class="form-group">
				                	<label for="stock">Stocks</label>
									<input type="text" class="form-control" id="stock" onkeypress='return event.charCode >= 48 && event.charCode <= 57' placeholder="0" required/>
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
                <button type="button" class="btn btn-light" id="add">Save</button>
                <button type="button" class="btn btn-light" id="edit">Save</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>