<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="/pages/header.jsp" />
<body>
	<div id="registrationContainer">
		<h1>Sign up now!</h1>
		<div id="registrationInfo">
			<h3><span>BE</span> ONE OF US</h3>
			<p>One of the most leading laptop reseller in the philippines.</p>
			<p>Be confident in quality and satisfaction in cheaper price.</p>
		</div>
		<div id="registrationFormPersonalInfo">
			<label>Your personal information:</label>
			<div class="registration-inputfields first-child">
				<input type="text" name="fname" id="fname" placeholder="First name" autocomplete="off">
				<input type="text" name="lname" id="lname" placeholder="Last name" autocomplete="off">
				<span class="mandatory-err-msg"><i class='fa fa-exclamation-triangle'></i></span>
			</div>
			<div class="registration-inputfields">
				<input type="text" name="email" id="email" placeholder="Email" autocomplete="off">
				<span class="mandatory-err-msg"><i class='fa fa-exclamation-triangle'></i></span>
			</div>
			<div class="registration-inputfields">
				<input type="text" name="phoneNumber" id="phoneNumber" placeholder="Phone number" onkeypress='return event.charCode >= 48 && event.charCode <= 57' maxlength="12" autocomplete="off">
				<span class="mandatory-err-msg"><i class='fa fa-exclamation-triangle'></i></span>
			</div>
			<div class="registration-inputfields">
				<textarea placeholder="Address" id="address" autocomplete="off"></textarea>
				<span class="mandatory-err-msg"><i class='fa fa-exclamation-triangle'></i></span>
			</div>
			<p>By signing up, I have agreed in the terms of Laptop factory's Privacy Policy.</p>
		</div>
		<div id="registrationFormUserInfo">
			<label>Your user credentials:</label>
			<div class="registration-inputfields">
				<input type="text" name="username" id="username" placeholder="Username" autocomplete="off">
				<span class="mandatory-err-msg"><i class='fa fa-exclamation-triangle'></i></span>
			</div>
			<div class="registration-inputfields">
				<input type="password" name="password" id="password" placeholder="Password" autocomplete="off">
				<span class="mandatory-err-msg"><i class='fa fa-exclamation-triangle'></i></span>
			</div>
			<div class="registration-inputfields">
				<input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm password" autocomplete="off">
				<span class="mandatory-err-msg"><i class='fa fa-exclamation-triangle'></i></span>
			</div>
		</div>
		<input type="button" name="signUp" id="signUp" value="Sign up">
		<p>Has an account already? Go <a href="${pageContext.request.contextPath}/pages/loginpage/login.jsp">Sign in</a>.</p>
	</div>
	<jsp:include page="/pages/footer.jsp" />
	<input type="hidden" value="${errMsg}" id="errMsg">
</body>
</html>