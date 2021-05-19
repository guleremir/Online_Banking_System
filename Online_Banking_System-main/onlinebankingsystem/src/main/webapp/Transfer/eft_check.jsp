<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String userId=request.getParameter("userId");
String gonderen=request.getParameter("gonderen");

int tutar=Integer.parseInt(request.getParameter("tutar"));
String alici=request.getParameter("alici");



Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_banking_system","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from account where userId='"+userId+"'");
Statement stt= con.createStatement();
ResultSet rss=stt.executeQuery("select * from account where accountId='"+alici+"'");

try{
	
rs.next();
if(rs.getString("userId").equals(userId))
{
if(gonderen.equals("vadeli") && rs.getInt("vadebalance")>tutar){
	
	
	double newgonderen=rs.getInt("vadebalance")- tutar;
	
	
	 PreparedStatement ps=con.prepareStatement("update account set vadebalance=?  where userId='"+userId+"'");
	   
	    ps.setDouble(1,newgonderen);
	 
	    int i=ps.executeUpdate();
	    if(i>0)
	    {
	    	out.println("<script >");
		 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
		 	   out.println("location='../Transfer/eft.jsp';");
		 	   out.println("</script>");
	    }
	    else{
	        response.sendRedirect("../homepage/footer.jsp");
	    }
	   
	
	rss.next();
 if(rss.getString("accountId").equals(alici)){


	 
	 double newalici=rss.getInt("vadebalance")+ tutar;
		
		
	 PreparedStatement pss=con.prepareStatement("update account set vadebalance=?  where accountId='"+alici+"'");
	   
	    pss.setDouble(1,newalici);
	 
	    int i2=pss.executeUpdate();
	    if(i2>0)
	    {
	    	out.println("<script >");
		 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
		 	   out.println("location='../Tranfer/eft.jsp';");
		 	   out.println("</script>");
	    }
	    else{   response.sendRedirect("../homepage/footer.jsp");
	    }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
 }   
	
}
if(gonderen.equals("vadesiz") && rs.getInt("vadesizbalance")>tutar){
	
	
	double newgonderen=rs.getInt("vadesizbalance")- tutar;
	
	
	 PreparedStatement ps=con.prepareStatement("update account set vadesizbalance=?  where userId='"+userId+"'");
	   
	    ps.setDouble(1,newgonderen);
	 
	    int i=ps.executeUpdate();
	    if(i>0)
	    {
	    	out.println("<script >");
		 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
		 	   out.println("location='../Transfer/eft.jsp';");
		 	   out.println("</script>");
	    }
	    else{
	    	   response.sendRedirect("../homepage/footer.jsp");
	    }
	   
	
	rss.next();
 if(rss.getString("accountId").equals(alici)){


	 
	 double newalici=rss.getInt("vadebalance")+ tutar;
		
		
	 PreparedStatement pss=con.prepareStatement("update account set vadebalance=?  where accountId='"+alici+"'");
	   
	    pss.setDouble(1,newalici);
	 
	    int i2=pss.executeUpdate();
	    if(i2>0)
	    {
	    	out.println("<script >");
		 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
		 	   out.println("location='../Transfer/eft.jsp';");
		 	   out.println("</script>");
	    }
	    else{
	    	   response.sendRedirect("../homepage/footer.jsp");
	    }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
 }   
	
}
if(gonderen.equals("yatirim") && rs.getInt("yatirimbalance")>tutar){
	
	
	double newgonderen=rs.getInt("yatirimbalance")- tutar;
	
	
	 PreparedStatement ps=con.prepareStatement("update account set yatirimbalance=?  where userId='"+userId+"'");
	   
	    ps.setDouble(1,newgonderen);
	 
	    int i=ps.executeUpdate();
	    if(i>0)
	    {
	    	out.println("<script >");
		 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
		 	  out.println("location='../Transfer.eft.jsp';");
		 	   out.println("</script>");
	    }
	    else{
	        response.sendRedirect("../homepage/footer.jsp");
	    }
	   
	
	rss.next();
 if(rss.getString("accountId").equals(alici)){


	 
	 double newalici=rss.getInt("vadebalance")+ tutar;
		
		
	 PreparedStatement pss=con.prepareStatement("update account set vadebalance=?  where accountId='"+alici+"'");
	   
	    pss.setDouble(1,newalici);
	 
	    int i2=pss.executeUpdate();
	    if(i2>0)
	    {
	    	out.println("<script >");
		 	   out.println("alert('TRANSFER ISLEMINIZ GERCEKLESTIRILDI');");
		 	  out.println("location='../Transfer/eft.jsp';");
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
}
}
catch (Exception e) {	
	response.sendRedirect("../homepage/footer.jsp");
	
	
}

%>