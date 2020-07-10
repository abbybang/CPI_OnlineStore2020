$(document).ready(function(){
	$("#th-checkbox").attr("disabled", true);

//	if(se.length > 0){
//    	$('#th-checkbox').attr('checked', 'checked');
//    }else{
//    	$('#th-checkbox').removeAttr('checked');
//    }
	$( "#delete" ).bind( "click", function() {
		var checkboxes = document.getElementsByName('toDelete');
        var selected = new Array();
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                selected.push(checkboxes[i].value);
            }
        }
        
       if(selected.length > 0){ 
	        $.ajax({
	        	url: "products",
	        	type:"POST",
	        	data: {
	        		action  : "delete",
	        		toDelete: selected
	        	}
	        })
	        .done(function(text){       	
	        	$("#container-div").html(text);
	        }); 
       }else{
    	   alert('No selected row!');
       }
	});
	$( "#add" ).bind( "click", function() {        	
        $.ajax({
        	url: "products",
        	type:"POST",
        	data: {
        		action     : "add",
        		productId  : $('#productId').val(),
        		productName: $('#productName').val(),
    			brand      : $('#brand').val(),
    			price      : $('#price').val(),
    			stock      : $('#stock').val(),
    			description: $('#description').val()
        	}
        })
        .done(function(text){       	
        	$("#container-div").html(text);
        });    
	});
	$('#productTable tbody').on('click', 'tr', function() {
	//get row contents into an array
		var tableData = $(this).children("td").map(function() {
							return $(this).text();
            			}).get();
		$('#productName').val(tableData[2]);
		$('#brand').val(tableData[3]);
		$('#price').val(tableData[4]);
		$('#stock').val(tableData[5]);
		$('#description').val(tableData[6]);
	});
	$( "#addForm" ).bind( "click", function() {
		$('#productName').val(null);
		$('#brand').val(null);
		$('#price').val(null);
		$('#stock').val(null);
		$('#description').val(null);
	});
	
});