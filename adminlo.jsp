<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title></title>
    </head>
    <body>
	<form>
	<% 
           session.setAttribute("n",request.getParameter("n"));
	       session.setAttribute("p",request.getParameter("p"));
	
	String n=(String)session.getAttribute("n");	
    String p=(String)session.getAttribute("p");		
	
	if(n.equals("admin")&&(p.equals("admin")))
	{
	response.sendRedirect("admin.jsp");
	}
	else{
    %>
<h3><center>Please Check Username or Password!</center> </h3>
	<%}
   %>
		    </form>
       </body> 	
