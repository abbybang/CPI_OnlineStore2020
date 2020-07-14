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

$("#signout").bind("click", function(){
		$.ajax({
        	url: contextPath  + "user-login",
        	type:"POST",
        	data: {
        		event : "logout"
        	}
        }).done(function(){
        	window.location.href = contextPath + "Home-page";
        })
	});


});



setTimeout(function(){
  $('body').addClass('loaded');
}, 2000);
