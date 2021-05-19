<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!DOCTYPE html>
<html lang="en">
<head>
  <title>slider</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <style>
 
.container{

width:98%;


}
 </style>
</head>
<body>

<div class="container" >
    
  <div id="myCarousel" class="carousel slide" data-ride="carousel" class="d-block w-100">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" class="d-block w-100">
    
      <div class="item active" class="d-block w-100">
        <img src="img/s6.jpg" alt="a" class="d-block w-100">
      </div>
      

      <div class="item">
        <img src="img/s3.jpg" alt="a" class="d-block w-100">
      </div>
    
      <div class="item">
        <img src="img/s1.jpg" alt="a" class="d-block w-100">
      </div>
      <div class="item">
        <img src="img/s4.jpg" alt="a" class="d-block w-100">
      </div>
      <div class="item">
        <img src="img/s5.jpg" alt="a" class="d-block w-100">
      </div>
      <div class="item">
        <img src="img/s2.jpg" alt="a" class="d-block w-100">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>
</html>