<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="/pages/header.jsp" />
<body>
	<div id="loginContainer">
		<div id="loginInfo">
			<img src='${pageContext.request.contextPath}/pages/loginpage/images/login-logo-img.jpg' alt='login-logo-img.jpg'>
			<h1>LAPTOP FACTORY</h1>
			<h3>Laptop for <span>GAMERS</span></h3>
		</div>
		<form id="loginForm">
			<div>
				<input type="text" name="username" id="username" placeholder="Username" autocomplete="off">
				<span class="mandatory-err-msg"><i class='fa fa-exclamation-triangle'></i></span>
			</div>
			<div>
				<input type="password" name="password" id="password" placeholder="Password" autocomplete="off">
				<span class="mandatory-err-msg"><i class='fa fa-exclamation-triangle'></i></span>
			</div>	
			<div>	
				<input type="button" id="loginBtn" value="Continue">
			</div>
			<p style="font-size: 13px;">If you haven't signed up yet, <a href="${pageContext.request.contextPath}/pages/registration/registration.jsp">click here</a>.</p>
		</form>
	</div>
	<jsp:include page="/pages/footer.jsp" />
	<input type="hidden" value="${errMsg}" id="errMsg">
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$("#loginBtn").bind( "click", function(){
			var username = $("#username").val();
			var password = $("#password").val();
			loginValidation( username, password );
		});
	});
</script>
</html>