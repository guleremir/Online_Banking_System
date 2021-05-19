<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>KULLANICI ANASAYFA</title>
<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0;margin-left:400px;
  margin-right:400px;}

/* Slideshow container */
.slideshow-container {
  position: relative;
  background: #f1f1f1f1;
  height:600px;
  
}

/* Slides */
.mySlides {
 
  display: none;
  padding: 150px;
  padding-top:60px;
  
  text-align: center;
}
div .iletisim{
display:inline-block}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -30px;
  padding: 16px;
  color: #888;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  position: absolute;
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
  color: white;
}

/* The dot/bullet/indicator container */
.dot-container {
    text-align: center;
    padding: 20px;
    background: #ddd;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

/* Add a background color to the active dot/circle */
.active, .dot:hover {
  background-color: #717171;
}

/* Add an italic font style to all quotes */
q {font-style: italic;}

/* Add a blue color to the author */
.author {color: cornflowerblue;}

/*kisayollarim*/
.button {
  width: 300px;
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button3:hover {
  background-color: #f44336;
  color: white;
}

.button4 {
  background-color: white;
  color: black;
  border: 2px solid #FFDB01;
}
.menu{float:left;}
.ana{
margin-left:300px;,

}

.button4:hover {background-color: #FFDB01;}
</style>

</head>
<body>
<%@ include file="../homepage/logout_header.jsp" %>
<div class="menu"><%@ include file="../homepage/menu.jsp" %></div>
<div class="ana">


<% 

String vadebalance = request.getParameter("vadebalance");
String vadesizbalance = request.getParameter("vadesizbalance");
String yatirimbalance = request.getParameter("yatirimbalance");
String accountId = request.getParameter("accountId");


%>
 


<script src="https://kit.fontawesome.com/63fc63c127.js" crossorigin="anonymous"></script>

<div class="slideshow-container">

<div class="mySlides">
  <h1>VADELI HESAP</h1><br>
  <p><strong>Hesap No :</strong> <% out.println(accountId);%></p><br>
  <div style="border:10px solid skyblue; border-radius: 100px;margin:auto;width:200px;height:200px;">
<br>
  <p><strong>TOPLAM</strong><br><br> <% out.println(vadebalance);%></p>
  </div>
</div>

<div class="mySlides">
  <h1>VADESIZ HESAP</h1><br>
  <p><strong>Hesap No :</strong> <% out.println(accountId);%></p><br>
  <div style="border:10px solid pink; border-radius: 100px;margin:auto;width:200px;height:200px;">
<br>
  <p><strong>TOPLAM</strong><br><br> <% out.println(vadesizbalance);%></p>
  </div>
</div>

<div class="mySlides">
  <h1>YATIRIM HESABI</h1><br>
  <p><strong>Hesap No :</strong> <% out.println(accountId);%></p><br>
  <div style="border:10px solid orange; border-radius: 100px;margin:auto;width:200px;height:200px;">
<br>
  <p><strong>TOPLAM</strong><br><br> <% out.println(yatirimbalance);%></p>
  </div>
</div>

<div class="mySlides">
  <h1>KISAYOLLARIM</h1><br>
  <a href="#"><button class="button button1">HAVALE / EFT</button></a><br>
<a href="#"><button class="button button2">FATURA ODEME</button></a><br>
<a href="#"><button class="button button3">TUM HESAPLARIM</button></a><br>
<a href="#"><button class="button button4">KREDILERIM</button></a><br>
</div>


<div class="mySlides">
  <h1>ILETISIM</h1><br>
  
  <a class="iletisim" href="iletisim.jsp"><button class="button button1">BIZE ULASIN</button></a><br><br>
 
  <i class="fas fa-envelope fa-2x"></i>
  <br><br>
  <a class="iletisim" href="#"><button class="button button2">EN YAKIN BANKA/ATM</button></a><br><br>
  <i class="fas fa-map-marker-alt fa-2x"></i>
  
  <br><br>
  <a class="iletisim" href="hakkimizda.jsp"><button class="button button3">HAKKIMIZDA</button></a><br><br>
  <i class="fas fa-address-card fa-2x"></i><br>
</div>

<a class="prev" onclick="plusSlides(-1)"><i class="fas fa-angle-double-left fa-2x"></i></a>
<a class="next" onclick="plusSlides(1)"><i class="fas fa-angle-double-right fa-2x"></i></a>

</div>

<div class="dot-container">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
  <span class="dot" onclick="currentSlide(5)"></span> 
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

</div>

<%@ include file="../homepage/footer.jsp" %>
</body>
</html> 
