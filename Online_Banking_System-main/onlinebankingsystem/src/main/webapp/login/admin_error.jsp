<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN GIRIS</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
	<div class="LoginBox">
		<img src=admin.png class="user">
		<br>
		<br>
		<br>
		<h2>Yonetici Giris</h2>
		<form action="admin_logincheck.jsp" method="post">
		<p>Yonetici Adi</p>
		<input type="text" name="admin_id" placeholder="Adinizi giriniz" required>
		<p>Parola</p>
		<input type="password" name="admin_password" placeholder="**********" required>
		<input type="submit" value="Giris Yap">
		
		
		</form>
		<h3>Dogru giris yaptiginizdan emin olun!</h3>
	</div>
</body>
</html>