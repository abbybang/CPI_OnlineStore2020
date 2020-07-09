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



  <div class="ish-display-middle ish-text-white" style="padding:48px">
    <span class="ish-jumbo ish-hide-small">48 HOURS SALES</span><br>
    <span class="ish-xxlarge ish-hide-large ish-hide-medium">BIG SAVINGS!</span><br>
    <span class="ish-large">Cyber Savings deals are live. Save on our most exceptional tech, up to $400 off.
Plus, get 12 months financing on purchases $699+ and up to 6% back in rewards.
Questions? Call 1-855-972-8226 or Click to Chat.</span>
    <p><a href="#about" class="ish-button ish-white ish-padding-large ish-large ish-margin-top ish-opacity ish-hover-opacity-off">Learn more and start today</a></p>
  </div> 



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