<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "online_banking_system";
	String userid = "root";
	String password = "";
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user where userId="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
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
				<h1 class="well text-center">KULLANICI GUNCELLEME</h1>
				<div class="col-lg-12 well">
					<div class="row">
						<form action="update_process.jsp" method="post">
							<div class="col-sm-12">
								<div class="row">
								<input type="hidden" name="id" value="<%=resultSet.getString("userId") %>">
									<div class="col-sm-6 form-group">
										<label class="required">Adi</label>
										<input type="text"
											class="form-control"
											name="first_name" value="<%=resultSet.getString("userName") %>" >
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Soyadi</label> 
										<input type="text"
											class="form-control"
											name="last_name" value="<%=resultSet.getString("userSurname") %>" >
									</div>
														
									</div>
								
									<div class="form-group">
									<label class="required">Adres</label>
									<input type="text"
											class="form-control"
											name="address" value="<%=resultSet.getString("userAddress") %>" >
									</div>
									
									<div class="form-group">
										<label class="required">Telefon Numarasi</label> <input type="text"
											class="form-control"
											name="phone" value="<%=resultSet.getString("userPhone")%>">
									</div>
									<div class="form-group">
										<label class="required">Email Adresi</label> <input					
											class="form-control" name="email" value="<%=resultSet.getString("userEpost")%>">
									</div>
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
								<input type="submit" value="Submit" class="btn btn-lg btn-info"/>
								
								<input type="button" value="Go Home" class="btn btn-lg btn-info" onclick ="location.href='administrator.jsp';"
								style="margin-left:400px"/>
								
								
								</form>
							</div>
					</div>
				</div>
			</div>
		</div>
			<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
			%>
</body>
</html>