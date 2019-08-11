<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
               	String n=(String)session.getAttribute("n");
				String p=(String)session.getAttribute("p");
				
%>
<form action="application.jsp" method="POST">
<input type="text" name="username" placeholder="enter your name" required>
<input type="submit" value="Join">
</form>
</body>
</html>
