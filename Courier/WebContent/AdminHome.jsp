
<!DOCTYPE html >
<html>
<head>
<title>WELCOME USER</title>
<%@include file="allComponent/allcss.jsp"%>
</head>
<body>
	<%@include file="allComponent/NavbarA.jsp"%>
	<%
		String Email = (String) session.getAttribute("Email");	
	    session.setAttribute("AEmail",Email);
	
	%>
<h1>WELOME USER :<%=Email %></h1>
	<%@include file="allComponent/Footer.jsp"%>
</body>
</html>