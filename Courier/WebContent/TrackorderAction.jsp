<%@include file="Error.jsp"%>
<%@include file="Connection.jsp"%>
<%@include file="allComponent/allcss.jsp"%>
<!DOCTYPE html>  
<html>  
<head>  
 <title>TRACKING PAGE</title>  
</head>  
<body>  
 <%@include file="allComponent/Navbar.jsp"%>

<table class="table table-bordered">
  <thead class="thead-dark">
   <tr>
<th>SENDER'S EMAIL ADDRESS</th>
<th>DOCUMENT TYPE</th>
<th>CURRENT LOCATION</th>
<th>CURRENT STATUS</th>
<th>REMARKS</th>
</tr>
  </thead>
  <tbody>
<%
    String Trackin = request.getParameter("Trackin");
	String qr="select Semail,doctype,Ccity,Cstatus,Remarks from cart where Trackin='"+Trackin+"'";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next())
	{
		do
		{
			String Semail=rs.getString("Semail");
			String doctype=rs.getString("doctype");
			String Ccity=rs.getString("Ccity");
			String Cstatus=rs.getString("Cstatus");
			String Remarks=rs.getString("Remarks");
			%>
			<tr>
			<td><%=Semail %></td>
			<td><%=doctype %></td>
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