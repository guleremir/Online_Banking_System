<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../Profil-Ayar/NewFile.css" rel="stylesheet"  />
</head>
<body>
 <%@ include file="../homepage/logout_header.jsp" %>
   <div class="menu" >
<%@ include file="../homepage/menu.jsp" %>
</div>

<div class="hepsi">
<h1>Change Password</h1>
<div>
    <form  method="post" action="../Profil-Ayar/changePassword.jsp?id=<%=session.getAttribute("userId")%>">
                    <input class="text" type="password" name="pass2" placeholder="Eski Sifreniz..." required=""><br>
                    <input class="text" type="password" name="pass" placeholder="Yeni Sifreniz..." required="">
                    <input class="text" type="password" name="pass1" placeholder="Yeni Sifre Tekrar..." required="">



                    <input onclick="myFunction()" class="change"type="submit" value="CHANGE PASSWORD">
                    

<script>
function myFunction() {
  alert("Sifreniz Basariyla Degistirildi");
}
</script>
                </form>
</div>
</div>

<%@ include file="../homepage/footer.jsp" %>

</body>
</html>