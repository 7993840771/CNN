i
<%

String tv=request.getParameter("tv");


String key=(String)session.getAttribute("key");




if(tv.equals(key))
{
response.sendRedirect("user1.jsp");
}

else
{
out.println("this key is invalid");
}

%>
