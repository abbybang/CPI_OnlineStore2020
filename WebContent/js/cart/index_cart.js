$(document).ready(function() {
	$("#viewCartBtn").click(function() {
		$.ajax({
			url: contextPath + "cart",
			data: {
				customerID: "888",
				action: "view"
			},
			method: "POST",
			success: function(result) {
				$("#mainDiv").html(result);
			}
		});
	});
});