<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UptimeCareer- Home Page</title>
<link href="images/uptimelogo.jpg" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to Uptime Career. Maharasthra,India</h1>
<h1 align="center"> In Uptime Career Learning Devops with Real Time scnerios</h1>
<h1 align="center">This is MultiBranch Pipeline(develoment/master/qa/release/dr/tset branches) 23/04/2024 </h1>

<hr>
<br>
 <h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/uptimelogo.jpg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		UptimeCareer, 
		uptimecareer@gmail.com
		<br>
		<a href="mailto:uptimecareer@gmail.com">Mail to Uptime Career</a>
	</span>
</div>
<hr>
<p align=center>Uptime Career - Consultant, Training, Development Center.</p>
<p align=center><small>Copyrights 2022 by <a href="http://uptimecareer.com/">Uptimecareer,Pune</a> </small></p>

</body>
</html>
