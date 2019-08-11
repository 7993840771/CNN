<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<%
String owner=(String)session.getAttribute("mail");
java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;		
     String no=request.getParameter("no");
String chat=request.getParameter("chat");
PreparedStatement ps=null;
try
{
Connection con = databasecon.getconnection();
ps=con.prepareStatement("insert into chat (emailid,chat,date) values (?,?,?)");
ps.setString(1,owner);
ps.setString(2,chat);
ps.setString(3,strDateNew);
ps.executeUpdate();
//response.sendRedirect("chat.jsp?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
