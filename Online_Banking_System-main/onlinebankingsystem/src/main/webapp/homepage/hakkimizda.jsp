<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HAKKIMIZDA</title>
<style>*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

</style>
</head>
<body>
<div><%@ include file="header.jsp" %></div>
<div class="about-section">
  <h1>TEAM-BANK</h1>
  <p>Online Internet Bankaciligi</p>
  <p>7/24 online banka islemleriniz yapilmaktadir.</p>
</div>

<h2 style="text-align:center">EKIBIMIZ</h2>
<div class="row">
  <div class="column">
    <div class="card">
      
      <div class="container">
        <h2>Nagihan Ustun</h2>
        <p class="title">Admin </p>
        <p>Admin sayfasindan sorumlu.</p>
        <p>nagihan@hotmail.com</p>
        <p><button class="button">Iletisim</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      
      <div class="container">
        <h2>Ilknur Avsar</h2>
        <p class="title">Hesaplarim </p>
        <p>Hesaplarim sayfasindan sorumlu.</p>
        <p>ilknur@hotmail.com</p>
        <p><button class="button">Iletisim</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
     
      <div class="container">
        <h2>Melih Gulum</h2>
        <p class="title">Gise </p>
        <p>Gise Sayfasindan sorumlu.</p>
        <p>melih@hotmail.com</p>
        <p><button class="button">Iletisim</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      
      <div class="container">
        <h2>Emir Guler</h2>
        <p class="title">Kartlarim</p>
        <p>Kartlarim sayfasindan sorumlu.</p>
        <p>emir@hotmail.com</p>
        <p><button class="button">Iletisim</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <div class="container">
        <h2>Cansu Ciloglu</h2>
        <p class="title">Krediler</p>
        <p>Krediler sayfasindan sorumlu.</p>
        <p>cansu@hotmail.com</p>
        <p><button class="button">Iletisim</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
     
      <div class="container">
        <h2>Kerem Kocdemir</h2>
        <p class="title">Transfer</p>
        <p>Transfer sayfasindan sorumlu.</p>
        <p>kerem@hotmail.com</p>
        <p><button class="button">Iletisim</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
    
      <div class="container">
        <h2>Alexandru Ionel</h2>
        <p class="title">Odemeler</p>
        <p>Odemeler sayfasindan sorumlu.</p>
        <p>alex@hotmail.com</p>
        <p><button class="button">Iletisim</button></p>
      </div>
    </div>
  </div>

</div>

<div><%@ include file="footer.jsp" %></div>

</body>
</html>