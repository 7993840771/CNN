<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="http://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript">
function validation()
{
var b=document.a.file.value;
if(b=="")
{
alert("Enter File Name");
document.a.file.focus();
return false;
}

var v=document.a.video.value;
if(v=="")
{
alert("Choose file");
document.a.video.focus();
return false;
}
}
</script>
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
					<div class="post">
						<h2 class="title">Post Placement Here</h2>
						<div class="entry">
							
 <table width="460" height="169"  style="border:1px grey solid">
<form name="form" action="upload_placement1.jsp" method="post"   >
 <table width="460" height="200" border="0">
<tr>
	<td bgcolor="#CCFFFF">
 <font color="#666666" face="Times New Roman, Times, serif" size="4">
    <i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PostName</b></i></font></td>
	<td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" name="pname" /></td>
	</tr>
   <tr>
	<td bgcolor="#CCFFFF">
 <font color="#666666" face="Times New Roman, Times, serif" size="4">
    <i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Technologies</b></i></font></td>
	<td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" name="tech" /></td>
	</tr>
<tr>
	<td bgcolor="#CCFFFF">
 <font color="#666666" face="Times New Roman, Times, serif" size="4">
    <i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No Of Opennings</b></i></font></td>
	<td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" name="noofopen" /></td>
	</tr>
<tr>
	<td bgcolor="#CCFFFF">
 <font color="#666666" face="Times New Roman, Times, serif" size="4">
    <i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Date</b></i></font></td>
	<td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" name="ldate" placeholder="2016-10-04" /></td>
	</tr>

	 <tr>
	 
	<td bgcolor="#CCFFFF" colspan="3" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" class="button" value="Add">
	<input type="reset" class="button" value="Clear">
	</td>
	</tr>
	</table>
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
                  <li><a href="userdetail.jsp">View User Details</a></li>
				  <li><a href="postImages.jsp">Post Images</a></li>
				  <li><a href="viewUploadedImage.jsp">View Post Images</a></li>
				  <li><a href="postNews.jsp">Post Notice</a></li>
				  <li><a href="viewUploadedNews.jsp">View Notice</a></li>
				  <li><a href="postPlacement.jsp">Post Placement</a></li>
                 <li><a href="viewPostPlacement.jsp">View Post Placement</a></li>
				  <li><a href="events.jsp">Post Events</a></li>
				  <li><a href="viewEvents.jsp">View Post Events</a></li>
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
