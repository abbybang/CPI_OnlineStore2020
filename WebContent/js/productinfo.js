$(document).ready(function(){
    
	$("#minus").click(function() {
		var qty = parseInt($('#quantityValue').val());
		if(qty == 0){
			$('#quantityValue').val(qty);
		}
		else{
			var total;
			total = qty - 1;
			$('#quantityValue').val(total);
		}
		
	});
	$("#add").click(function() {
		var qty = parseInt($('#quantityValue').val());
		var total;
		
		if(qty < stock)
		{
			total = qty + 1;
			$('#quantityValue').val(total);
		}
		else{
			$('#quantityValue').val(stock);
		}	
	});
	$("#quantityValue").blur(function(){
		var qty = parseInt($('#quantityValue').val());
		var total;
		
		if(qty >= stock)
		{
			alert("We currently don't have enough stocks for your desired order!")
			$('#quantityValue').val(stock);
		}
	  });
	
	$("#addProductCart").bind( "click", function() { 
	    $.ajax({
	    url: "cart",
	    type:"POST",
	    data: {
	        action     : "addProductCart",
	        USER_ID: $('#customerId').val(),
	    	PRODUCT_ID      : $('#productId').val(),
	    	PRICE      : $('#price').val(),
	    	QUANTITY      : $('#quantity').val()
	    }
	    }).done(function(text){       	
	    	console.log("success");
	    });  
	});
	
});
