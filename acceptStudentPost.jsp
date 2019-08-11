<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%
String o=request.getQueryString();

PreparedStatement ps = null;
 ResultSet rs = null;
String i="accepted";
String j="viewed";
try
{
Connection con = databasecon.getconnection();
ps=con.prepareStatement("update message set status='"+i+"' where id='"+o+"' ");
ps.executeUpdate();
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
response.sendRedirect("notificationofPost.jsp?success");
%>

