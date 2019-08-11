<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<%
session.setAttribute("mail",request.getParameter("mail"));
session.setAttribute("pass",request.getParameter("pass"));
	
FileInputStream fis;
//String no=request.getParameter("no");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String mail=request.getParameter("email");
String pass=request.getParameter("password");
String dept=request.getParameter("dept");
String mno=request.getParameter("mno");
String dob=request.getParameter("dob");
String f=request.getParameter("file");
String city=request.getParameter("city");
String gen=request.getParameter("gen");
System.out.println(fname+"\t"+lname+"\t"+mail+"\t"+pass+"\t"+mno+"\t"+dob+"\t"+f+"\t"+city+"\t"+gen);
//String city=request.getParameter("city");
//String age=request.getParameter("age");
/*String f1="\\Tomcat 7.0";
String f2="\\webapps";
String f3="\\video sharing";
String f4="\\images\\";  */
//String z = "http:\\localhost:9090\\Online%20College%20Magazine\\images\\"+f;
String z="C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/ACE Online College Magazine/images/"+f;

int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;
File image=new File(z);
PreparedStatement ps = null;

	ResultSet rs = null;

try
{
Connection con = databasecon.getconnection();
ps=con.prepareStatement("insert into faculty (fname,lname,email,password,dept,mno,dob,file,city,gen) values (?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,mail);
ps.setString(4,pass);
ps.setString(5,dept);
ps.setString(6,mno);
ps.setString(7,dob);
fis=new FileInputStream(image);
ps.setBinaryStream(8, (InputStream)fis, (int)(image.length()));
ps.setString(9,city);
ps.setString(10,gen);
//ps.setString(8,city);
//ps.setString(9,age);
//ps.setString(10,marks);

ps.executeUpdate();
response.sendRedirect("success1.jsp?success");



}
catch(Exception e1)
{
	System.out.println("fac error "+e1);
//out.println("enter input value in correct format");
}

%>
