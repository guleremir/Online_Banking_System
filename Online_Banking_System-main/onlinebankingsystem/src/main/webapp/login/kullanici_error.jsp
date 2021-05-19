<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HATA</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
	<div class="LoginBox">
		<img src="https://img.icons8.com/bubbles/2x/admin-settings-male.png" class="user">
		<br>
		<br>
		<br>
		<h2>Kullanici Giris</h2>
		<form action="../kullanicihesap/kullanicibilgi_check.jsp" method="post">
		<p>Kullanici Adi</p>
		<input type="text" name="userId" placeholder="Adinizi giriniz" required>
		<p>Parola</p>
		<input type="password" name="userPassword" placeholder="**********" required>
		<input type="submit" value="Giris Yap">
		
		
		</form>
		<h3>Dogru giris yaptiginizdan emin olun!</h3>
	</div>

</body>
</html>