<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="http://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script language="JavaScript" type="text/javascript">
function valid()
{
var a=document.f.n.value;
if(a=="")
{
alert("Enter your Name");
document.f.n.focus();
return false;
}
var b=document.f.p.value;
if(b==""){
alert("Enter password");
document.f.p.focus();
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
				
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	
  <div id="menu"> 
    <div align="center"> 
      <h2><font color="#FF0000">Admin Login</font> </h2>
    </div>
  </div>
	<!-- end #menu -->
	<div id="page">						
		<div id="page-bgtop">
			<div id="page-bgbtm"><table align="center"><tr><td width="400"><p><img src="images/adminlogo.png" width="300" height="150"></p></td><td>
						<table width="400">
		<form action="adminlo.jsp" name="f" onSubmit="return valid()">
		<tr>
		<td><p><font color="#3300FF">User Name</font></p></td>
		<td><p><input type="text" name="n"></p></td>
		</tr>
		<tr>
		<td><p><font color="#3300FF">Password</font></p></td>
		<td><p><input type="password" name="p"></p></td>
		</tr>
		<tr>
		<td><p></p></td>
		<td><p><input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: red; background-color: #FFFFC0; border: 3pt ridge green" value="Submit">&nbsp;&nbsp;
				<input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: red; background-color: #FFFFC0; border: 3pt ridge green" value="Clear"></p>
		</td>
		</tr>
		</form>		
		</table>
						</td></tr></table>
						
		<div id="content">
					<div class="post">
					<div class="entry"> 
							
						</div>
					</div>
					
					
					<div style="clear: both;">&nbsp;</div>
			</div>
				<!-- end #content -->
				
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
