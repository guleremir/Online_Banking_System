<!DOCTYPE html>
<html>
<head>
    <title>ILETISIM</title>
    <link rel="stylesheet" href="iletisim.css">
</head>
 
<body>
<div><%@ include file="header.jsp" %></div>

<br><br><br>

    <div class="container">
        <form id="contact" action="" method="">
            <h2>ILETISIM</h2>
            <div class="form-control">
                <input placeholder="Adiniz Soyadiniz" type="text" required autofocus>
            </div>
            <div class="form-control">
                <input placeholder="E-Posta Adresiniz" type="email" required>
            </div>
            <div class="form-control">
                <input placeholder="Konu" type="text" required>
            </div>
            <div class="form-control">
                <textarea placeholder="Lütfen Mesajinizi Buraya Yazin.." required></textarea>
            </div>
            <div class="form-control">
                <button name="submit" type="submit" id="submit">GONDER</button>
            </div>
        </form>
    </div>
    <div><%@ include file="footer.jsp" %></div>
</body>
</html>