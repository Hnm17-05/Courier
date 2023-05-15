<%@include file="Error.jsp"%>
<%@include file="Connection.jsp"%>
<!DOCTYPE html >
<html>
<head>
<title>WELCOME USER</title>
<%@include file="allComponent/allcss.jsp"%>
</head>
<body>
	<%@include file="allComponent/NavbarU.jsp"%>
	<%
		String UEmail = (String) session.getAttribute("UEmail");	
	%>
<h1>WELOME USER :<%=UEmail %></h1>
	<%@include file="allComponent/Footer.jsp"%>
</body>
</html>