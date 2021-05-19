<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../Basvuru/basvuru.css" rel="stylesheet"  />


</head>
<body>
<%@ include file="../homepage/logout_header.jsp" %>

<div class="m"><%@ include file="../homepage/menu.jsp" %></div>
<h1 >Basvurular</h1>
<div class="baslangic">

<div id="ana-div">

<div class="box" id="kredi">	
<h2>
<span>  Bireysel Kredi Basvurusu </span> </h2>
<div>
<span >
<img src="../resimler/proje1.jpg"  />
</span></div>

<ul>


<li class="list"> <a href=" #" target="_self">TasitKredisi</a> </li>

<li class="list"><a href=" #" target="_self">Konut Kredisi</a> </li>
<li class="list"><a href=" #" target="_self">Kredili mevduat hesabi</a> </li>

</ul>


</div>
<div class="box" id="kart">  <h2> <span> Kart Basvurusu	 </span> </h2>	
<div>
<span>
<img src="../resimler/proje2.jpg"  />
</span></div>

<ul>
<li class="list"> <a href=" #" target="_self">Banka karti Basvurusu</a> </li>
<li class="list"> <a href=" #" target="_self">Kredi karti Basvurusu</a> </li>
<li class="list"><a href=" #" target="_self">Basvuru sorgulama</a> </li>


</ul>	</div>
 

<div class="box" id="emeklilik" > <h2>	<span> Bireysel Emeklilik Basvurusu		 </span></h2>	
<div>
<span >
<img src="../resimler/proje3.jpg"  />
</span></div>
<a href="/tr/bireysel/basvurular/bireysel-emeklilik-sistemi-basvurusu" class="img-box" target="_self" style="background-image:url(/PublishingImages/Subpage/bireysel/sigortaemeklilik/Genel_Bilgiler.jpg)" tabindex="-1" aria-hidden="true"></a>
<p style="padding-left:35px;"><b>Bireysel Emeklilik avantajlari ile yarinlarinizi guvence altina almak icin siz de basvurun.</b> </p>
</div>


<div class="box" id="sigorta" >	<h2> <span>Sigorta Urunleri Basvurulari  </span> </h2>
<div>
<span>
<img src="../resimler/proje4.jpg" />
</span></div>

<ul>
<li class="list"> <a href=" #" target="_self">Genisletilmis kasko sigortasi</a> </li>
<li class="list"> <a href=" #" target="_self">Ozel Konut Sigortasi</a> </li>
<li class="list"><a href=" #" target="_self">Esya Paket Sigortasi</a> </li>
<li class="list"><a href=" #" target="_self">DASK (Dogal Afet Sigortalari Kurumu) Sigortasi</a> </li>

</ul>	 
</div>
</div>
</div>
<%@ include file="../homepage/footer.jsp" %>

</body>
</html>