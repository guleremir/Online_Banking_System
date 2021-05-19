<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*, java.util.*" %>

<%
	String accountId = request.getParameter("accountId");
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from bankteller");
	
	
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
	
	<h1>GISE MEMURU LISTESI</h1>
	<table class =" table">
		<thead>
		<tr>
			<th>Gise Memuru TC</th>
			<th>Gise Memuru Adi</th>
			<th>Gise Memuru Soyadi</th>
			<th>Gise Memuru Epost</th>
			<th>Gise Memuru Telefon Numarasi</th>
		</tr>
		
		</thead>
		<tbody id="data">
			<%
				while(rs.next()){
					%>
					<tr>
						<td><%=rs.getString("bankTellerIdentityNo") %></td>
						<td><%=rs.getString("bankTellerName") %></td>
						<td><%=rs.getString("bankTellerSurname") %></td>
						<td><%=rs.getString("bankTellerEpost") %></td>
						<td><%=rs.getString("bankTellerPhone") %></td>
					</tr>
					<%
				}
		
			%>
		</tbody>
	</table>

	
</body>
</html>