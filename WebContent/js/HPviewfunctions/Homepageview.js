$(document).ready(function(){
	$("#add").click(function(){
		$.ajax({
			url: contextPath + "Items",
			method: "POST",
			data :{
				action: "view",
				productId:    $('#productId').val(),
				quantity:     $('#quantity').val()
				
			}
		}).done(function(result){
			$('#cartContents').html(result);
		})
	})
	
})