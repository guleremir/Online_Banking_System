<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*, java.util.*" %>

<%
	String id = request.getParameter("userid");
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
<!DOCTYPE html>
<html>
<head>
		<meta charset ="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>TEAM BANK</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="css/show.css">
		<link rel = "icon" href = 
		"https://s3-eu-west-2.amazonaws.com/tony-butterworths/wp-content/uploads/2017/11/24181552/TB-icon.png" 
        type = "image/x-icon">
</head>
<body>

	<div class="row">
		<jsp:include page="table_header.jsp" />
	</div>
	
	<h1>KULLANICI LISTESI</h1>
	<table class =" table">
		<thead>
		<tr>
			<th>Kullanici TC</th>
			<th>Kullanici Adi</th>
			<th>Kullanici Soyadi</th>
			<th>Kullanici Epost</th>
			<th>Kullanici Telefon Numarasi</th>
			<th></th>
			<th></th>
		</tr>
		
		</thead>
			<tbody id="data">
				<%
					try{
					connection = DriverManager.getConnection(connectionUrl+database, userid, password);
					statement=connection.createStatement();
					String sql ="select * from user";
					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
					<tr>
						<td><%=resultSet.getString("userIdentityNo") %></td>
						<td><%=resultSet.getString("userName") %></td>
						<td><%=resultSet.getString("userSurname") %></td>
						<td><%=resultSet.getString("userEpost") %></td>
						<td><%=resultSet.getString("userPhone") %></td>
						<td><a href="edit_customer.jsp?id=<%=resultSet.getString("userId")%>"><button type="button" class="update">Guncelle</button></a></td>
						<td><a href="del_customers.jsp?id=<%=resultSet.getString("userId") %>"><button type="button" class="delete">Sil</button></a></td>
					</tr>
					<%
						}
						connection.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
					%>
					

		</tbody>
	</table>
</body>
</html>