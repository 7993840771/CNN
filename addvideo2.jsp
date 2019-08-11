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
			
				String mail=(String)session.getAttribute("id");
				String z=(String)session.getAttribute("mail");
				
			%>
		
    <div id="header"> 
	</br>
    
			<div id="logo">
				
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
	<%
  String msg=request.getParameter("msg");
  session.setAttribute("msg",msg);
  %>
				
    
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post"><h3></h3>
						<h2 class="title"></h2>
						<div class="entry">
								<font color="#33CC33" face="Times New Roman, Times, serif" size="+2">Upload Your Video</font>
</a>


 <form name="s1" action="addvideo1.jsp" >
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
<table bgcolor="#666666" height="150" width="150">
<tr><td></td><td><textarea rows="5" cols="50" name="msg"><%=msg%></textarea></td></tr>
<tr><td></td><td>
<input type="file" name="video" id="fileUpload" /> <br/>
<span id="lblError" style="color: red;"></span>
</td></tr>
<tr><td></td>
        <td> 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <input type="submit"  id="btnUpload" value="Post" onclick="return ValidateExtension()"    />
        </td>
      </tr>
     </table></form>

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
									ps=con.prepareStatement("select * from faculty where email='"+z+"'");
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
						<li><img src="facPhoto.jsp" width="135" height="155"></br>
						
						</li>
						<li>
							<h2><font color="#660000" size="3"><i><%=fname%> <%=lname%></i></font></h2>
						
              
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
