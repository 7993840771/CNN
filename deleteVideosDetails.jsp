<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%
try{
	Connection con = databasecon.getconnection();
	String sno=request.getParameter("sno");
	if(con!=null){
	    Statement  st1=con.createStatement();
        System.out.println(" before deleted ..........");
		st1.executeUpdate("delete from video where id="+sno);
        System.out.println("deleted ..........");
	    response.sendRedirect("viewUploadedVideo.jsp");
  
	}
}
catch(Exception e)
{
	out.println(e);
}
%>