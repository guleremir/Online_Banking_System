
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="tr">
<head>
    <title>MENU</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta name="description" content="LOREM IPSUM">
    <meta name="author" content="SitePoint">
    <meta name="keywords" content="LOREM IPSUM">
    <link type="text/css" rel="stylesheet" href="style.css">
</head>
<style>
body {
	margin:0;
	padding:0
}
.cle {
	clear:both
}
.menu-container {
	width:700px;
	
	
}
.menu {
	float:left;
	background:#777;
	width:300px;
	margin-top:0px
}
.menu ul {
	display:block;
	margin:0;
	padding:0
}
.menu ul li {
	list-style:none;
	display:Block
}
.menu ul li a {
	color:#fff;
	text-decoration:none;
	font-size:12px;
	font-family: Arial;
	background:#777;
	display:Block;
	padding:20px;
	border-bottom:1px solid #888
}
.menu ul li a:hover {
	background:#666
}
.menu ul li ul {
	display:none
}
.menu ul li:hover ul {
	display:block
}
.menu ul li ul li a {
	padding:20px 20px 20px 30px;
	background:#666
}
.menu ul li ul li a:hover {
	background:#555
}
.menu ul li:hover > a {
	background:#666
}


</style>
<body>






<div class="menu-container">
    <div class="menu">
        <ul>
         <li><a href="" title="">HESAPLARIM</a>
                <ul>
                    <li><a href="../login/kullanici_logincheck.jsp?id=<%=session.getAttribute("userId")%>" title="">TUM HESAPLARIM</a></li>
                    <li><a href="../kullanicihesap/newAccount.jsp?id=<%=session.getAttribute("userId")%>" title="">YENI HESAP AC</a></li>

                </ul>
            </li>
              <li><a href="" title="">PARA TRANSFERI</a>
                <ul>
                     <li><a href="../Transfer/moneytransfer.jsp?userId=<%=session.getAttribute("userId")%>" title="">HESAPLARIM ARASI TRANSFER</a></li>
                    <li><a href="../Transfer/eft.jsp?userId=<%=session.getAttribute("userId")%>" title="">BASKA HESABA HAVALE/EFT</a></li>
                     <li><a href="../Transfer/kredi_hesaplarim.jsp?userId=<%=session.getAttribute("userId")%>" title="">KREDI KARTINA TRANSFER</a></li>
                   
                </ul>
            </li>
             <li><a href="" title="">KREDILERIM</a>
                <ul>
                    <li><a href="../kredi/kredi_hesaplarim.jsp?userId=<%=session.getAttribute("userId")%>" title="">KREDI HESAPLARIMI GORUNTULE</a></li>
                    <li><a href="../kredi/kredi_basvuru.jsp" title="">KREDI BASVURUSU</a></li>
               </ul>
            </li>
            
             <li><a href="" title="">ODEMELER</a>
                <ul>
                    <li><a href="../payments/automatic_instructions.jsp" title="">OTOMATIK TALIMATLARIM</a></li>
                    <li><a href="../payments/recorded_payments.jsp" title="">KAYITLI ODEMELER</a></li>
                    <li><a href="../payments/coming_soon.jsp" title="">KREDI ODEMELERI</a></li>
               </ul>
            </li>
            
            <li><a href="../Kartlarim/kartlarim.jsp?userId=<%=session.getAttribute("userId")%>" title="">KARTLARIM</a></li>
            <li><a href="../Basvuru/basvuru.jsp?userId=<%=session.getAttribute("userId")%>" title="">BASVURULAR</a></li>
             <li><a href="../Profil-Ayar/Profilayar_check.jsp?userId=<%=session.getAttribute("userId")%>" title="">PROFIL VE AYARLAR</a></li>
        </ul>
    </div>
    
    
    
    <div class="cle"></div>
</div>
    
</body>
</html>

