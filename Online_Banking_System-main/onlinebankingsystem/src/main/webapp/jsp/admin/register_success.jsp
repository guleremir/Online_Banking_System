<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String userName=request.getParameter("first_name");
String userSurname=request.getParameter("last_name");
String userIdentityNo=request.getParameter("id");
String userBirthday=request.getParameter("date_of_birth");
String userPlaceOfBirth=request.getParameter("date_place");
String userAddress=request.getParameter("address");
String userGender=request.getParameter("gender");
String userPhone=request.getParameter("phone");
String userEpost=request.getParameter("email");
String userPassword=request.getParameter("password");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("INSERT INTO user(userName,userSurname,userIdentityNo,userBirthday,userPlaceOfBirth,userAddress,userGender,userPhone,userEpost,userPassword)values('"+userName+"','"+userSurname+"','"+userIdentityNo+"','"+userBirthday+"','"+userPlaceOfBirth+"','"+userAddress+"','"+userGender+"','"+userPhone+"','"+userEpost+"','"+userPassword+"')");
String url = "http://localhost:8081/onlinebankingsystem/jsp/admin/show_customers.jsp";
response.sendRedirect(url);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>