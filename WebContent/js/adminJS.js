var tableData;
var id;
$(document).ready(function(){
	$('.productId').hide();
	$('#th-id').hide();
	$("#th-checkbox").attr("disabled", true);
	
	//DELETE======================================================	
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
	        	$('#th-id').hide();
	        	$(".productId").hide();
	        }); 
       }else{
    	   alert('No selected row/s!');
       }
	});
	
	//ADD========================================================
	$("#add" ).bind( "click", function() { 
		if(isEmpty() == false){
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
	        	$('.productId').hide();
	        	$('#th-id').hide();
	        });  
		}else{
			alert('Some fields are empty!');
		}
	});
	
	//EDIT========================================================
	$('#edit').bind('click', function(){
		var table = $('#productTable').DataTable();
		if(isEmpty() == false && table.rows('.selected').any()){
			$.ajax({
	        	url: "products",
	        	type:"POST",
	        	data: {
	        		action     : "update",
	        		productId  : id,
	        		productName: $('#productName').val(),
	    			brand      : $('#brand').val(),
	    			price      : $('#price').val(),
	    			stock      : $('#stock').val(),
	    			description: $('#description').val()
	        	}
	        }).done(function(text){       	
	        	$("#container-div").html(text);
	        	getData();
	        	$('.productId').hide();
	        	$('#th-id').hide();
	        	$('#modalForm').modal('hide');
	        });  	
		}else{
			alert('Some fields are empty!');
		}
	});
	
	//ADD FORM ACTIONS============================================
	$( "#addForm").bind( "click", function() {
		$('#add').show();
		$('#edit').hide();
		clearFields();
		
		$('.modal-title').text('Add Product');
	});
	
	//EDIT FORM ACTIONS===========================================
	$("#editForm").bind("click", function(){
		$('#add').hide();
		$('#edit').show();
		//$('#modalForm').modal()
		$('.modal-title').text('Edit Product');
		$('#productName').val($.trim(tableData[2]));
		$('#stock').val($.trim(tableData[3]));		
		$('#price').val($.trim(tableData[4]));
		$('#brand').val($.trim(tableData[5]));
		$('#description').val($.trim(tableData[6]));
		tableData=null;
	});
	getData();
	$('#th-id').hide();
	
	//LOGOUT ADMIN
	$("#logout").bind("click", function(){
		$.ajax({
        	url: contextPath  + "user-login",
        	type:"POST",
        	data: {
        		event : "logout"
        	}
        }).done(function(){
        	window.location.href = contextPath + "/products";
        })
	});
});

//HIDE PRODUCT ID COLUMN==========================================
function hideId(){
	$('.productId').hide();
};

//GET ALL CHECKED PRODUCTS========================================
function getData(){
	$('#tbody tr').click(function() {
		//get row contents into an array
			$(this).addClass('selected').siblings().removeClass('selected'); 
			$( "#x" ).prop( "checked", true );
			tableData = $(this).children("td").map(function() {
								return $(this).text();
	            			}).get();
			id = $.trim(tableData[1]);
		});
}

//VALIDATE PRICE INPUT============================================
function isNumberKey(key){
    var keycode = (key.which) ? key.which : key.keyCode;
    if (!(keycode == 8 || keycode == 46) && (keycode < 48 || keycode > 57)) {
        return false;
    }
    else {
    	var parts = key.srcElement.value.split('.');
        if (parts.length > 1 && keycode == 46)
            return false;
        return true;
    }
};

//CLEAR MODAL FORM FIELDS=========================================
function clearFields(){
	$('#productName').val(null);
	$('#brand').val(null);
	$('#price').val(null);
	$('#stock').val(null);
	$('#description').val(null);
}

//CHECK EMPTY MODAL FIELDS=======================================
function isEmpty(){
	if($.trim($('#productName').val()) == '' || 
	   $.trim($('#brand').val()) == '' ||
	   $.trim($('#price').val())=='' ||
	   $.trim($('#stock').val())=='' ||
	   $.trim($('#description').val())==''){
	   return true;
	}else{
		return false;
	}
}