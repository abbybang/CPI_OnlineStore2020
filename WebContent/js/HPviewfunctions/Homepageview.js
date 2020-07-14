$(document).ready(function(){
	$("#view").click(function(){
		$.ajax({
			url: contextPath + "homepageList",
			method: "POST",
			data :{
				action: "get",
				productId:    $('#productId').val()
			}
		}).done(function(result){
			$('#showProducts').html(result);
		});
	});
	
	$("#signOut").bind( "click", function(){
		$.ajax({
			url: contextPath + "user-login",
			method: "POST",
			data: {
				event: "logout"
			},
			success: function(){
				window.location.href = contextPath + "Home-page";
			}
		});
	});
	
});


setTimeout(function(){
  $('body').addClass('loaded');
}, 2000);
