<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

	<%
    String comment= request.getParameter("comment");
    java.util.Date now = new java.util.Date();
	String date=now.toString();
   String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
   SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
   String strDateNew = sdf.format(now) ;		
   PreparedStatement ps10 = null;
   Connection con10=null;
try{
String msg=(String)session.getAttribute("msg");
String fname=(String)session.getAttribute("fname");
out.print("fname============="+msg);
con10 = databasecon.getconnection();
 ps10=con10.prepareStatement("insert into comment(sname,comment,date,msg) values(?,?,?,?)");
ps10.setString(1,fname);
ps10.setString(2,comment);
ps10.setString(3,strDateNew);
ps10.setString(4,msg);
ps10.executeUpdate();
//response.sendRedirect("user.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
finally{
	ps10.close();
	con10.close();
}
 %>

</form>
