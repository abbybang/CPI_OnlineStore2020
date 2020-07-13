<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact US</title>
<link rel="stylesheet" href= "css/HomePageCss/HomePageCss.css">

</head>
<body>

<!-- Contact Modal -->
<div id="contact" class="ish-modal ">
  <div class="ish-modal-content ish-animate-zoom ">
    <div class="ish-container ish-darkblue">
      <span onclick="document.getElementById('contact').style.display='none'" class="ish-button ish-darkblue ish-display-topright ish-large">x</span>
      <h1>CONTACT US</h1>
    </div>
    <div class="ish-container ">
      <form action="" target="_blank" >
      <p><input class="ish-input text-body  ish-padding-16" type="text" placeholder="Name" required name="Name" ></p>
      <p><input class="ish-input text-body  ish-padding-16" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="ish-input text-body  ish-padding-16" type="text" placeholder="Subject" required name="Subject"></p>
      <p><input class="ish-input text-body ish-padding-16" type="text" placeholder="Message" required name="Message"></p>
        <p class="ish-darkblue"><button class="ish-button ish-text-white"  type="submit">SEND MESSAGE</button></p>
      </form>
    </div>
  </div>
</div>

</body>
</html>