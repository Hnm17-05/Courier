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
	String MOEmail = (String) session.getAttribute("UPEmail");
	session.setAttribute("MOEmail",MOEmail); 
	String Semail=MOEmail;	
	%>
	<h2>WELCOME <%=MOEmail %></h2>
	<center><h3>ALL YOUR ORDERS TILL NOW</h3></center>

<table class="table table-bordered">
  <thead class="thead-dark">
   <tr>
<th>TRACKING ID</th>
<th>DOCUMENT TYPE</th>
<th>DATE OF BOOKING</th>
<th>CURRENT LOCATION</th>
<th>CURRENT STATUS</th>
<th>REMARKS</th>
</tr>
  </thead>
  <tbody>
<%
	String qr="select Trackin,doctype,Sdate,Ccity,Cstatus,Remarks from cart where Semail='"+Semail+"'";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next())
	{
		do
		{
			String Trackin=rs.getString("Trackin");
			String doctype=rs.getString("doctype");
			String Sdate=rs.getString("Sdate");
			String Ccity=rs.getString("Ccity");
			String Cstatus=rs.getString("Cstatus");
			String Remarks=rs.getString("Remarks");
			%>
			<tr>
			<td><%=Trackin %></td>
			<td><%=doctype %></td>
			<td><%=Sdate %></td>
			<td><%=Ccity %></td>
			<td><%=Cstatus %></td>
			<td><%=Remarks %></td>
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