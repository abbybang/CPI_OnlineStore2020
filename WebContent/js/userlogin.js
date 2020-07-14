function loginValidation( username, password ){
	if( username == null || username == '' ){
		alertify.alert("<i class='fa fa-exclamation-triangle'> Please input username.</i>");
		return false;
	} else if( password == null || password == '' ){
		alertify.alert("<i class='fa fa-exclamation-triangle'> Please input password.</i>");
		return false;
	} else {
		userLogin( username, password );
	}
} 



function userLogin( username, password ){
	$.ajax({
		url: contextPath + "user-login",
		method: "POST",
		data: {
			event: "login",
			username: username,
			password: password
		}
	}).done(function(result){
		$("#loginContainer").html(result);
		var errMsg = $("#errMsg").val();
		
		if(errMsg){
			alertify.alert("<i class='fa fa-exclamation-triangle'>" + errMsg + "</i>");
		}else{
			window.location.href = contextPath + "/Homepage";
		}



		
	});
}
