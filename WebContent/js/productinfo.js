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
		var stock = parseInt($('#stock').val());
		var total;
		if(stock < qty)
		{
			alert("Lack of stock")
		}
		total = qty + 1;
		$('#quantityValue').val(total);
	});
});
