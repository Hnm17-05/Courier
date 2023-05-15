<%@include file="Error.jsp" %>
<%@include file="Connection.jsp" %>
<%
	String Firstname = request.getParameter("Firstname");
	String Lastname = request.getParameter("Lastname");
	String m = request.getParameter("Mobile");
	int Mobile = Integer.parseInt(m);
	String Email = request.getParameter("Email");
	String Password = request.getParameter("Password");
	String qr = "insert into user values(?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1, Firstname);
	ps.setString(2, Lastname);
	ps.setInt(3, Mobile);
	ps.setString(4, Email);
	ps.setString(5, Password);
	int i=ps.executeUpdate();
	if (i > 0) {
		out.println("<script>window.alert('REGISTRATION SUCCESSFUL');</script>");
		response.sendRedirect("Login.jsp");
	} else {
		out.println("<script>window.alert('REGISTRATION FAILED');</script>");
	}
	con.close();
%>