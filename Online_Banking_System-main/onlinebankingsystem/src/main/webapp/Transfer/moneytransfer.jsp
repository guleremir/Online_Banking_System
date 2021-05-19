<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../Transfer/moneytransfer.css" rel="stylesheet"  />

</head>
<body>
 <%@ include file="../homepage/logout_header.jsp" %>
   <div class="menu" >
<%@ include file="../homepage/menu.jsp" %>
</div>
<div class="transfer">
<form action="../Transfer/transfer_check.jsp?userId=<%=session.getAttribute("userId")%>" method="post">
<h2 class="h2"> HESAPLARIM ARASI TRANSFER</h2>
<hr>
<div class="sol">
<h4 class="h4">Gonderen Hesap</h4>

<input type="radio" id="vadeli" name="gonderen" value="vadeli">
 <label class="container" for="vadeli"> Vadeli Hesabim</label><br>
  <input type="radio" id="vadesiz" name="gonderen" value="vadesiz">
    <label class="container" for="vadesiz">Vadesiz Hesabim </label><br>
  


  <input type="radio" id="yatirim" name="gonderen" value="yatirim">
    <label class="container" for="yatirim">Yatirim Hesabim </label>
 
 
  </div>
 <div class="sag">
  <h4 class="h4">Alici Hesap</h4>

<input type="radio" id="vadeli" name="alici" value="vadeli">
  <label class="container" for="vadeli">Vadeli Hesabim </label><br>
  <input type="radio" id="vadesiz" name="alici" value="vadesiz">
  <label class="container" for="vadesiz">Vadesiz Hesabim</label><br>
  <input type="radio" id="yatirim" name="alici" value="yatirim">
  <label  class="container" for="yatirim">Yatirim Hesabim</label>
  </div>
  
  <h4 class="h4" id="islem">Islem Tutari</h4>
 
  <input class="tutar" type="text" name="tutar"><br>
  <button  class="gonder" type="submit"  value="Submit">Gonder</button>
 



</form>
</div>




<%@ include file="../homepage/footer.jsp" %>
</body>
</html>