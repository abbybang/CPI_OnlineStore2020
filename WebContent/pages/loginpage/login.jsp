<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="/pages/header.jsp" />
<body>
	<div id="loginContainer">
	<h1>${msg}</h1>
		<form>
			<div>
				<label for="username">Username: </label><input type="text" name="username" id="username">
			</div>
			<div>
				<label for="password">Password: </label><input type="password" name="password" id="password">
			</div>
			<div>
				<input type="button" id="loginBtn" value="Continue">
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$("#loginBtn").bind( "click", function(){
			var username = $("#username").val();
			var password = $("#password").val();
			userLogin( username, password );
		});
	});
</script>
</html>