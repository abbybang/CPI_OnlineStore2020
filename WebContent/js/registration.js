$(document).ready(function(){
	$('#signUp').bind( "click", function(){
		var errMsg = "";
		var data = {};
		data['fname'] = $('#fname').val().trim();
		data['lname'] = $('#lname').val().trim();
		data['email'] = $('#email').val().trim();
		data['address'] = $('#address').val().trim();
		data['phoneNumber'] = $('#phoneNumber').val().trim();
		data['userName'] = $('#username').val().trim();
		data['passWord'] = $('#password').val().trim();
		data['confirmPassWord'] = $('#confirmPassword').val().trim();
		data['isAdmin'] = 'N';
		
		$.each( data, function( key, value ) {
			if(!data[key]){
				errMsg = "Please fill out all fields.";
				return false;
			}
			
			if(key == "confirmPassWord"){
				errMsg = data[key] != data["passWord"] ? "Passwords do not match." : "";
			}
		});
		
		if(errMsg){
			alertify.alert(errMsg);
		} else {
			saveUserData(data);
		}
	});
	
	$("input").focus(function(){
		if($(this).val()){
			$(this).removeClass("errClass");
		} else {
			$(this).addClass("errClass");
		}
	});

	$("input").on( "keyup", function(){
		if($(this).val()){
			$(this).removeClass("errClass");
		} else {
			$(this).addClass("errClass");
		}
	});
	
	$("textarea").focus(function(){
		if($(this).val()){
			$(this).removeClass("errClass");
		} else {
			$(this).addClass("errClass");
		}
	});
	
	$("textarea").on( "keyup", function(){
		if($(this).val()){
			$(this).removeClass("errClass");
		} else {
			$(this).addClass("errClass");
		}
	});
});

function saveUserData(data){
	data['event'] = "saveUserData";
	
	$.ajax({
		url: contextPath + "user-register",
		method: 'POST',
		data: data
//		success: function(result){
//			console.log(result);
//			console.log($(result).filter('#errMsg').val());
//		}
	}).done(function(result){
		$('#errMsg').val($(result).filter('#errMsg').val());
		var errMsg = $("#errMsg").val();
		if(errMsg == 'name'){
			alertify.alert("<i class='fa fa-exclamation-triangle'> Name already exists.</i>",
					function(){
						$('#fname').addClass("errClass");
						$('#lname').addClass("errClass");
			});
		} else if( errMsg == 'username' ){
			alertify.alert("<i class='fa fa-exclamation-triangle'> Username already exists.</i>",
					function(){
						$('#username').addClass("errClass");
			});
		} else if( errMsg == 'email' ){
			alertify.alert("<i class='fa fa-exclamation-triangle'> Email already exists.</i>",
					function(){
						$('#email').addClass("errClass");
			});
		} else {
			alertify.alert("Thank very much, you are now successfully registered.", function(){
				window.location.href = contextPath + "user-login";
			});
		}
	});
}
