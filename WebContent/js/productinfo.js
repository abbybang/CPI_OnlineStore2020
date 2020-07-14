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
		var qty = parseInt($('#quantityValue').val());
		var total;
		if(userId == "")
		{
			window.location.href = "pages/loginpage/login.jsp";
		}
		else{
			if(qty == 0)
			{
				alert("The quantity value must not be equal to zero.");
			}
			else
			{
			    $.ajax({
			    url: "cart",
			    type:"POST",
			    data: {
			        action        : "addProductCart",
			        userId        : userId,
			        productId     : productId,
			        price         : price,
			        quantity      : $('#quantityValue').val()
			    }
			    }).done(function(text){       	
			    	console.log("success");
			    	alert("Your Order Successfully added to the cart.");
			    });  
			}
		}
	});
	
	$("#checkout").click(function() {
		if(userId == "")
		{
			window.location.href = "pages/loginpage/login.jsp";
		}
		else{
			window.location.href = "pages/cart/cart.jsp";
		}
	});

	
});
