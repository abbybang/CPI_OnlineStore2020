$(document).ready(function(){
	$("#view").click(function(){
		$.ajax({
			url: contextPath + "homepageList",
			method: "POST",
			data :{
				action: "get",
				productId:    $('#productId').val(),
	
				
			}
		}).done(function(result){
			$('#showProducts').html(result);
		})
	})
	
})


setTimeout(function(){
  $('body').addClass('loaded');
}, 2000);