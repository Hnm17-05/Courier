<%@include file="Error.jsp"%>
<%@include file="Connection.jsp"%>
<%
	String Sname = request.getParameter("Sname");
	String Smobile = request.getParameter("Smobile");
	String Semail = request.getParameter("Semail");
	String Scity = request.getParameter("Scity");
	String Sstate = request.getParameter("Sstate");
	String Saddress = request.getParameter("Saddress");
	String deltype = request.getParameter("deltype");
	String Sdate = request.getParameter("Sdate");
	String doctype = request.getParameter("doctype");
	String Trackin = request.getParameter("Trackin");
	String Rname = request.getParameter("Rname");
	String Rmobile = request.getParameter("Rmobile");
	String Remail = request.getParameter("Remail");
	String Rcity = request.getParameter("Rcity");
	String Rstate = request.getParameter("Rstate");
	String Raddress = request.getParameter("Raddress");
	String qr = "insert into cart(Sname,Smobile,Semail,Scity,Sstate,Saddress,deltype,Sdate,doctype,Trackin,Rname,Rmobile,Remail,Rcity,Rstate,Raddress)"
			+ "values (?, ?, ?, ?, ?,?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?)";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1, Sname);
	ps.setString(2, Smobile);
	ps.setString(3, Semail);
	ps.setString(4, Scity);
	ps.setString(5, Sstate);
	ps.setString(6, Saddress);
	ps.setString(7, deltype);
	ps.setString(8, Sdate);
	ps.setString(9, doctype);
	ps.setString(10, Trackin);
	ps.setString(11, Rname);
	ps.setString(12, Rmobile);
	ps.setString(13, Remail);
	ps.setString(14, Rcity);
	ps.setString(15, Rstate);
	ps.setString(16, Raddress);
	int i = ps.executeUpdate();
	if (i > 0) {
		session.setAttribute("Email", Semail);
		response.sendRedirect("Myorders.jsp");
	} else {
		out.println("<script>window.alert('REGISTRATION FAILED');</script>");
	}
%>