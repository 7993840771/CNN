<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="http://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>

<script language="JavaScript" type="text/javascript">
function valid1()
{

var a=document.f.fname.value;
if(a=="")
{
alert("Enter Your First Name");
document.f.fname.focus();
return false;
}
var nameMatch=/^[a-z\A-Z]+$/;
if(!(a.match(nameMatch)))
{
alert("please enter valid name");
document.f.fname.focus();
return false;
}
var b=document.f.lname.value;
if(b=="")
{
alert("Enter Your Last Name");
document.f.lname.focus();
return false;
}
var nameMatch=/^[a-z\A-Z]+$/;
if(!(b.match(nameMatch)))
{
alert("please enter valid name");
document.f.lname.focus();
return false;
}
var regno=document.f.regno.value;
   	var l=regno.length;
		var n = regno.charAt(2);
        var six = regno.charAt(3);
	if (l == 10 && n == 'H' && six == 6)  
      {  
      return true;
      }
	  else{
    alert("You have enter wrong id");
	document.f.regno.focus();
    return false;
	  }
var d=document.f.mail.value;
if(d=="")
{
alert("enter ur E-Mail Id");
document.f.mail.focus();
return false;
}
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.f.mail.value);
if(m==false)
{
alert("Please enter a valid Email Id.  Ex(user@ymail.com)");
document.f.mail.focus();
return false;
}
var z=document.f.pass.value;
if(z=="")
{
alert("Enter password");
document.f.pass.focus();
return false;
}
var e = document.f.mno.value;
if(e=="")
{
alert("Enter mobile number");
document.f.mno.focus();
return false;
}
if(isNaN(e))
{
alert("Enter mobile number in digits");
document.f.mno.focus();
return false;
}

if(e.length!=10)
{
alert("Enter the 10 digit number");
document.f.mno.focus();
return false;
}
var g=document.f.dob.value;
if(g=="")
{
alert("Choose You Date Of Birth");
document.f.dob.focus();
return false;
}
if(document.f.gen[0].checked == false && document.f.gen[1].checked == false)
{
alert("Select gender");
return false;
}

}
</script>
</head>
<body>
	<!-- end #header -->
	
	<!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post">
            <h3 align="center"><font color="#FF00FF"><strong></strong></font></h3>
			  <h3 align="center" class="title">Faculty Registration:</h3>
						<div class="entry">
						<table align="center" height="405">
						<form action="facsuccess.jsp" name="f" method="get" onsubmit="return valid()">
						<tr>
						<td><p><input type="text" name="fname" placeholder="First Name"  size="20" required >
						<input type="text" name="lname" placeholder="Last Name" size="20" required ></p></td>
						</tr>
						<tr>
						<td><p><input type="text" name="email" placeholder="email" size="47" required></p></td>	
						</tr>
						<tr>
						<td><p><input type="password" name="password" placeholder="password" size="47"required ></p></td>	
						</tr>
						<tr>
						<td><p><input type="text" name="dept" placeholder="department" size="47" required ></p></td>
						</tr>
						<tr>
						<td><p><input type="text" name="mno" placeholder="mobile no" size="47" required ></p></td>
						</tr>
						<tr>
						<td><p><input id="demo1" name="dob" type="text" placeholder="Date Of Birth" size="40" required >&nbsp;&nbsp;
						<a href="javascript:NewCal('demo1','ddmmyyyy')"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></p></td>
						</tr>
						<tr>
						<td><p><input type="file" size="33" name="file" placeholder="Your Profile Picture" required ></p></td>
						</tr>
						<tr>
						<td><p><input type="text" name="city" placeholder="Current City" size="47" required ></p></td>
						</tr>
						<tr>
						<td><p>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gen" value="male"  >Male
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gen" value="female" >Female</p>
						</td>
						</tr>
						<tr>
						<td><p>&nbsp;&nbsp;<input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Submit">&nbsp;&nbsp;
						<input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Clear"></p>
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
							<h2>Popular On Our Site</h2>
							<p><%
								String file_data=null;
								String sdate=null;
								PreparedStatement ps1 = null;
							ResultSet rs1 = null;
							try
								{
									Connection con1 = databasecon.getconnection();
									ps1=con1.prepareStatement("select file,sdate from video");
									rs1=ps1.executeQuery();
									while(rs1.next())
									{
									file_data=rs1.getString(1);
									sdate=rs1.getString(2);
									%>
									<li><video width="240" height="200" controls >
  <source src="videos/<%=file_data%>" type="video/ogg">
  <source src="videos/<%=file_data%>" type="video/mp4">
  <source src="videos/<%=file_data%>" type="video/webm">
  <object data="videos/<%=file_data%>" width="320" height="240">
    <embed width="320" height="240" src="videos/<%=file_data%>">
  </object>
</video>
							
              <h2><font color="#FF00FF" size="2">Uploaded on</font> <font color="#FF0000"> 
                <%=sdate%>
                </font> </h2>
							
						</li>
									
<%
									
									}
								}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
								
						%></p>
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
