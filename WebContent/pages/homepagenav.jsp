<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nav</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href= "css/HomePageCss/HomePageCss.css">

</head>

<body>
<!-- Navbar (sit on top) -->
<div class="ish-top">
  <div class="ish-bar ish-white ish-card" id="myNavbar">
    <a href="#home" class="ish-bar-item ish-button ish-wide ish-text-white">HOME</a>
    
    <!-- Right-sided navbar links -->
    <div class="ish-right ish-hide-small">
      <a href="#about" class="ish-bar-item ish-button  ish-text-white">ABOUT</a>
      <a href="#team" class="ish-bar-item ish-button  ish-text-white">TEAM</a>
      <a href="#laptops" class="ish-bar-item ish-button  ish-text-white"> LAPTOPS</a>
      <a href="#contact" class="ish-bar-item ish-button  ish-text-white">CONTACT</a>
      <a href="#signin" class="ish-bar-item ish-button  ish-text-white"> SIGNIN</a>
      
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="ish-bar-item ish-button ish-right ish-hide-large ish-hide-medium" onclick="ish_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

</body>
</html>