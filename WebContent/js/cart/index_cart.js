$(document).ready(function() {
	$("#viewCartBtn").click(function() {
		$.ajax({
			url: contextPath + "cart",
			data: {
				customerID: "34",
				action: "view"
			},
			method: "POST",
			success: function(result) {
				$("#mainDiv").html(result);
			}
		});
	});
});