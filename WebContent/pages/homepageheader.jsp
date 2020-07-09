<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HEADER</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href= "css/HomePageCss/HomePageCss.css">

</head>


<body>

<!-- Header with full-height image -->
<header>
<div class="ish-content ish-display-container ish-grayscale-min" id="home">
  <img class="mySlides" src="homeimages/apple.jpg" style="width:100%">
  <img class="mySlides" src="homeimages/mac2.jpg" style="width:100%">
  <img class="mySlides" src="homeimages/mac3.jpg" style="width:100%">


  <button class="ish-button ish-black ish-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="ish-button ish-black ish-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>
</header>



<!--   <div class="ish-display-topmiddle ish-text-white" style="padding:48px">
    <span class="ish-jumbo ish-hide-small">48 HOURS SALES</span><br>
    <span class="ish-xxlarge ish-hide-large ish-hide-medium">Start something that matters</span><br>
    <span class="ish-large">Stop wasting valuable time with projects that just isn't you.</span>
    <p><a href="#about" class="ish-button ish-white ish-padding-large ish-large ish-margin-top ish-opacity ish-hover-opacity-off">Learn more and start today</a></p>
  </div> 
  <div class="ish-display-bottomleft ish-text-grey ish-large" style="padding:24px 48px">
    <i class="fa fa-facebook-official ish-hover-opacity"></i>
    <i class="fa fa-instagram ish-hover-opacity"></i>
    <i class="fa fa-snapchat ish-hover-opacity"></i>
    <i class="fa fa-pinterest-p ish-hover-opacity"></i>
    <i class="fa fa-twitter ish-hover-opacity"></i>
    <i class="fa fa-linkedin ish-hover-opacity"></i> 
  </div>-->



<script>

var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


</body>
</html>