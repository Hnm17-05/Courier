<%@include file="Error.jsp" %>
<%@include file="Connection.jsp" %>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String subject = request.getParameter("subject");
	String query = request.getParameter("query");
	String qr = "insert into Enquiry(name,email,mobile,subject,query)"
			+ "values (?, ?, ?, ?, ?)";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobile);
	ps.setString(4, subject);
	ps.setString(5, query);
	int i=ps.executeUpdate();
	if (i > 0) {
		out.println("<script>window.alert('ENQUIRY SUBMITTED SUCCESSFUL');</script>");
		response.sendRedirect("Enquiry.jsp");
	} else {
		out.println("<script>window.alert('REGISTRATION FAILED');</script>");
	}
	con.close();
%>