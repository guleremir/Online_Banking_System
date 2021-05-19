
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

		
<meta charset ="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>TEAM BANK</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="css/create_account.css">
<link rel="stylesheet" href="css/administrator.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
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
				<h1 class="well text-center">YENI KULLANICI EKLEME</h1>
				<div class="col-lg-12 well">
					<div class="row">
						<form action="register_success.jsp" method="post">
							<div class="col-sm-12">
								<div class="row">
									<div class="col-sm-6 form-group">
										<label class="required">Adi</label><input type="text"
											placeholder="Enter First Name Here.." class="form-control"
											name="first_name" required>
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Soyadi</label> <input type="text"
											placeholder="Enter Last Name Here.." class="form-control"
											name="last_name" required>
									</div>
								</div>
								<div class="form-group">
									<label class="required">Adres</label>
									<textarea placeholder="Enter Address Here.." rows="3"
										class="form-control" name="address" required></textarea>
								</div>
								
								<div class="row">
									<div class="col-sm-4 form-group">
										<label>Sehir</label> <input type="text"
											placeholder="Enter City Name Here.." class="form-control"
											name="city">
									</div>
									
									
								</div>
								<div class="form-group">
									<label class="required">TC</label> <input type="text"
										placeholder="Enter ID Here.." class="form-control"
										name="id" required>
								</div>
								<div class="form-group">
									<label class="required">Dogum Tarihi</label> <input type="date"
										 class="form-control"
										name="date_of_birth" required>
								</div>
								<div class="form-group">
									<label class="required">Dogum Yeri</label> <input type="text"
										placeholder="Enter Date of Place Here.." class="form-control"
										name="date_place" required>
								</div>
									<div class="form-group">
									<label class="required">Cinsiyet</label><br>
									<input type="radio" id="male" name="gender" value="male">
									<label for="male">Erkek</label>
									<input type="radio" id="female" name="gender" value="female">
									<label for="female">Kadin</label>
									<input type="radio" id="other" name="gender" value="other">
									<label for="other">Diger</label>
								</div>
								<div class="row">
									<div class="col-sm-6 form-group">
										<label class="required">Sifre</label> <input
											type="password" required placeholder="Enter Password Here.." min="5"
											class="form-control" name="password" id="password">
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Sifre </label> <input
											type="password" required
											placeholder="Enter Re-password Here.." class="form-control"
											name="re_password" id="re_password"
											onkeyup="checkPass(); return false;">
										<p id="confirmMessage" style="margin-top: 10x;"></p>
									</div>
								</div>
								<div class="form-group">
									<label class="required">Telefon Numarasi</label> <input type="tel"
										placeholder="Enter Phone Number Here.." class="form-control"
										name="phone" required>
								</div>
								<div class="form-group">
									<label class="required">Email Adres</label> <input
										type="text" placeholder="Enter Email Address Here.."
										class="form-control" name="email" required>
								</div>
								
								<div class="form-group">
									<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span> Indicates
											required field</em> </span>
								</div>
								<%
									String not_match = (String) request.getAttribute("not_match");
									System.out.println(not_match);
									if (not_match != null && not_match.equals("yes")) {
								%>
								<div class="form-group">
									<p class="bg-danger text-center text-danger"
										style="font-size: 18px;">Password doesn't match</p>
								</div>
								<%
									}
								%>
								<input type="submit" value="Submit" class="btn btn-lg btn-info">
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