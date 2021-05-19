<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <!DOCTYPE html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="footer, address, phone, icons" />
<style>
.menu{
float:left;

}
.kredi{
margin-left:304px;
margin-right:40px;


}
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

table td, tablo th {
  border: 1px solid #ddd;
  padding: 8px;
  padding-bottom:15px;
  padding-top:15px;
}

table tr:nth-child(even){background-color: #f2f2f2;}

table tr:hover {background-color: #ddd;}

table th {
  padding-top: 15px;
  padding-bottom: 15px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
</head>
<body>
<div><%@ include file="../homepage/logout_header.jsp" %></div>
<div class="menu"><%@ include file="../homepage/menu.jsp" %></div>
 <div class="row bg-light mt-3 pl-3 kredi">
            <h3 class="text-success" >KREDI HESAPLARIM</h3>
            
        </div><br>
<div class="kredi">
<%
 
String userId=request.getParameter("userId");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from loan  where userId='"+userId+"'");

try{
	
	rs.next();
if(rs.getString("userId").equals(userId))
{    
	   
	
	out.println("<html><body><table><tr><th>  Kullanici No</th><th>Kredi No</th><th>Borc Miktari</th><th> Kredi Miktari</th><th>Kredi Turu</th><th>Kredi Tarih</th><th>Faiz(%)</th></tr>");
	for(int i=0;i<10;i++){
		
	
	while(rs.next()){
	
		out.println("<tr><td>"+rs.getString("userId")+"</td><td>"+rs.getString("loanId")+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString("loanDate")+"</td><td>"+rs.getString("interestRate")+"</td></tr>");
	}i++;
	}
	    out.println("</table></body></html>");
	    session.setAttribute("userId", userId);
}

}

catch (Exception e) {	
	
	
	
}

%>
</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div><%@ include file="../homepage/footer.jsp" %></div>
</body>
</html>