<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import=" java.security.MessageDigest"%>

<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>

<html>
<head>
<title>game</title>

</head>

<body>
<%
String msg=(String)session.getAttribute("msg");
//String video=request.getParameter("video");
String fname=(String)session.getAttribute("fname");
String s=(String)session.getAttribute("s");
String a=request.getParameter("video");
String datafile=request.getParameter("video");

String state="newvideo";


ArrayList list = new ArrayList();
		ServletContext context = getServletContext();
		
     	String dirName =context.getRealPath("\\videos\\"+a);
		String paramname=null,status="processing";
		String blood=null;
		int id=0;
		String date1=null;
		File file1 = null;
		int y= 1000 + (int)(Math.random()*9000);
		String y1=Integer.toString(y);
		
		
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;		
		
	



	        FileInputStream fs1 = null;


PreparedStatement ps = null;
	ResultSet rs = null;
		

	
	
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into uservideo(id1,fname,msg,video,sdate,status,state,skey) values(?,?,?,?,?,?,?,?)");
		ps.setString(1,fname);
		
ps.setString(2,s);
ps.setString(3,msg);
ps.setString(4,datafile);
ps.setString(5,strDateNew);
ps.setString(6,status);
ps.setString(7,state);
ps.setString(8,y1);

ps.executeUpdate();
//out.print(Successfully Registered);
response.sendRedirect("addvideo3.jsp");

%>
</body>
</html>
