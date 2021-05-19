<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.Connection, java.sql.PreparedStatement" %>

<%@page import="java.sql.SQLException,java.sql.DriverManager" %>

<%
Connection baglanti=null;

PreparedStatement ifade=null;
String userId,loanAmount,loanType,loanDate,interestRate;
/*

*/
try{
	 userId=request.getParameter("id");
	loanAmount=request.getParameter("loanAmount");
	loanType=request.getParameter("loanType");
	loanDate=request.getParameter("loanDate");
	interestRate=request.getParameter("interestRate");
	try{
		Class.forName("com.mysql.jdbc.Driver");

	}catch(ClassNotFoundException e){

	out.println("Jdbc Yüklenemedi");
	}
	baglanti=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");

	ifade=baglanti.prepareStatement("insert into loan(userId,loanAmount,loanType,loanDate,interestRate) values(?,?,?,?,?) ");

	ifade.setString(1, userId);

	ifade.setString(2, loanAmount);

	ifade.setString(3, loanType);

	ifade.setString(4, loanDate);
	
	ifade.setString(5, interestRate);
	}catch(SQLException e){

out.println("Hata");

}finally{

ifade.close();

baglanti.close();

response.sendRedirect("../kredi/kredi_onay.jsp");

}

%>

</body>

</html>