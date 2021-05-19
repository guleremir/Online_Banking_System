<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../Kartlarim/kartlarim.css" rel="stylesheet"  />
</head>
<body>
<%@ include file="../homepage/logout_header.jsp" %>
<div class="menu">
<%@ include file="../homepage/menu.jsp" %></div>
<div class="ilk">
<h1 >KARTLARIM</h1>



<a class="link" href="../Kartlarim/kartlarim1_check.jsp?userId=<%=session.getAttribute("userId")%>">



<div class="kutu" id="kredi">
<h2>
<span> Kredi Kartlarim </span> </h2>
<div>
<div align="center" >
<img src="../resimler/kart3.jpg" >
</div>
</div>
</div >
</a>
<a class="link" href="../Kartlarim/kartlarim4_check.jsp?userId=<%=session.getAttribute("userId")%>">

<div class="kutu" id="banka">  <h2> <span> Banka Kartlarim </span> </h2>
<div>
<div align="center" >
<img src="../resimler/kart4.jpg"  />

</div></div>

</div>
</a>
 


<div class="kutu" id="sanal" >    <h2> <span>Sanal Kartlarim </span> </h2>
<div>
<div align="center">
<img src="../resimler/kart2.jpg" />
</div></div>
 
</div>

<div id="kutu2"> <h2>    <span> Yurt ici Banka Karti ATM Paylasimi </span></h2>
<div>
<div  align="center">
<img src="../resimler/kart1.jpg" id="yurt"/>
</div></div>

<p ><b>Bankkartiniz ile diger bankalara ait ATM'lerden de hesap bakiyesi ogrenme ve nakit cekim islemlerini yapabilirsiniz.</b> </p>
</div>
</div>
<br><br><br><br>


<%@ include file="../homepage/footer.jsp" %>

</body>
</html>