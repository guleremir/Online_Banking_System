<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>TEAM BANK</title>
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" href="css/automatic_instructions.css">

</head>
<body>
	<%@ include file="../homepage/logout_header.jsp" %>
	<div class="menu">
		<%@ include file="../homepage/menu.jsp" %>
	</div>
	
	<div class="ikinci">
		<h1>OTOMATIK TALIMATLARIM</h1>
		<i class="fas fa-home" id="baslik2"> > Ödemeler > Otomatik Talimatlarim </i>
		<br>
		<i class="fas fa-print"  > <a href=" #" target="_self" class="ücüncü ">Yazdir</a> </i>
		<i class="fas fa-download "  > <a href=" #" target="_self" class="ücüncü ">indir</a> </i>
		<i class="fas fa-envelope " > <a href=" #" target="_self" class="ücüncü">Gönder</a> </i>
	</div>
	
	<h3>Otomatik talimatiniz bulunmamaktadir!</h3>
	<div class="button">	
		<a href="coming_soon.jsp" target="_self">
			<div>
				<button class="tus" type="button" id="button1"><b>YENI TALIMAT EKLEME</b></button>
			</div>
		</a>
		<a href="coming_soon.jsp" target="_self">
			<div id="button2" >
				<button  class="tus" type="button" style="font-size:15px;" ><b>ÖDEME DURUMUM</b></button>
			</div>
		</a>
		
		<a href="coming_soon.jsp" target="_self">
			<div id="button3" >
				<button  class="tus" type="button" style="font-size:15px;"  ><b>TUM TALIMATLARIM</b></button>
			</div>
		</a>
	</div>
	<div class="footer">
		<%@ include file="../homepage/footer.jsp" %>
	</div>
</body>
</html>