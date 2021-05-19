<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset ="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Online Banking</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="css/create_account.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/administrator.css">
	<link rel = "icon" href = 
"https://s3-eu-west-2.amazonaws.com/tony-butterworths/wp-content/uploads/2017/11/24181552/TB-icon.png" 
        type = "image/x-icon">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/passwordChecker.js"></script>
</head>
<body>
	
	<div class="row">
		<jsp:include page="header.jsp" />
	</div>
	
	<div class="container-fullwidth">
		<div class="row">
			<div class="account col-md-6 col-md-offset-3">
				<h1 class="well text-center">YENI SUBE EKLEME</h1>
				<div class="col-lg-12 well">
					<div class="row">
						<form action="register_success_branch.jsp" method="post">
							<div class="col-sm-12">
								<div class="row">
									<div class="col-sm-6 form-group">
										<label class="required">Sube Adi</label><input type="text"
											placeholder="Enter First Name Here.." class="form-control"
											name="name" required>
									</div>
								</div>
								<div class="form-group">
									<label class="required">Sube Adres</label>
									<textarea placeholder="Enter Address Here.." rows="3"
										class="form-control" name="address" required></textarea>
								</div>
								<div class="row">
									<div class="col-sm-4 form-group">
										<label class="required">Sube Il</label> <input type="text"
											placeholder="Enter Province Here.." class="form-control"
											name="province" required>
									</div>		
								</div>
								<div class="form-group">
									<label class="required">Sube Ilce</label> <input type="tel"
										placeholder="Enter District Here.." class="form-control"
										name="district" required>
								</div>
								<div class="form-group">
									<label class="required">Sube Telefon Numarasi</label> <input type="tel"
										placeholder="Enter Phone Number Here.." class="form-control"
										name="phone" required>
								</div>
								<div class="form-group">
									<label class="required">Sube Email Adresi</label> <input
										type="email" placeholder="Enter Email Address Here.."
										class="form-control" name="email" required>
								</div>
						
								<div class="form-group">
									<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span> Indicates
											required field</em> </span>
								</div>
								
								
								<input type="submit"value="Submit" class="btn btn-lg btn-info">
								</input>
								<input type="button" value="Go Home" class="btn btn-lg btn-info" onclick ="location.href='administrator.jsp';"
								style="margin-left:400px">
								</input>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		
	</div>
</body>
</html>