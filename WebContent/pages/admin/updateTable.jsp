<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<div class="table-responsive">          
			<table class="table table-fixed">
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