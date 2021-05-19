<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String userId=request.getParameter("userId");
session.putValue("userId",userId);
String userPassword=request.getParameter("userPassword");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from user where userId='"+userId+"' and userPassword='"+userPassword+"'");


try{
	
rs.next();
if(rs.getString("userPassword").equals(userPassword)&&rs.getString("userId").equals(userId))
{    
	 
	    response.sendRedirect("kullanici_bilgi.jsp?userId=" + rs.getString("userId") + "&userName=" + rs.getString("userName")+ "&userSurname=" + rs.getString("userSurname") + "&userIdentityNo=" + rs.getString("userIdentityNo")+"&userBirthday=" + rs.getString("userBirthday") + "&userGender=" + rs.getString("userGender")+ "&userAddress=" + rs.getString("userAddress") + "&userEpost=" + rs.getString("userEpost")+"&userPhone=" + rs.getString("userPhone") );
     session.setAttribute("userId", userId);
}

}

catch (Exception e) {	
	response.sendRedirect("../login/kullanici_error.jsp");
	
	
}

%>