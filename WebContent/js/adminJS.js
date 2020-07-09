$(document).ready(function(){
	$( "#delete" ).bind( "click", function() {
		var checkboxes = document.getElementsByName('toDelete');
        var selected = new Array();
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                selected.push(checkboxes[i].value);
            }
        }

        $.ajax({
        	url: contextPath + "products",
        	type:"POST",
        	dataType:'ajax',
        	data: {
        		action  : "delete",
        		toDelete: selected
        	}
        })
        .done(function(text){
        	$("tbody").html(text);
        	
        });
        window.location.reload();
	});
});