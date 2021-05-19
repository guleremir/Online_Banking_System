<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../Transfer/eft.css" rel="stylesheet"  />


<body>
<%@ include file="../homepage/logout_header.jsp" %>
   <div class="menu" >
<%@ include file="../homepage/menu.jsp" %>
</div>
<div class="transfer">
<form action="../Transfer/eft_check.jsp?userId=<%=session.getAttribute("userId")%>" method="post">
<h2 class="eft">BASKA HESABA HAVALE/EFT</h2>
<hr>

<h4 class="eft">Gonderici Hesap</h4>

<input class="input1" type="radio" id="vadeli" name="gonderen" value="vadeli">
  <label for="vadeli">Vadeli Hesabim</label><br>
  <input class="input1"  type="radio" id="vadesiz" name="gonderen" value="vadesiz">
  <label for="vadesiz">Vadesiz Hesabim</label><br>
  <input class="input1" type="radio" id="yatirim" name="gonderen" value="yatirim">
  <label for="yatirim">Yatirim Hesabim</label>

 
  <h4 class="eft">Alici Hesap</h4>
<div class="eft">
<input type="text" class="numara"  name="alici" placeholder="Hesap Numarasini Giriniz...">
  <label for="vadeli"></label><br>
 
  </div>
  
  <h4 class="eft">Islem Tutari</h4>
  <div class="eft">
  <input type="text" class="numara" name="tutar" placeholder="Islem Tutari Giriniz..."><br>
   </div>
   

<div class="eft">
  <button  type="submit"  class="gonder" value="Submit">Gonder</button>
   </div>
</form>
</div>
  
  


 



<%@ include file="../homepage/footer.jsp" %>
</body>
</html>