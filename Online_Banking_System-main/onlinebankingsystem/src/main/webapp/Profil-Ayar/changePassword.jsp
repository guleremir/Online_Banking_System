<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd%22%3E
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String userid=request.getParameter("UserId");
String id=request.getParameter("id");
String password=request.getParameter("pass");
try{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");
    PreparedStatement ps=con.prepareStatement("update user set userPassword=? where userId='"+id+"'");
   
    ps.setString(1,password);
    int i=ps.executeUpdate();
    if(i>0)
    {
        response.sendRedirect("../Kartlarim/kartlarim.jsp");
    }
    else{
        response.sendRedirect("../homepage/footer.jsp");
    }
}
catch(Exception e)
{
    e.printStackTrace();
}
    %>
</body>
</html>