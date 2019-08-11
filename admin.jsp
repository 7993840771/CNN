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
		
    <div id="header"> 
	</br>
     		<div id="logo">
				<%
				String n=(String)session.getAttribute("n");
				String p=(String)session.getAttribute("p");
			%>
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
			
    <h2 align="center"><font color="#FF00FF">Welcome Administrator</font></h2>
		
   
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
				<h3 align="right"> <a href="index.jsp">Logout</a></h3>
					<div class="post">
						<h2 class="title">Upload Video Here</h2>
						   
						<div class="entry">
							
              <table width="460" height="169"  style="border:1px grey solid">
                <form name="a" action="admin1.jsp" onSubmit="return validation()">
                  <tr> 
                    <td align="center"><div align="right"><font color="#FF0080" face="Times New Roman, Times, serif" size="4"><i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File 
                        Name</b></i></font></div></td>
                    <td align="center"> <font color="#CCCCCC"> 
                      <input type="text" name="file" required>
                      </font></td>
                  </tr>
                  <tr> 
                    <td height="73"></td>
                    <td align="center">&nbsp;&nbsp; <input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Submit"> 
                      &nbsp;&nbsp; <input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Clear"> 
                    </td>
                  </tr>
                </form>
              </table>
						</div>
					</div>
					<div class="post">
						<h2 class="title"><a href="#"></a></h2>
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
            <li> 
              <h2 align="center">Administrator</h2>
              <div style="width:300px;">
                <ul>
                  <li> <a href="admin.jsp" >Upload Video</a></li>
				   <li> <a href="viewUploadedVideo.jsp" >View Uploaded Video</a></li>
   				   <li> <a href="viewUserUploadedVideo.jsp" >View User Uploaded Video</a></li>

				   <li><a href="userdetail.jsp">View User Details</a></li>
				   <li><a href="facultydetail.jsp">View Faculty Details</a></li>
				  <li><a href="postImages.jsp">Post Images</a></li>
				  <li><a href="viewUploadedImage.jsp">View Post Images</a></li>
  				  <li><a href="viewUserUploadedImage.jsp">View User Uploaded Images</a></li>
				  <li><a href="postNews.jsp">Post Notice</a></li>
				  <li><a href="viewUploadedNews.jsp">View Notice</a></li>
				  <li><a href="events.jsp">Post Events</a></li>
				  <li><a href="viewEvents.jsp">View Post Events</a></li>
				  <li><a href="userviewPostPlacement2.jsp"> View  User Post</a></li>
				  <li><a href="chatHome.jsp">Chat</a></li>
				  <li><a href="index.jsp">Logout</a></li>
                  <h2></h2>
                </ul>
              </div>
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
