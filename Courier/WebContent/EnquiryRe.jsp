<%@include file="Error.jsp"%>
<%@include file="Connection.jsp"%>
<!DOCTYPE html >
<html>
<head>
<title>WELCOME ADMIN</title>
<%@include file="allComponent/allcss.jsp"%>
</head>
<body>
	<%@include file="allComponent/NavbarA.jsp"%>
	<%
	String Email = (String) session.getAttribute("Email");
	%>
	<h2>WELCOME <%=Email %></h2>

<table class="table table-bordered">
  <thead class="thead-dark">
   <tr>
<th>NAME</th>
<th> EMAIL</th>
<th>MOBILE</th>
<th>SUBJECT</th>
<th>QUERY </th>
<th>REPLY </th>
<th>UPDATE </th>
</tr>
  </thead>
  <tbody>
<%
	String qr="select name, email, mobile, subject,query,reply from Enquiry ";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next())
	{
		do
		{
			String name=rs.getString("name");
			String email=rs.getString("email");
			String mobile=rs.getString("mobile");
			String subject=rs.getString("subject");
			String query=rs.getString("query");
			String reply=rs.getString("reply");
			%>
			<tr>
			<td><%=name %></td>
			<td><%=email %></td>
			<td><%=mobile %></td>
			<td><%=subject %></td>
			<td><%=query %></td>
			<td><%=reply %></td>
			<td><a href="AdminEnquiryUpdate.jsp?name=<%=name %>&email=<%=email %>&mobile=<%=mobile %>&subject=<%=subject %>&query=<%=query %>&reply=<%=reply %>">UPDATE</a></td>
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