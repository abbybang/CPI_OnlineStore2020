$(document).ready(function(){
	$("#add" ).bind( "click", function() { 
		$('#productId').val('0');
		var empty = $('input').each(function() {
						if(!$(this).val()){
							alert('Some fields are empty');
							return false;
						}else{
							return true;
						}
					});
		if(empty!=false){
	        $.ajax({
	        	url: "products",
	        	type:"POST",
	        	data: {
	        		action     : "add",
	        		productName: $('#productName').val(),
	    			brand      : $('#brand').val(),
	    			price      : $('#price').val(),
	    			stock      : $('#stock').val(),
	    			description: $('#description').val()
	        	}
	        }).done(function(text){       	
	        	$("#container-div").html(text);
	        	getData();
	        	clearFields();        	
	        });  
		}
	});
})