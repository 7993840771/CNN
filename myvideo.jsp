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
			
				String mail=(String)session.getAttribute("mail");
				String pass=(String)session.getAttribute("pass");
				String fname=(String)session.getAttribute("fname");
			%>
		
    <div id="header"> 
	</br>
    
			<div id="logo">
				
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
	
		<h2 align="center"><font color="#FF00FF">ACE Online College Magazine</font></h2>		
    
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post"><h3></h3>
						<h2 class="title"></h2>
						<div class="entry">
						<p><font color="#FF0000" face="Times New Roman, Times, serif" size="+2"></font>&nbsp;&nbsp;&nbsp;
						<a href="addvideo.jsp"><font color="#006600" face="Times New Roman, Times, serif" size="+2">List of Videos Uploaded By User</font></a> </p>
						
						<table bgcolor="#666666">
						</table>
	
						</div>
					</div>
					
					<div class="post">
						<h2 class="title">
						
								</h2>
						<div class="entry">
						 <table>
				

						<%PreparedStatement ps1 = null;
							ResultSet rs1 = null;
							String video=null;
							String msg=null;
							String sdate=null;
							String q="accept";
							String id=null;
							try
								{
									Connection con1 = databasecon.getconnection();
									ps1=con1.prepareStatement("select  id,fname,video,sdate,msg from uservideo  where id1='"+fname+"'");
									rs1=ps1.executeQuery();
									
									
									while(rs1.next())
									{
				                    id=rs1.getString(1);
									fname=rs1.getString(2);
									video=rs1.getString(3);
									sdate=rs1.getString(4);
									msg=rs1.getString(5);
									
									
									%>

									<tr>
								  					
                  <td><font color="#FF0000"><strong><%=msg%></strong></font> uploaded on:<%=sdate%><h4><a href="deleteUserVideos.jsp?sno='<%=id%>' ">Delete</a></h4>
				  </td>
                </tr>
									
									<tr>								
									<td>
									<video width="400" height="320" controls >
  <source src="videos/<%=video%>" type="video/ogg">
  <source src="videos/<%=video%>" type="video/mp4">
  <source src="videos/<%=video%>" type="video/webm">
  <object data="videos/<%=video%>" width="320" height="240">
    <embed width="320" height="240" src="videos/<%=video%>">
  </object>
</video></td>
                
			    </tr>
				
<%
									}
									
								}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
								%>
								
								<tr>
								
								</tr>
								
								</table>
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
							String fname1=null;
							String lname=null;
							//String mno=null;
							//String gen=null;
							//String city=null;
							PreparedStatement ps = null;
							ResultSet rs = null;
							try
								{
									Connection con = databasecon.getconnection();
									ps=con.prepareStatement("select * from faculty where email='"+mail+"'");
									rs=ps.executeQuery();
									while(rs.next())
									{
									fname1=rs.getString(2);
									lname=rs.getString(3);
									
									}
								}
								catch(Exception e1)
								{
								session.setAttribute("name",fname);
									out.println(e1.getMessage());
								}
								
								
						%>
						<li><img src="facPhoto.jsp" width="135" height="155"></br>
						
						</li>
						<li>
							<h2><font color="#660000" size="3"><i><%=fname1%> <%=lname%></i></font></h2>

							
              
						</li>
						<li>
							
							<ul>
								<li><a href="facultyHome.jsp">Home</a></li>
								
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
