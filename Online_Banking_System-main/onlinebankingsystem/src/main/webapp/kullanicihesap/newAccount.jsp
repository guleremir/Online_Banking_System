<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>TEAM BANK</title>
    <link href="css/newAccount.css" rel="stylesheet"  />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel = "icon" href = 
	"https://s3-eu-west-2.amazonaws.com/tony-butterworths/wp-content/uploads/2017/11/24181552/TB-icon.png" 
     type = "image/x-icon">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="../homepage/logout_header.jsp" %>
	
    <div class="menu" >
		<%@ include file="../homepage/menu.jsp" %>
	</div>
	
	<div class="container-fullwidth">
		<div class="row">
			<div class="account col-md-6 col-md-offset-3">
				<h1 class="well text-center">YENI HESAP ACMA</h1>
				<div class="col-lg-12 well">
					<div class="row">
						<form action="newAccount.jsp" method="post">
								<div class="col-sm-6 form-group">
										
								<div class="form-group">
									<label class="required">Hesap acilma tarihi</label> <input type="date"
										 class="form-control"
										name="date_of_birth" required>
								</div>
								
								<div class="form-group">
									<label class="required">Hesap Turu</label><br>
									<input type="radio" id="male" name="gender" value="male">
									<label for="male">Vadeli</label>
									<input type="radio" id="female" name="gender" value="female">
									<label for="female">Vadesiz</label>
									<input type="radio" id="other" name="gender" value="other">
									<label for="other">Yatirim</label>
								</div>
								
								<div class="form-group">
									<label class="required">Tutar</label> <input type="text"
										 class="form-control"
										name="amount" required>
								</div>
								
								<div class="form-group">
									<span class="text-muted">
										<em>
											<span style="color: red; font-size: 14px">*</span> Indicates required field
										</em> 
									</span>
								</div>
								
								<input type="submit" value="Submit" class="btn btn-lg btn-info submit" onclick="showAlert()"></input>
								
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		</div>
		
		<div class="row">
			<%@ include file="../homepage/footer.jsp" %>
		</div>
		
		<script>
		function showAlert() {
		    var myText = "Yeni hesap acma basvurunuz alinmisitir!";
		    alert (myText);
		  }
		</script>
</body>
</html>