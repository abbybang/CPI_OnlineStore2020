$(document).ready(function(){
    

$("#cart").click(function() {
	    if(userId == "")
		{
			window.location.href = contextPath + "user-login";
		}
		else{
			window.location.href = contextPath + "cart";
		}
	});

$("#logout").bind("click", function(){
		$.ajax({
        	url: contextPath  + "user-login",
        	type:"POST",
        	data: {
        		event : "logout"
        	}
        }).done(function(){
        	window.location.href = contextPath;
        })
	});






});




setTimeout(function(){
  $('body').addClass('loaded');
}, 2000);
