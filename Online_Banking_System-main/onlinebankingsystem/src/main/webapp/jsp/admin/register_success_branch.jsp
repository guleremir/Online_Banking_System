<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String branchName=request.getParameter("name");
String branchAddress=request.getParameter("address");
String branchProvince=request.getParameter("province");
String branchDistrict=request.getParameter("district");
String branchPhone=request.getParameter("phone");
String branchEmail=request.getParameter("email");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into branch(branchName,branchAddress,branchProvince,branchDistrict,branchPhone,branchEmail)values('"+branchName+"','"+branchAddress+"','"+branchProvince+"','"+branchDistrict+"','"+branchPhone+"','"+branchEmail+"')");
String url = "http://localhost:8081/onlinebankingsystem/jsp/admin/show_branch.jsp";
response.sendRedirect(url);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>