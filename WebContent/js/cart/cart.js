function initCartPage() {
	console.log("Inside initCartPage()");
	
	$("button#shopBtn").click(function() {
//		$.ajax({
//			url: contextPath + "",
//			data: {
//				
//			},
//			method: ""
//		}).done(function(result) {
//			$("").html(result);
//		}).fail(function(result) {
//			console.log(result);
//		});
		
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
			
//			$.ajax({
//				url: contextPath + "",
//				data: {
//					
//				},
//				method: "POST"
//			}).done(function(result) {
//				$("").html(result);
//			}).fail(function(result) {
//				console.log(result);
//			});

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
				customerID: customerID,
				grandTotal: grandTotal,
				action: "confirm"
			},
			method: "POST"
		}).done(function(result) {
			$("#mainDiv").html(result);
		}).fail(function(result) {
			console.log(result);
		});
		
	    console.log("'Confirm' button was clicked.");
	});
}