<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String userId=request.getParameter("userId");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from card where userId='"+userId+"' AND cardId>7007");


try{
	
rs.next();
if(rs.getString("userId").equals(userId))
{    
	 
	    response.sendRedirect("../Kartlarim/kartlarim3.jsp?userId=" + rs.getString("userId") + "&cardType=" + rs.getString("cardType")+ "&cardId=" + rs.getString("cardId")  + "&cardSecurityCode=" + rs.getString("cardSecurityCode") + "&validThruMonth=" + rs.getString("validThruMonth") + "&validThruYear=" + rs.getString("validThruYear")+ "&dateOpen=" + rs.getString("dateOpen")  );
     session.setAttribute("userId", userId);
}

}

catch (Exception e) {	
	response.sendRedirect("footer.jsp");
	
	
}

%>