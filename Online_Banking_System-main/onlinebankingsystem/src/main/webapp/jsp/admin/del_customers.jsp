<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String id=request.getParameter("id");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system", "root", "");
		Statement st=conn.createStatement();
		int i=st.executeUpdate("DELETE FROM user WHERE userId="+id);
		String url = "http://localhost:8081/onlinebankingsystem/jsp/admin/show_customers.jsp";
		response.sendRedirect(url);
	}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
	}
%>