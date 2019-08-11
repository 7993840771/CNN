<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>
<%
String mail=(String)session.getAttribute("mail");
String id3=(String)session.getAttribute("fname");
String id=request.getQueryString();
String b=null,c=null,d=null,e=null;
try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocm","root","root");

PreparedStatement stmt1 = con1.prepareStatement("select id,fname from signup where id='"+id3+"'");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 b=rs1.getString(1);
 c=rs1.getString(2);
}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}

try {

Class.forName("com.mysql.jdbc.Driver");

Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocm","root","root");

PreparedStatement stmt2 = con2.prepareStatement("select id,fname from signup where id='"+id+"'");

ResultSet rs2 = stmt2.executeQuery();

while(rs2.next()) {
d=rs2.getString(1);
e=rs2.getString(2);
}
session.setAttribute("name",e);
}
catch(Exception e2)
{
out.println(e2.getMessage());

}

//out.print(a);
//out.print(b);


//out.print(c);
//out.print(id);
String g="waiting";
PreparedStatement ps = null;

	ResultSet rs = null;
		

//String s="facebook";
	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into friends(sendid,sendid1,recid,recid1,status) values(?,?,?,?,'"+g+"')");
		ps.setString(1,b);
ps.setString(2,c);
ps.setString(3,d);
ps.setString(4,e);


ps.executeUpdate();

response.sendRedirect("frd3.jsp?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</body>
</html>
