<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
         <%
                        	    Connection con=null;
								PreparedStatement ps= null;
							    ResultSet rs= null;
    							int id=0;
								String fname=null,lname=null;
 							        try
								      {
                                      con= databasecon.getconnection();
									  ps=con.prepareStatement("select  fname,lname from signup");
									  rs=ps.executeQuery();
								    while(rs.next())
									{
                                   fname=rs.getString(1);
								   lname=rs.getString(2);
								   System.out.println("fname="+fname+""+lname);
									}
									  }
                                catch(Exception e){
								}
									%>


<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/org/cometd.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/org/cometd/AckExtension.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/org/cometd/ReloadExtension.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery.cometd.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery.cometd-reload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/chat.window.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/comet.chat.js"></script>
<script type="text/javascript">
    
    var chatWindowArray = [];
    
    var config = {
        contextPath: '${pageContext.request.contextPath}'
    };
	
	function getChatWindowByUserPair(loginUserName, peerUserName) {
		
		var chatWindow;
		
		for(var i = 0; i < chatWindowArray.length; i++) {
			var windowInfo = chatWindowArray[i];
			if (windowInfo.loginUserName == loginUserName && windowInfo.peerUserName == peerUserName) {
				chatWindow =  windowInfo.windowObj;
			}
		}
		
		return chatWindow;
	}
	
	function createWindow(loginUserName, peerUserName) {
		
		var chatWindow = getChatWindowByUserPair(loginUserName, peerUserName);
		
		if (chatWindow == null) { //Not chat window created before for this user pair.
			chatWindow = new ChatWindow(); //Create new chat window.
			chatWindow.initWindow({
				loginUserName:loginUserName, 
				peerUserName:peerUserName,
				windowArray:chatWindowArray});
			
			//collect all chat windows opended so far.
			var chatWindowInfo = { peerUserName:peerUserName, 
					               loginUserName:loginUserName,
					               windowObj:chatWindow 
					             };
			
			chatWindowArray.push(chatWindowInfo);
    	}
		
		chatWindow.show();
		
		return chatWindow;
	}

	function join(userName){
		$.cometChat.join(userName);
	}
</script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/comet.chat.css"/>
</head>
<body>
<script type="text/javascript">
	var userName = '<%=request.getParameter("username")%>';
	$(document).ready(function(){ 
		$.cometChat.onLoad({memberListContainerID:'members'});
		join(userName);
	});
</script>
<div id="members"></div>
</body>
</html>
