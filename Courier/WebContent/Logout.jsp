<%@ page language="java" contentType="text/html;"%>
<!DOCTYPE html >
<html>
<head>
<title>HOME PAGE</title>
<%@include file="allComponent/allcss.jsp"%>
</head>
<body>
	<%@include file="allComponent/Navbar.jsp"%>
	<% response.sendRedirect("Index.jsp"); %>
	<%@include file="allComponent/Footer.jsp"%>
	</body>	
</html>