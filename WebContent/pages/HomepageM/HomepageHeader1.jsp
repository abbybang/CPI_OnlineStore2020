<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LAPTOP FACTORY</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href= "css/HomePageCss/HomePageCss.css">
<script>var contextPath = "${pageContext.request.contextPath}/";</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/third-party/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/HPviewfunctions/HomePageView.js"></script>

<script>
var userId = '${sessionScope.user.userId}';
</script>

</head>

<body>


<!-- header1 (sit on top) -->
<div class="ish-top">
  <div class="ish-bar ish-darkblue ish-card" id="myNavbar">
    <a href="${pageContext.request.contextPath}/Homepage" class="ish-bar-item ish-button ish-wide ish-text-white">HOME</a>
    <c:if test="${sessionScope.user!=null}">
     <label class="ish-bar-item ish-wide ish-text-white">Welcome ${sessionScope.user.fname}!</label>
    </c:if>
    <!-- Right-sided navbar links -->
    <div class="ish-right ish-hide-small">
      <a href="#cart" class="ish-bar-item ish-button  ish-text-white" id="cart">CART</a>
      <a href="#products" class="ish-bar-item ish-button  ish-text-white"> PRODUCTS</a>
      <a href="#about" class="ish-bar-item ish-button  ish-text-white">ABOUT</a>
      <a href="#contact" class="ish-bar-item ish-button  ish-text-white"  onclick="document.getElementById('contact').style.display='block'" class="w3-button w3-black">CONTACT</a>
      <a href="#support" class="ish-bar-item ish-button  ish-text-white">SUPPORT</a>   
      <c:if test="${ sessionScope.user == null }">
      	<a href="${pageContext.request.contextPath}/user-login" class="ish-bar-item ish-button  ish-text-white">${ account }</a>
      </c:if>
      <c:if test="${ sessionScope.user != null }">
      	<a class="ish-bar-item ish-button  ish-text-white" id="signOut">${ account }</a>
      </c:if>

      
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="ish-bar-item ish-button ish-right ish-hide-large ish-hide-medium" onclick="ish_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

</body>
</html>