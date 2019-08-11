<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link href="http://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
			<%
			String file_data=null;
			String q=null;
				//String mail=(String)session.getAttribute("id");
				
			%>
		
    <div id="header"> 
	</br>
    
			<div id="logo">
				
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
	
				
    
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post"><h3></h3>
						<h2 class="title"></h2>
						<div class="entry">
							<table>
<tr><font color="#CC3399"><b>Friends</b></font></tr>
<%
String mail=(String)session.getAttribute("mail");


try {

Class.forName("com.mysql.jdbc.Driver");

Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocm","root","root");

PreparedStatement stmt3 = con3.prepareStatement("select id from signup where mail='"+mail+"' ");

ResultSet rs3= stmt3.executeQuery();

while(rs3.next()) {
 q=rs3.getString(1);
}
}
catch(Exception e3)
{
out.println(e3.getMessage());

}



String s=null,s1=null;

try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocm","root","root");


	PreparedStatement stmt1 = con1.prepareStatement("select recid,recid1 from friends where sendid='"+q+"' ");

ResultSet rs1= stmt1.executeQuery();

while(rs1.next()) {
 s=rs1.getString(1);
  s1=rs1.getString(2);

%>

<tr>

<td><img src="friends1.jsp?<%=s%>" height="125" width="125"></td><td><font color="#666666"><b><%=s1%></b></font>
</td></tr>

<tr><td><p>
<a href="view.jsp?<%=s%>"><b>View Details</b></a></p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>
<%
}
%>


<%
}
catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
</table>

						

	
						</div>
					</div>
					
					<div class="post">
						<h2 class="title">
						</h2>
						<div class="entry">
					
								
							<p></p>
						</div>
					</div>
					<div class="post">
						<h2 class="title"><a href="#"></a></h2>
						<div class="entry">
							<p></p>
						</div>
					</div>
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<%
							String fname=null;
							String lname=null;
							//String mno=null;
							//String gen=null;
							//String city=null;
							PreparedStatement ps = null;
							ResultSet rs = null;
							try
								{
									Connection con = databasecon.getconnection();
									ps=con.prepareStatement("select * from signup where mail='"+mail+"'");
									rs=ps.executeQuery();
									while(rs.next())
									{
									fname=rs.getString(2);
									lname=rs.getString(3);
									
									}
								}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
								
								
						%>
						<li><img src="user2.jsp" width="135" height="155"></br>
						
						</li>
						<li>
							<h2><font color="#660000" size="3"><i><%=fname%> <%=lname%></i></font></h2>
							<form name="s" action="search2.jsp">
 <table><tr><td><font color="#33CCFF" face="Times New Roman, Times, serif" size="4"><i><b>
 Search</b></i></font>
 <input type="text" name="v" size="14" placeholder="Search friends"></td></tr></table></form>
							
              
						</li>
						<li>
							
							<ul>
								<li><a href="user.jsp">Home</a></li>
								<li><a href="friends.jsp">Friends</a></li>
								<li><a href="addvideo.jsp">Upload Videos</a></li>
								<li><a href="myvideo.jsp">My Videos</a></li>
								<li><a href="index.jsp">Logout</a></li>

							</ul>
						</li>
						<li>
							<h2></h2>
							
						</li>
					</ul>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p></p>
</div>
<!-- end #footer -->
</body>
</html>
