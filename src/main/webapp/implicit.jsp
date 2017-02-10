<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=UTF-8">
<title>implicit.jsp</title>
</head>
<body>
<%
	// URL ==> http://localhost:8080/implicit.jsp?xxx=seoul
%>
<h1>http://localhost:8080/implicit.jsp?xxx=seoul</h1>
<ol>
	<li>Protocol = <%= request.getProtocol()%></li>
	<li>ServerName = <%= request.getServerName()%></li>
	<li>ServerPort = <%= request.getServerPort()%></li>
	<li>ContentPath = <%= request.getContextPath()%></li>
	<li>RequetURI = <%= request.getRequestURI()%></li>
	<li>QueryString= <%= request.getQueryString()%></li>
	<li>RemoteName= <%= request.getRemoteHost()%></li>
	<li>RemoteAddr = <%= request.getRemoteAddr()%></li>

</ol>
<%
	Enumeration<String> headers = request.getHeaderNames();
	
	while(headers.hasMoreElements()) {
// 		out.println(header.nextElement() + "<br>");
	
		String header = headers.nextElement();
		
		out.println(header + " : " + request.getHeader(header)+ "<br>");
	}

%>

</body>
</html>