<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/online_banking_system";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
	String userId = request.getParameter("id");
	String userName=request.getParameter("first_name");
	String userSurname=request.getParameter("last_name");
	String userAddress=request.getParameter("address");
	String userPhone=request.getParameter("phone");
	String userEpost=request.getParameter("email");
	if(userId != null)
	{
	Connection con = null;
	PreparedStatement ps = null;
	try
	{
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql="Update user set userId=?, userName=?, userSurname=?, userAddress=?, userPhone=?, userEpost=? where userId="+userId;
		ps = con.prepareStatement(sql);
		ps.setString(1,userId);
		ps.setString(2, userName);
		ps.setString(3, userSurname);
		ps.setString(4, userAddress);
		ps.setString(5, userPhone);
		ps.setString(6, userEpost);
		int i = ps.executeUpdate();
		if(i > 0)
			{
				String url = "http://localhost:8081/onlinebankingsystem/jsp/admin/show_customers.jsp";
				response.sendRedirect(url);
			}
		else
			{
			out.print("There is a problem in updating Record.");
			}
	}
	catch(SQLException sql)
	{
		request.setAttribute("error", sql);
		out.println(sql);
	}
	}
%>