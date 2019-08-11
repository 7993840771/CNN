<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

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
			    String fname=null;
				String mail=(String)session.getAttribute("mail");
				System.out.println("mail======="+mail);
				String pass=(String)session.getAttribute("pass");
                fname=(String)session.getAttribute("fname");
			%>
		
    <div id="header"> 
	</br>
    			<div id="logo">
				
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
	<h2 align="center"><font color="#FF00FF"> Online College Magazine</font></h2>
				
    
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post"><h3></h3>
						<h2 class="title"></h2>
						<div class="entry">
						<p><font color="#FF0000" face="Times New Roman, Times, serif" size="+2">Updade Status</font>&nbsp;&nbsp;&nbsp;
 </p>
						
						<table bgcolor="#666666">
						<form name="s1" action="postFaculty.jsp" onSubmit="return validation()">
						<tr><td></td><td></td><td><textarea rows="4" cols="40" placeholder="What's on your mind?" name="msg"></textarea></td></tr>
						<tr><td bgcolor="#CCCCCC"></td><td bgcolor="#CCCCCC"></td>
						<td>
						<input name="submit" type="submit" value="  post   "></td>
						</tr></form></table>
	
						</div>
					</div>
					
					<div class="post">
						<h2 class="title">
						
								</h2>
						<div class="entry">
						<%
						
						String sw=null;
						try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocm","root","root");
PreparedStatement stmt1 = con1.prepareStatement("select recid from friends where sendid='"+fname+"' ");

ResultSet rs1= stmt1.executeQuery();

while(rs1.next()) {
 sw=rs1.getString(1);

%>
<table>
				
						
						<%PreparedStatement ps1 = null;
							ResultSet rs2 = null;
							String video=null;
							String id=null;
							String msg=null;
							String sdate=null;
							String skey=null;
							String q="accept";
							Connection con2=null;
							try
								{
                                    con2 = databasecon.getconnection();
									ps1=con2.prepareStatement("select * from uservideo  where id1='"+sw+"'");
									rs2=ps1.executeQuery();
									
									
									while(rs2.next())
									{
									
									fname=rs2.getString(3);
									video=rs2.getString(5);
									sdate=rs2.getString(6);
									msg=rs2.getString(4);
									skey=rs2.getString(9);
									session.setAttribute( "skey", skey );
									id=rs2.getString(1);									
									session.setAttribute( "msg", msg );
									
									
									
									%>

									<tr>
                  <td width="100"><img src="friends1.jsp?<%=sw%>" height="55" width="55"></td>
				  <td>&nbsp;&nbsp;<font color="#FF0000" size="5"><strong><%=fname%></strong></font> <font color="#FF00FF">Shared 
                    A VIdeo</font>
					 </td>
									
                </tr>
				  <tr>					
				     <td colspan="2">
					 <hr/>
					 <table width="400"  height="320" border="0">
  <tr>
    <td scope="col" colspan="2" align="left">&nbsp;<font color="#9900FF"><%=msg%></font></td>
     </tr>
  <tr>
    <td scope="row" colspan="2" >&nbsp;<video width="400" height="320" controls  >
                   <source src="videos/<%=video%>" type="video/ogg">
                   <source src="videos/<%=video%>" type="video/mp4">
                   <source src="videos/<%=video%>" type="video/webm">
                   <object data="videos/<%=video%>" width="400" height="320">
                      <embed src="videos/<%=video%>" width="400" height="320"></embed> <embed width="400" height="320" src="videos/<%=video%>"> 
                    </object>
               </video>
<td scope="row" colspan="2" align="left">&nbsp;
          	</td>

  </tr>
<tr>
   <td colspan="2">
      
        <form action="count.jsp" method="post">
		     <input type="submit" value="Like" />   
              </form>         <form action="comment.jsp" method="post">
	              <input type="text" name="comment" />
				  <input type="submit" value="ok" />

  <%
//String msg=(String)session.getAttribute("msg");
  PreparedStatement ps13=null;
   Connection con13=null;
   ResultSet rs13=null;
   String str1,str2=null;
  con13 = databasecon.getconnection();
 ps13=con13.prepareStatement("select sname,comment from comment where msg='"+msg+"'");
rs13= ps13.executeQuery();
while(rs13.next()) {
 str1=rs13.getString(1);
 str2=rs13.getString(2);
 %>

 <%
// out.print("1============"+sw);
}
%>
 
   </td>
 </tr>


  <tr>
    			  <%
		           session.setAttribute("msg",msg); 
	               %>
	   </form>
	        

	 
	
   </td>

 </tr>
 <tr>
   <td colspan="2">
   </td>
 </tr>
 <tr>
   <td colspan="2">
  
   </td>
 </tr>
</table>
</td>
</tr>


<%
									}
									
									
								}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
								
								%>
								
									
						<%


 }
 
 }
 catch(Exception e)
 {
 }
PreparedStatement ps3 = null;
							ResultSet rs3 = null;
							//String video=null;
							String msg1=null;
							//String sdate=null;
							//String q="accept";
							try
								{
									Connection con3 = databasecon.getconnection();
									ps3=con3.prepareStatement("select fname,msg1,id1 from message where id1='"+sw+"' AND status='accepted'");
									rs3=ps3.executeQuery();
									
									
									while(rs3.next())
									{
									
									fname=rs3.getString(1);
									msg1=rs3.getString(2);
									//sdate=rs3.getString(3);
									//msg=rs3.getString(4);
									
									
									%>
									<tr>
									<%
//String msg=(String)session.getAttribute("msg");
  PreparedStatement ps14=null;
   Connection con14=null;
   ResultSet rs14=null;
   String str3=null,str4=null;
  con14 = databasecon.getconnection();
  ps14=con14.prepareStatement("select sname,comment from comment where msg='"+msg1+"'");
rs14= ps14.executeQuery();
while(rs14.next()) {
 str3=rs14.getString(1);
 str4=rs14.getString(2);
 %>
 
<h3 style="color:red">User Name: <%=str3%></h3>&nbsp&nbsp<p>Comments: <%=str4%></p> 
 <%
// out.print("1============"+sw);
}
%>
                  <td><img src="friends1.jsp?<%=sw%>" height="55" width="55"></td><td>&nbsp;&nbsp;<font color="#FF0000" size="5"><strong><%=fname%></strong></font> <font color="#FF00FF">Shared 
                    A Message &nbsp; </font><font color="#004000"><%=msg1%><br/><h3 style="color:red"> </h3>&nbsp&nbsp<br/><p>						  <form action="comment1.jsp" method="post">
	              <input type="text" name="comment" /> 
	              <input type="submit" value="ok" />
				  <%
		           session.setAttribute("msg1",msg1); 
	               %>
	           </form>
				
					</p></font>
					
                  
				

				  
					</td>

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
									fname=rs.getString(2);
									lname=rs.getString(3);
									
									}
								}
								catch(Exception e1)
								{
								session.setAttribute("name",fname);
									out.println(e1.getMessage());
								}
								
								
						%>
						<li><img src="facPhoto.jsp?<%=mail%>" width="135" height="155"></br>
						
						</li>
						<li>
							<h2><font color="#660000" size="3"><i><%=fname%> <%=lname%></i></font></h2>
							             
						</li>
						<li>
							
							<ul>
								<li><a href="facultyHome.jsp">Home</a></li>
								<li><a href="addvideo.jsp">Upload Videos</a></li>
								<li><a href="myvideo.jsp">User Videos</a></li>
								<li><a href="addImage.jsp">Upload Images</a></li>
								<li><a href="viewMyImage.jsp">User Images</a></li>
                                <li> <a href="viewUploadedVideo1.jsp" >View Admin Video</a></li>
    	                         <li><a href="viewUploadedImage1.jsp">View Admin Images</a></li>
                            	 <li><a href="viewUploadedNews1.jsp">View Admin Notice</a></li>
                       		     <li><a href="viewPostPlacement1.jsp">View Post</a></li>
		                         <li><a href="viewEvents1.jsp">View Post Events</a></li>
		                        <li><a href="chatHome.jsp">Chat</a></li>
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
