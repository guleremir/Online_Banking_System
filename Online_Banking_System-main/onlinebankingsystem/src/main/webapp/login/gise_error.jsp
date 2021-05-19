<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GISE GIRIS</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
	<div class="LoginBox">
		<img src=admin.png class="user">
		<br>
		<br>
		<br>
		<h2>Gise Giris</h2>
		<form action="gise_logincheck.jsp" method="post">
		<p>Gise Memur Adi</p>
		<input type="text" name="bankTellerId" placeholder="Adinizi giriniz" required>
		<p>Parola</p>
		<input type="password" name="bankTellerPassword" placeholder="**********" required>
		<input type="submit" value="Giris Yap">
		
		
		</form>
		<h3>Dogru giris yaptiginizdan emin olun!</h3>
	</div>
</body>
</html>