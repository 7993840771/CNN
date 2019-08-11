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
   <%
  String file=request.getParameter("file");
  session.setAttribute("file",file);
  %>
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post">
						<h2 class="title">Upload Video Here</h2>
						<div class="entry">
							<form name="form" action="upload_video1.jsp" method="post"  enctype="multipart/form-data" onSubmit="return validation()" >
                                    <script type="text/javascript">
    function ValidateExtension() {
        var allowedFiles = [".mp4"];
        var fileUpload = document.getElementById("fileUpload");
        var lblError = document.getElementById("lblError");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(fileUpload.value.toLowerCase())) {
            lblError.innerHTML = "Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.";
            return false;
        }
        lblError.innerHTML = "";
        return true;
    }
</script>
 <table width="460" height="200">
 
	<tr><td></td>
	<td bgcolor="#CCFFFF">
	<font color="#666666" face="Times New Roman, Times, serif" size="4">
	<i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Name</b></i></font></td>
	<td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" name="file"  value="<%=file%>">
	</td></tr>
	<tr>
	<td></td><td bgcolor="#CCFFFF">
	<font color="#666666" face="Times New Roman, Times, erif" size="4">
	<i><b>Choose File</b></i></font></td>
	
	<td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="file" name="file" id="fileUpload"  /> <br/>
	<span id="lblError" style="color: red;"></span>
	</td></tr>
	
	<tr><td></td><td bgcolor="#CCFFFF"></td>
	<td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit"  id="btnUpload" value="Upload" onclick="return ValidateExtension()"    />
	<input type="reset" class="button" value="Clear">
	</td>
	</tr>
	</table>
	</form>
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
              <div align="center">
                <ul>
                  <li> <a href="admin.jsp" >Upload Video</a></li>
				   <li> <a href="viewUploadedVideo.jsp" >View Uploaded Video</a></li>
				   <li><a href="userdetail.jsp">View User Details</a></li>
				   <li><a href="facultydetail.jsp">View Faculty Details</a></li>
				  <li><a href="postImages.jsp">Post Images</a></li>
				  <li><a href="viewUploadedImage.jsp">View Post Images</a></li>
				  <li><a href="postNews.jsp">Post Notice</a></li>
				  <li><a href="viewUploadedNews.jsp">View Notice</a></li>
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
