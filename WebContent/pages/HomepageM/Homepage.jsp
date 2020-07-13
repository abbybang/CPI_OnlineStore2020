<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<title>ONLINE STORE</title>
<head>
<link rel="icon" href="homeimages/favicon.ico" type="image/gif" sizes="16x16">


</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href= "css/HomePageCss/HomePageCss.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<jsp:include page="/pages/HomepageM/HomepageHeader1.jsp"/>
<jsp:include page="/pages/HomepageM/HomepageHeader2.jsp"/>
<jsp:include page="/pages/HomepageM/HomepageAboutUs.jsp"/>
<jsp:include page="/pages/HomepageM/HomepageLaptopSection.jsp"/>
<jsp:include page="/pages/HomepageM/HomepageSupportSection.jsp"/>
<jsp:include page="/pages/HomepageM/HomepageContact.jsp"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/HPviewfunctions/HomePageView.js"></script> 
<link rel="stylesheet" href= "css/HomePageCss/Preloader.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/third-party/jquery-3.5.1.js"></script>

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
}

.bgimg-1 {
  background-position: center;
  background-size: cover;
  background-image: url("homeimages/bg.jpg");
  min-height: 100%;
}

.bgimg-2 {
  background-position: center;
  background-size: cover;
  background-image: url("homeimages/pre3.jpg");
  min-height: 100%;
}


.ish-bar .ish-button {
  padding: 16px;
}

</style>
<body>

<div class="content">

  <div class="loader-wrapper">
   <div class="loader"></div>

    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>
  </div>
  
</body>

<jsp:include page="/pages/HomepageM/HomepageFooter.jsp"/>
</html>
