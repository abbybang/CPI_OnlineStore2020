$(document).ready(function() {
	$("#viewCartBtn").click(function() {
		$.ajax({
			url: contextPath + "cart",
			method: "POST",
			success: function(result) {
				$("#mainDiv").html(result);
			}
		});
	});
})