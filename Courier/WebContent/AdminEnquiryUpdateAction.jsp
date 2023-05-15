<%@page errorPage="error.jsp" %>
<%@include file="Connection.jsp" %>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String subject = request.getParameter("subject");
	String query = request.getParameter("query");
	String reply = request.getParameter("reply");

	String qr = "update Enquiry set name=?,email=?,subject=?,query=?,reply=? where mobile=?";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, subject);
	ps.setString(4, query);
	ps.setString(5, reply);
	ps.setString(6, mobile);
	int i = ps.executeUpdate();
	if (i > 0) {
		out.println("<script>window.alert('ENQUIRY HANDLED SUCCESFULL');</script>");
		response.sendRedirect("OrderRec.jsp");
	} else {
		out.println("<script>window.alert('UPDATE FAILED');</script>");
	}
%>