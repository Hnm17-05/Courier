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
<th>FIRST NAME</th>
<th>LAST NAME</th>
<th>MOBILE</th>
<th>PASSWORD </th>
</tr>
  </thead>
  <tbody>
<%
	String qr="select Firstname,Lastname,Mobile,Password from user where Email='"+EUmail+"' ";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next())
	{
		do
		{
			String Firstname=rs.getString("Firstname");
			String Lastname=rs.getString("Lastname");
			int Mobile=rs.getInt("Mobile");
			String Password=rs.getString("Password");
			%>
			<tr>
			<td><%=Firstname %></td>
			<td><%=Lastname %></td>
			<td><%=Mobile %></td>
			<td><%=Password %></td>
			
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