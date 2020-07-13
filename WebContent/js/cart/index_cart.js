$(document).ready(function() {
	$("#viewCartBtn").click(function() {
		$.ajax({
			url: contextPath + "cart",
			data: {
				customerID: "3",
				action: "view"
			},
			method: "POST",
			success: function(result) {
				$("#mainDiv").html(result);
			}
		});
	});
});