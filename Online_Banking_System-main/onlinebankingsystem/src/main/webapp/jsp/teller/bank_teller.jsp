
<!DOCTYPE html>
<html>
<head>
	<meta charset ="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>TEAM BANK</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="css/teller.css">
  		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel = "icon" href = 
		"https://s3-eu-west-2.amazonaws.com/tony-butterworths/wp-content/uploads/2017/11/24181552/TB-icon.png" 
        type = "image/x-icon">
</head>
<body>

	<div class="row">
		<jsp:include page="header.jsp" />
	</div>
	<% 
		request.getSession(false);
		if (session == null) { %>
		 
		  <% 
		} else {
		    // Already created.
		    %>
		  <a "href="homepage/logout_header.jsp/.cikis"> </a><% 
		}

		%>
		<% 
			String bankTellerName = request.getParameter("bankTellerName");
			String bankTellerSurname = request.getParameter("bankTellerSurname");
			String bankTellerIdentityNo = request.getParameter("bankTellerIdentityNo");
			String bankTellerPhone = request.getParameter("bankTellerPhone");
			String bankTellerEpost = request.getParameter("bankTellerEpost");
		%>
 	
	<div class="main wrapper">

		
    <div class="left">
        <img src="css/Resim.1 004.png" 
        alt="user" width="100">
        <h4><% out.println(bankTellerName);%> <% out.println(bankTellerSurname);%></h4>
         <p>GISE MEMURU</p><br>
         
	         <ul>
	         	<li><a href="bank_teller.jsp" ><i class="fa fa-fw fa-home"></i> ANASAYFA </a></li><br>
	         	<li><a href="show_customers.jsp"><i class="fa fa-fw fa-user"></i> KULLANICILARI GORUNTULEME </a></li><br>	
	         	<li><a href="show_emp.jsp"><i class="fa fa-fw fa-user"></i> CALISANLARI GORUNTULEME </a></li><br>
	            <li><a href="show_account.jsp"><i class="fa fa-fw fa-user"></i> HESAPLARI GORUNTULEME </a></li><br>
	            <li><a href="show_branch.jsp"><i class="fa fa-fw fa-user"></i> SUBELERI GORUNTULEME </a></li><br>
	          	<li> <a href="coming_soon.jsp"><i class=""></i> PARA TRANSFERI </a></li><br>
	         </ul>
	        
    </div>
    
    <div class="right">
        <div class="info">
            <h3>GENEL BILGILER</h3>
            <div class="info_data">
                 <div class="data">
                    <h4>ADI</h4>
                    <p><% out.println(bankTellerName);%></p>
                 </div>
                 <div class="data">
                   <h4>SOYADI</h4>
                    <p><% out.println(bankTellerSurname);%></p>
              </div>
                 <div class="data">
                   <h4>TC</h4>
                    <p><% out.println(bankTellerIdentityNo);%></p>
              </div>
                 <div class="data">
                   <h4>EPOST</h4>
                    <p><% out.println(bankTellerEpost);%></p>
              </div>
                 <div class="data">
                   <h4>TELEFON</h4>
                    <p><% out.println(bankTellerPhone);%></p>
              </div>
            </div>
        </div>
      
     
      
        <div class="social_media">
            <ul>
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram"></i></a></li>
          </ul>
      </div>
    </div>
</div>

	<div class="row">
		<jsp:include page="footer.jsp" />
	</div>
	


</body>
</html>