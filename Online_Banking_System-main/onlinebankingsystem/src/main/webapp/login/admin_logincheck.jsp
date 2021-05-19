<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String admin_id=request.getParameter("admin_id");
session.putValue("admin_id",admin_id);
String admin_password=request.getParameter("admin_password");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from admin where admin_id='"+admin_id+"' and admin_password='"+admin_password+"'");


try{
	
rs.next();
if(rs.getString("admin_password").equals(admin_password)&&rs.getString("admin_id").equals(admin_id))
{    
	
		
		 response.sendRedirect("footer.jsp");
		

     session.setAttribute("admin_id", admin_id);
}

}

catch (Exception e) {	
	
	 response.sendRedirect("admin_error.jsp");
}

%>