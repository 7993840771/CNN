<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%
    String comment1=request.getParameter("comment");
  	java.util.Date now1 = new java.util.Date();
	String date1=now1.toString();
   String DATE_FORMAT1 = "yyyy-MM-dd hh:mm:ss";
   SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
   String strDateNew1 = sdf1.format(now1) ;		
   PreparedStatement ps11=null,ps12 = null;
   Connection con11=null,con12=null;
   ResultSet rs12=null;
   String sw=null;
try{
String msg1=(String)session.getAttribute("msg1");
String fname=(String)session.getAttribute("fname");
//String que="'msg1'";
con11 = databasecon.getconnection();
con12 = databasecon.getconnection();
ps12=con12.prepareStatement("select fname from message where id1='"+fname+"' ");
ResultSet rs1= ps12.executeQuery();
while(rs1.next()) {
 sw=rs1.getString(1);
}
		ps11=con11.prepareStatement("insert into comment (comment,date,msg,sname) values(?,?,?,?) ");
		//ps11.setInt(1,id12);
        //ps11.setString(2,fnamecomment);
        ps11.setString(1,comment1);
        ps11.setString(2,strDateNew1);
        ps11.setString(3,msg1);
		ps11.setString(4,sw);
        ps11.executeUpdate();
        response.sendRedirect("user.jsp");
}

catch(Exception e1)
{
out.println(e1.getMessage());
}
 %>

