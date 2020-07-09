function userLogin( username, password ){
	$.ajax({
		url: contextPath + "user-login",
		method: "POST",
		data: {
			event: "login",
			username: username,
			password: password
		}
	}).done(function(){
		alert('yes');
	});
}