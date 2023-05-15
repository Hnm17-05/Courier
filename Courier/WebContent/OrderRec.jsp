<%@include file="Error.jsp"%>
<%@include file="Connection.jsp"%>
<!DOCTYPE html >
<html>
<head>
<title>WELCOME USER</title>
<%@include file="allComponent/allcss.jsp"%>
</head>
<body>
	<%@include file="allComponent/NavbarA.jsp"%>
	<%
	String AOREmail = (String) session.getAttribute("AEmail");
	session.setAttribute("AEmail",AOREmail);
	 String Semail=AOREmail;
	%>
	<h2>
		WELCOME
		<%=AOREmail %></h2>

	<table class="table table-bordered">
		<thead class="thead-dark">
			<tr>
				<th>TRACKING ID</th>
				<th>DOCUMENT TYPE</th>
				<th>DATE OF BOOKING</th>
				<th>SENDER'S CITY</th>
				<th>RECIEVER'S CITY</th>
				<th>CURRENT LOCATION</th>
				<th>CURRENT STATUS</th>
				<th>REMARKS</th>
				<th>UPDATE</th>
			</tr>
		</thead>
		<tbody>
			<%
	String qr="select Trackin,doctype,Sdate,Scity,Rcity,Ccity,Cstatus,Remarks from cart ";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next())
	{
		do
		{
			String Trackin=rs.getString("Trackin");
			String doctype=rs.getString("doctype");
			String Sdate=rs.getString("Sdate");
			String Scity=rs.getString("Scity");
			String Rcity=rs.getString("Rcity");
			String Ccity=rs.getString("Ccity");
			String Cstatus=rs.getString("Cstatus");
			String Remarks=rs.getString("Remarks");
			%>
			<tr>
				<td><%=Trackin %></td>
				<td><%=doctype %></td>
				<td><%=Sdate %></td>
				<td><%=Scity %></td>
				<td><%=Rcity %></td>
				<td><%=Ccity %></td>
				<td><%=Cstatus %></td>
				<td><%=Remarks %></td>
				<td>
				<a
			href="UpdateStatus.jsp?Trackin=<%=Trackin %>&doctype=<%=doctype %>&Sdate=<%=Sdate %>&Scity=<%=Scity %>&Rcity=<%=Rcity %>&Ccity=<%=Ccity %>&Cstatus=<%=Cstatus %>&Remarks=<%=Remarks %>">UPDATE</a></td>
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