<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String userId=request.getParameter("userId");
String gonderen=request.getParameter("gonderen");
String alici=request.getParameter("alici");
int tutar=Integer.parseInt(request.getParameter("tutar"));




Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from account where userId='"+userId+"' ");


try{
	
rs.next();
if(rs.getString("userId").equals(userId))
{    
if(gonderen.equals("vadeli")&&rs.getInt("vadebalance")>tutar){
	
	
	if(alici.equals("vadesiz")){
		double newgonderen=rs.getInt("vadebalance")- tutar;
		double newalici=rs.getInt("vadesizbalance")+ tutar;
		
		 PreparedStatement ps=con.prepareStatement("update account set vadebalance=? , vadesizbalance=? where userId='"+userId+"'");
		   
		    ps.setDouble(1,newgonderen);
		    ps.setDouble(2,newalici);
		    int i=ps.executeUpdate();
		    if(i>0)
		    {
		    	out.println("<script >");
			 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
			 	   out.println("location='../Transfer/moneytransfer.jsp';");
			 	   out.println("</script>");
		    }
		    else{
		        response.sendRedirect("../homepage/footer.jsp");
		    }
		   
		    
		
		
	}
	else if(alici.equals("yatirim")){
		double newgonderen=rs.getInt("vadebalance")- tutar;
		double newalici=rs.getInt("yatirimbalance")+ tutar;
		
		 PreparedStatement ps=con.prepareStatement("update account set vadebalance=? , yatirimbalance=? where userId='"+userId+"'");
		   
		    ps.setDouble(1,newgonderen);
		    ps.setDouble(2,newalici);
		    int i=ps.executeUpdate();
		    if(i>0)
		    {
		    	out.println("<script >");
			 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
			 	   out.println("location='../Transfer/moneytransfer.jsp';");
			 	   out.println("</script>");
		    }
		    else{
		        response.sendRedirect("../homepage/footer.jsp");
		    }
		
		
	}
	
	
}
else if(gonderen.equals("vadesiz")&&rs.getInt("vadesizbalance")>tutar){
	if(alici.equals("vadeli")){
		double newgonderen=rs.getInt("vadesizbalance")- tutar;
		double newalici=rs.getInt("vadebalance")+ tutar;
		
		 PreparedStatement ps=con.prepareStatement("update account set vadesizbalance=? , vadebalance=? where userId='"+userId+"'");
		   
		    ps.setDouble(1,newgonderen);
		    ps.setDouble(2,newalici);
		    int i=ps.executeUpdate();
		    if(i>0)
		    {
		    	out.println("<script >");
			 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
			 	   out.println("location='../Transfer/moneytransfer.jsp';");
			 	   out.println("</script>");
		    }
		    else{
		        response.sendRedirect("../homepage/footer.jsp");
		    }
		
		
	}
	else if(alici.equals("yatirim")){
		double newgonderen=rs.getInt("vadesizbalance")- tutar;
		double newalici=rs.getInt("yatirimbalance")+ tutar;
		
		 PreparedStatement ps=con.prepareStatement("update account set vadesizbalance=? , yatirimbalance=? where userId='"+userId+"'");
		   
		    ps.setDouble(1,newgonderen);
		    ps.setDouble(2,newalici);
		    int i=ps.executeUpdate();
		    if(i>0)
		    {
		    	out.println("<script >");
			 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
			 	   out.println("location='../Transfer/moneytransfer.jsp';");
			 	   out.println("</script>");
		    }
		    else{
		        response.sendRedirect("../homepage/footer.jsp");
		    }
		
		
	}
	
}
else if(gonderen.equals("yatirim")&&rs.getInt("yatirimbalance")>tutar){
	if(alici.equals("vadeli")){
		double newgonderen=rs.getInt("yatirimbalance")- tutar;
		double newalici=rs.getInt("vadebalance")+ tutar;
		
		 PreparedStatement ps=con.prepareStatement("update account set yatirimbalance=? , vadebalance=? where userId='"+userId+"'");
		   
		    ps.setDouble(1,newgonderen);
		    ps.setDouble(2,newalici);
		    int i=ps.executeUpdate();
		    if(i>0)
		    {
		    	out.println("<script >");
			 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
			 	   out.println("location='../Transfer/moneytransfer.jsp';");
			 	   out.println("</script>");
		    }
		    else{
		        response.sendRedirect("../homepage/footer.jsp");
		    }
		
		
	}
	else if(alici.equals("vadesiz")){
		double newgonderen=rs.getInt("yatirimbalance")- tutar;
		double newalici=rs.getInt("vadesizbalance")+ tutar;
		
		 PreparedStatement ps=con.prepareStatement("update account set yatirimbalance=? , vadesizbalance=? where userId='"+userId+"'");
		   
		    ps.setDouble(1,newgonderen);
		    ps.setDouble(2,newalici);
		    int i=ps.executeUpdate();
		    if(i>0)
		    {
		    	
		    	out.println("<script >");
			 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
			 	   out.println("location='../Transfer/moneytransfer.jsp';");
			 	   out.println("</script>");
		    }
		    else{
		        response.sendRedirect("../homepage/footer.jsp");
		    }
		
	}
	
}
else if ((rs.getInt("yatirimbalance")<tutar)||(rs.getInt("vadebalance")<tutar)||(rs.getInt("vadesizbalance")<tutar)){
	out.println("<script >");
	   out.println("alert('BAKIYE YETERSIZ');");
	   out.println("location='../Transfer/moneytransfer.jsp';");
	   out.println("</script>");
    
}


     session.setAttribute("userId", userId);
}

}

catch (Exception e) {	
	response.sendRedirect("../homepage/footer.jsp");
	
	
}

%>