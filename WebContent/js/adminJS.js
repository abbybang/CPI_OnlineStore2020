var tableData;
$('.productId').hide();
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
	        	getData();
	        }); 
       }else{
    	   alert('No selected row!');
       }
	});
	$("#add" ).bind( "click", function() { 
		
		var empty = $('input').each(function() {
						if(!$(this).val()){
							alert('Some fields are empty');
							return false;
						}else{
							return true;
						}
					});
		alert("emtpy" + empty);
		if(empty!=false){
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
	        }).done(function(text){       	
	        	$("#container-div").html(text);
	        	getData();
	        	clearFields();
	        	
	        });  
		}
	});
	$('#edit').bind('click', function(){
		$.ajax({
        	url: "products",
        	type:"POST",
        	data: {
        		action     : "update",
        		productId  : $('#productId').val(),
        		productName: $('#productName').val(),
    			brand      : $('#brand').val(),
    			price      : $('#price').val(),
    			stock      : $('#stock').val(),
    			description: $('#description').val()
        	}
        }).done(function(text){       	
        	$("#container-div").html(text);
        	getData();
        });  	
	});
	$( "#addForm").bind( "click", function() {
		$('#add').show();
		$('#edit').hide();
		clearFields();
		
		$('.modal-title').text('Add Product');
	});
	$("#editForm").bind("click", function(){
		$('#add').hide();
		$('#edit').show();
		$('.modal-title').text('Edit Product');
		$('#productName').val($.trim(tableData[2]));
		$('#stock').val($.trim(tableData[3]));		
		$('#price').val($.trim(tableData[4]));
		$('#brand').val($.trim(tableData[5]));
		$('#description').val($.trim(tableData[6]));
		tableData=null;
	});
	getData();
});

function getData(){
	$('#tbody tr').click(function() {
		//get row contents into an array
			$(this).addClass('selected').siblings().removeClass('selected'); 
			
			tableData = $(this).children("td").map(function() {
								return $(this).text();
	            			}).get();
		});
}
function clearFields(){
	$('#productName').val(null);
	$('#brand').val(null);
	$('#price').val(null);
	$('#stock').val(null);
	$('#description').val(null);
}