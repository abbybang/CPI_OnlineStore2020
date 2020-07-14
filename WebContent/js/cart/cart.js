function initCartPage() {
	console.log("Inside initCartPage()");
	
	$("button#shopBtn").click(function() {
		window.location.href = contextPath;
		
	    console.log("'Continue Shopping' button was clicked.");
	});
	
	$("button.prodNameBtn").click(function() {
		try {
			var id = $(this).attr("id");
			var regex = /^prod([0-9]+)_Btn$/;
			matches = regex.exec(id);
			var productID;
			
			if(matches !== null) {
				productID = matches[1];
			}
			
			window.location.href = contextPath + "ShowProduct?productId=" + productID;

			console.log("Customer ID: " + customerID);
			console.log("Product ID: " + productID);
		} catch(err) {
			console.log(err.message);
		}
	});
	
	$("button#confirmBtn").click(function() {
		$.ajax({
			url: contextPath + "cart",
			data: {
				action: "confirm",
				grandTotal: grandTotal
			},
			method: "GET"
		}).done(function(result) {
			window.location.href = contextPath;
		}).fail(function(result) {
			console.log(result);
		});
		
	    console.log("'Confirm' button was clicked.");
	});
	
}