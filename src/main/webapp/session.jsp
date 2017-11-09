<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String counter = (String) request.getAttribute("counter");
	String instanceID = (String) request.getAttribute("instanceID");
	String sessionID = (String) request.getAttribute("sessionID");
	String makeSessionTime = (String) request.getAttribute("makeSessionTime");
	String sessionInterval = (String) request.getAttribute("sessionInterval");
	String date = (String) request.getAttribute("date");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>##### PentaLink Test Application #####</title>
</head>
<body>
	<img src="./img/penta.jpg" width="512">
	<br>
	<a href="session">Session_111</a>&nbsp;|&nbsp;
	<a href="status">Status</a>&nbsp;|&nbsp;
	<a href="jarCheck">JAR Check</a>
	<br>
	<b>Current Time : <%=date%></b>
	<h1>[Session Tracking Test]</h1>
	<h4>
		jvmRoute Name :
		<%=instanceID%>
		<br>Node name :
		<%=System.getProperty("jboss.node.name")%>
		<br>Make Session Time :
		<%=makeSessionTime%>
		<br>Session Interval :
		<%=sessionInterval%>min
	</h4>
	You have hit this page
	<b><%=counter%></b> times.
	<br> Your Session ID is
	<b><%=sessionID%></b>

</body>
</html>
