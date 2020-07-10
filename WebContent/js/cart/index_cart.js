$(document).ready(function() {
	$("#viewCartBtn").click(function() {
		$.ajax({
			url: contextPath + "cart",
			data: {
				customerID: "34",
				action: "load cart"
			},
			method: "POST",
			success: function(result) {
				$("#mainDiv").html(result);
			}
		});
	});
})