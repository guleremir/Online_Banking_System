<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String bankTellerId=request.getParameter("bankTellerId");
session.putValue("bankTellerId",bankTellerId);
String bankTellerPassword=request.getParameter("bankTellerPassword");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from bankTeller where bankTellerId='"+bankTellerId+"' and bankTellerPassword='"+bankTellerPassword+"'");


try{
	
rs.next();
if(rs.getString("bankTellerPassword").equals(bankTellerPassword)&&rs.getString("bankTellerId").equals(bankTellerId))
{    
	
		
		 response.sendRedirect("footer.jsp");
		

     session.setAttribute("bankTellerId", bankTellerId);
}

}

catch (Exception e) {	
	
	 response.sendRedirect("gise_error.jsp");
}

%>