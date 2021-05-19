<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link href="../Kartlarim/kartlarim2.css" rel="stylesheet"  />
</head>
<body>
<%@ include file="../homepage/logout_header.jsp" %>
<div class="menu">
<%@ include file="../homepage/menu.jsp" %></div>
<%

String userId = request.getParameter("userId");
String cardType = request.getParameter("cardType");
String cardId = request.getParameter("cardId");
String cardSecurityCode = request.getParameter("cardSecurityCode");
String validThruMonth = request.getParameter("validThruMonth");
String validThruYear = request.getParameter("validThruYear");
String dateOpen = request.getParameter("dateOpen");

%>
<h2 id="baslik"> <a href="#" target="_self"> <i class="fas fa-angle-left" id="home1"> </i></a> <b> Kredi Karti Detaylari </b> </h2>
<i class="fas fa-home" id="home"> > Kartlarim > Kredi Kartlarim > Kredi Kart Detaylari </i>
<div id="table4">
<table>
<tr>
<td  class="kart" ><label >Kart Tipi: <% out.println(cardType);%> </label></td>

</tr>
<tr>
<td  class="kart"><label >Kullanici Id: <% out.println(userId); %> </label></td>

</tr>
<tr>
<td  class="kart"><label >Kart Id:<% out.println(cardId); %></label></td>

</tr>
</table>

 </div>
 <div class="table3">
 <div id="table1">
 <table>
<tr>
<td  class="kart"><label >Hesap Acilis Tarihi: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<% out.println(dateOpen);%></label></td>

</tr>
<tr>
<td  class="kart"><label >Kart Guvenlik Numarasi: &nbsp <% out.println(cardSecurityCode);%></label></td>

</tr>

</table>
 </div>
 <div id="table2">
 <table>
<tr>
<td  class="kart"><label >Son Kullanim Ayi: &nbsp <% out.println(validThruMonth);%></label></td>

</tr>
<tr>
<td class="kart"><label >Son Kullanim Yili: &nbsp <% out.println(validThruYear);%></label></td>

</tr>

</table>
</div>
</div>
<br>
<a href="#" target="_self">
<div>

<button class="tus" type="button" id="button1"><b>KART HAREKETLERI</b></button>

</div>
</a>
<a href="#" target="_self">
<div id="button2" >

<button  class="tus" type="button" style="font-size:15px;" ><b>BORC ODEME</b></button>

</div>
</a>
<a href="#" target="_self">
<div id="button3" >

<button  class="tus" type="button" style="font-size:15px;"  ><b>NAKIT AVANS</b></button>

</div>
</a>



<%@ include file="../homepage/footer.jsp" %>
</body>
</html>