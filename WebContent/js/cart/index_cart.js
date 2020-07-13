$(document).ready(function() {
	$("#viewCartBtn").click(function() {
		$.ajax({
			url: contextPath + "cart",
			data: {
				customerID: "34"
			},
			method: "POST",
			success: function(result) {
				$("#mainDiv").html(result);
			}
		});
	});
})