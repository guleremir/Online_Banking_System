<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KISISEL BILGILER</title>
<style>
.menu{
float:left;}
.kullanici_bilgi{
margin-left:300px;
margin-right:0;
width:100%;

}
form{
background-color:#F0F0F0;
font-size:14px;
border:3px solid #EAEAEA;
border-radius-top-right:8px;
border-radius-bottom-left:8px;
margin-right:0px;
padding:15px;

margin-top:0px;


}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  font-size:17px;
}

td, th {
  border: 0px solid #dddddd;
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

</style>

</head>
<body>
<div><%@ include file="../homepage/logout_header.jsp" %></div>
<div class="menu"><%@ include file="../homepage/menu.jsp" %></div>
<div class="kullanici_bilgi">

<form action="../kullanicihesap/kullanicibilgi_check.jsp" method="post">



<% 
request.getSession(false);
if (session == null) { %>
 
  <% 
} else {
    // Already created.
    %>
  <a "href="homepage/logout_header.jsp/.cikis"> </a><% 
}

String userId = request.getParameter("userId");
String userName = request.getParameter("userName");
String userSurname = request.getParameter("userSurname");
String userIdentityNo = request.getParameter("userIdentityNo");
String userBirthday = request.getParameter("userBirthday");
String userGender = request.getParameter("userGender");
String userAddress = request.getParameter("userAddress");
String userEpost = request.getParameter("userEpost");
String userPhone = request.getParameter("userPhone");


%>


 <h3>BANKAMIZA HOSGELDIN <br> Sn. <% out.println(userName);%><% out.println(userSurname);%></h3>
<br>
<h3>KISISEL BILGILERINIZ</h3><br>
<hr><br>

<table>

  <tr>
    <td>Kullanici Ad</td>
    <td></td>
    <td> <% out.println(userId);%></td>
  </tr>
  <tr>
    <td>Isim</td>
    <td></td>
    <td> <% out.println(userName);%></td>
  </tr>
  <tr>
    <td>Soyisim</td>
    <td></td>
    <td> <% out.println(userSurname);%></td>
  </tr>
  <tr>
    <td>TC</td>
    <td></td>
    <td> <% out.println(userIdentityNo);%></td>
  </tr>
  <tr>
    <td>Dogum Tarihi</td>
    <td></td>
    <td> <% out.println(userBirthday);%></td>
  </tr>
  <tr>
    <td>Cinsiyet</td>
    <td></td>
    <td> <% out.println(userGender);%></td>
  </tr>
    <tr>
    <td>Adres</td>
    <td></td>
    <td> <% out.println(userAddress);%></td>
  </tr>
    <tr>
    <td>E-mail</td>
    <td></td>
    <td> <% out.println(userEpost);%></td>
  </tr>
    <tr>
    <td>Telefon</td>
    <td></td>
    <td> <% out.println(userPhone);%></td>
  </tr>
</table>

</form>




</div>

<br>
<div><%@ include file="../homepage/footer.jsp" %></div>
</body>
</html>