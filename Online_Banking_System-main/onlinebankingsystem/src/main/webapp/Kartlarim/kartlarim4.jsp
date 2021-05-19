<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link href="../Kartlarim/kartlarim4.css" rel="stylesheet"  />
</head>
<body>
<%@ include file="../homepage/logout_header.jsp" %>

<div class="menu"><%@ include file="../homepage/menu.jsp" %>
</div>
<%
String userId = request.getParameter("userId");
String cardType = request.getParameter("cardType");
String cardId = request.getParameter("cardId");
%>
<div class="ikinci">
<h1>Banka Kartlarim</h1>

<i class="fas fa-home" id="baslik2"> > Kartlarim > Banka Kartlarim </i>
<br>
<i class="fas fa-print"> <a href=" #" target="_self" class="ücüncü ">Yazdir</a> </i>
<i class="fas fa-download"> <a href=" #" target="_self" class="ücüncü ">indir</a> </i>
<i class="fas fa-envelope"> <a href=" #" target="_self" class="ücüncü ">Gönder</a> </i>

  <a href="../Kartlarim/kartlarim3_check.jsp?userId=<%=session.getAttribute("userId")%>" target="_self"> <div class="kutu">
<table>
<tr>
<td><label ><b>Kart tipi: <% out.println(cardType);%></b></label></td>

</tr>
<tr>
<td><label ><b>Kullanici Id: <% out.println(userId);%></b></label></td>

</tr>
<tr>
<td><label ><b>Kart Id: <% out.println(cardId);%></b></label></td>

</tr>

</table>
</div>
 </a>


</div>


<%@ include file="../homepage/footer.jsp" %>
</body>
</html>