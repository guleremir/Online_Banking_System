<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
 
String userId=request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");

Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from account  where userId='"+userId+"'");

try{
	
	rs.next();
if(rs.getString("userId").equals(userId))
{    
	    
	    
	    response.sendRedirect("../kullanicihesap/kullanici_home.jsp?vadebalance=" + rs.getString("vadebalance") + "&yatirimbalance=" + rs.getString("yatirimbalance")+ "&vadesizbalance=" + rs.getString("vadesizbalance") + "&accountId=" + rs.getString("accountId"));
     session.setAttribute("userId", userId);
}

}

catch (Exception e) {	
	response.sendRedirect("kullanici_error.jsp");
	
	
}

%>


