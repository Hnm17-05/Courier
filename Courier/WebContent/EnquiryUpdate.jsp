<%@include file="Error.jsp"%>
<%@include file="Connection.jsp"%>
<!DOCTYPE html >
<html>
<head>
<title>WELCOME ADMIN</title>
<%@include file="allComponent/allcss.jsp"%>
</head>
<body>
	<%@include file="allComponent/NavbarU.jsp"%>
	<%
	String EUmail = (String) session.getAttribute("EQEmail");
	%>
	<h2>WELCOME <%=EUmail %></h2>

<table class="table table-bordered">
  <thead class="thead-dark">
   <tr>
<th>NAME</th>
<th>SUBJECT</th>
<th>QUERY </th>
<th>REPLY </th>
</tr>
  </thead>
  <tbody>
<%
	String qr="select name,subject,query,reply from Enquiry where email='"+EUmail+"' ";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next())
	{
		do
		{
			String name=rs.getString("name");
			String subject=rs.getString("subject");
			String query=rs.getString("query");
			String reply=rs.getString("reply");
			%>
			<tr>
			<td><%=name %></td>
			<td><%=subject %></td>
			<td><%=query %></td>
			<td><%=reply %></td>
			
			</tr>
			<%
		}while(rs.next());
	}
	else
	{
	
	}
	con.close();
%>
</table>
		<%@include file="allComponent/Footer.jsp"%>
</body>
</html>