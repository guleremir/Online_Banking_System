<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KULLANICI GIRIS</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
	<div class="LoginBox">
		<img src=admin.png class="user">
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
	</div>
</body>
</html>
